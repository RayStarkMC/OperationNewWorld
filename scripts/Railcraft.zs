import mods.railcraft.RockCrusher as rockCrusher;
import mods.railcraft.BlastFurnace as blastFurnace;
import minetweaker.item.IIngredient;
import minetweaker.item.IItemStack;
import minetweaker.item.WeightedItemStack;
import minetweaker.oredict.IOreDictEntry;


// --- constants ---

static prefixDustImpure as string = "dustImpure";
static prefixOre as string = "ore";
static prefixCrushed as string = "crushed";
static prefixCrystal as string = "crystal";
static prefixClump as string = "clump";
static prefixShard as string = "shard";


// --- aliases ---

val gearIronRC = <Railcraft:part.gear:1>;
val dictGearIron = <ore:gearIron>;
val dictTEGearIron = <ore:thermalexpansion:machineIron>;

val rockCrusherBlock = <Railcraft:machine.alpha:15>;
val dictCraftingGrinder = <ore:craftingGrinder>;
val dictBlockSteel = <ore:blockSteel>;
val electricPistonLV = <gregtech:gt.metaitem.01:32640>;
val dictCircuitBasic = <ore:circuitBasic>;

val ingotIron = <minecraft:iron_ingot>;
val dustIron = <gregtech:gt.metaitem.01:2032>;
val dustWroughtIron = <gregtech:gt.metaitem.01:2304>;
val blockIron = <minecraft:iron_block>;
val ingotWroughtIron = <gregtech:gt.metaitem.01:11304>;


// --- fix dictionary ---

dictGearIron.remove(gearIronRC);
dictTEGearIron.remove(gearIronRC);


// --- change recipe ---

// rock crusher
val prefixes = [
  prefixOre,
  prefixCrushed,
  prefixCrystal,
  prefixClump,
  prefixShard
] as string[];

for entry in oreDict.entries {
  for prefix in prefixes {
    if(entry.name.startsWith(prefix)) {
      rockCrusher.removeRecipeIfPresent(entry);
    }
  }
}

for dustImpure in getDustsImpure() {
  val suffix = getSuffixOfDustImpure(dustImpure);
  val output = dustImpure.firstItem;
  val outputs = [output.weight(1), output.weight(0.5)] as WeightedItemStack[];
  
  for entry in oreDict.entries {
    if(entry.name.endsWith(suffix) && entry.name.startsWith("crushed")) {
      rockCrusher.addRecipe(outputs, entry.firstItem);
    }
  }
}

recipes.remove(rockCrusherBlock);
recipes.addShaped(rockCrusherBlock * 2, [
  [electricPistonLV, dictCircuitBasic   , electricPistonLV],
  [dictCircuitBasic, dictCraftingGrinder, dictCircuitBasic],
  [electricPistonLV, dictCircuitBasic   , electricPistonLV]
]);

// blast furnace
blastFurnace.removeRecipe(<*>);
val toIngot as IItemStack[] = [
  ingotIron,
  dustIron,
  dustWroughtIron
];

for itemStack in toIngot {
  blastFurnace.addRecipe(itemStack, false, false, 100, ingotWroughtIron);
}
blastFurnace.addRecipe(blockIron, false, false, 900, ingotWroughtIron * 9);


function getDustsImpure() as IOreDictEntry[] {
  var dustsImpure as IOreDictEntry[] = [];
  for entry in oreDict.entries {
    if(entry.name.startsWith(prefixDustImpure)) {
      dustsImpure += entry;
    }
  }
  return dustsImpure;
}

function getSuffixOfDustImpure(dustImpure as IOreDictEntry) as string {
  return dustImpure.name.substring(prefixDustImpure.length());
}