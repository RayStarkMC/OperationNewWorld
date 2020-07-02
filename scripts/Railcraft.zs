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

val rockCrusherBlock = <Railcraft:machine.alpha:15>;

val dustIron = <gregtech:gt.metaitem.01:2032>;
val dustWroughtIron = <gregtech:gt.metaitem.01:2304>;
val ingotWroughtIron = <gregtech:gt.metaitem.01:11304>;
val electricPistonLV = <gregtech:gt.metaitem.01:32640>;
val robotArmLV = <gregtech:gt.metaitem.01:32650>;
val conveyerModuleLV = <gregtech:gt.metaitem.01:32630>;

val ingotIron = <minecraft:iron_ingot>;
val blockIron = <minecraft:iron_block>;

val dictCircuitBasic = <ore:circuitBasic>;
val dictCraftingGrinder = <ore:craftingGrinder>;
val dictBlockSteel = <ore:blockSteel>;





// --- change recipe ---

// rock crusher
val prefixes = [
  prefixOre,
  prefixCrushed,
  prefixCrystal,
  prefixClump,
  prefixShard
] as string[];

rockCrusher.removeRecipe(<*>);

for dustImpure in getDustsImpure() {
  val crushed = "crushed";
  val purified = "Purified";
  val centrifuged = "Centrifuged";

  val suffix = getSuffixOfDustImpure(dustImpure);
  val output = dustImpure.firstItem;
  val outputs = [output.weight(1), output.weight(0.5)] as WeightedItemStack[];
  
  for entry in oreDict.entries {
    val name = entry.name;
    if(!name.startsWith(crushed)) continue;
    
    var dustIdentity = name.substring(crushed.length());
    if(dustIdentity.startsWith(purified))
      dustIdentity = dustIdentity.substring(purified.length());
    else if(dustIdentity.startsWith("Centrifuged"))
      dustIdentity = dustIdentity.substring(centrifuged.length());
      
    if(!dustIdentity.contentEquals(suffix)) continue;
    
    for crushedOre in entry.items rockCrusher.addRecipe(outputs, crushedOre);
    
    //if(!name.endsWith(suffix) || !name.startsWith("crushed") || name.substring(7).startsWith("Any")) continue;
    //for crushedOre in entry.items rockCrusher.addRecipe(outputs, crushedOre);
  }
}

recipes.remove(rockCrusherBlock);
recipes.addShaped(rockCrusherBlock * 2, [
  [robotArmLV      , dictCircuitBasic   , robotArmLV      ],
  [dictCircuitBasic, dictCraftingGrinder, dictCircuitBasic],
  [conveyerModuleLV, dictCircuitBasic   , conveyerModuleLV]
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





// --- functions ---

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