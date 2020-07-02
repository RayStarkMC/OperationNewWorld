import minetweaker.item.IItemStack;
import minetweaker.oredict.IOreDictEntry;





// --- aliases ---

val enderAmethyst = <BiomesOPlenty:gems>;
val blockAmethyst = <BiomesOPlenty:gemOre:1>;

val desertGarden = <harvestcraft:desertgarden>;
val grassGarden = <harvestcraft:grassgarden>;
val gourdGarden = <harvestcraft:gourdgarden>;
val groundGarden = <harvestcraft:groundgarden>;
val herbGarden = <harvestcraft:herbgarden>;
val leafyGarden = <harvestcraft:leafygarden>;
val mushroomGarden = <harvestcraft:mushroomgarden>;
val stalkGarden = <harvestcraft:stalkgarden>;
val textileGarden = <harvestcraft:textilegarden>;
val berryGarden = <harvestcraft:berrygarden>;
val tropicalGarden = <harvestcraft:tropicalgarden>;
val waterGarden = <harvestcraft:watergarden>;

val seedsToFix = [
  <karatgarden:seedcarrotbase>,
  <ImmersiveEngineering:seed>,
  <harvestcraft:artichokeseedItem>,
  <Calculator:PrunaeSeeds>
] as IItemStack[];


val gearIronRC = <Railcraft:part.gear:1>;

val quiteClearGlass = <EnderIO:blockFusedQuartz:1>;

val dictGearIron = <ore:gearIron>;
val dictTEGearIron = <ore:thermalexpansion:machineIron>;
val dictGlass = <ore:glass>;





// --- fix oredictionary ---

<ore:gemAmethyst>.add(enderAmethyst);
<ore:blockAmethyst>.add(blockAmethyst);
<ore:ingotAluminium>.addAll(<ore:ingotAluminum>);
<ore:ingotAluminum>.mirror(<ore:ingotAluminium>);

val gardens = [
  desertGarden,
  grassGarden,
  gourdGarden,
  groundGarden,
  herbGarden,
  leafyGarden,
  mushroomGarden,
  stalkGarden,
  textileGarden,
  berryGarden,
  tropicalGarden,
  waterGarden
] as IItemStack[];

val gardenAny = <ore:gardenAny>;
for garden in gardens {
  gardenAny.add(garden);
}

dictGearIron.remove(gearIronRC);
dictTEGearIron.remove(gearIronRC);

val commonGears = [
  <ThermalFoundation:material:12>,  // iron
  <ThermalFoundation:material:13>,  // gold
  <ThermalFoundation:material:128>, // copper
  <ThermalFoundation:material:129>, // tin
  <ThermalFoundation:material:130>, // silver
  <ThermalFoundation:material:131>, // lead
  <ThermalFoundation:material:132>, // nickel
  <ThermalFoundation:material:133>, // platinum
  <ThermalFoundation:material:134>, // mithril
  <ThermalFoundation:material:135>, // electrum
  <ThermalFoundation:material:136>, // invar
  <ThermalFoundation:material:137>, // bronze
] as IItemStack[];

val dictTEGears = [
  <ore:thermalexpansion:machineIron>,
  <ore:thermalexpansion:machineGold>,
  <ore:thermalexpansion:machineCopper>,
  <ore:thermalexpansion:machineTin>,
  <ore:thermalexpansion:machineSilver>,
  <ore:thermalexpansion:machineLead>,
  <ore:thermalexpansion:machineNickel>,
  <ore:thermalexpansion:machinePlatinum>,
  <ore:thermalexpansion:machineMithril>,
  <ore:thermalexpansion:machineElectrum>,
  <ore:thermalexpansion:machineInvar>,
  <ore:thermalexpansion:machineBronze>
] as IOreDictEntry[];

val dictGears = [
  <ore:gearIron>,
  <ore:gearGold>,
  <ore:gearCopper>,
  <ore:gearTin>,
  <ore:gearSilver>,
  <ore:gearLead>,
  <ore:gearNickel>,
  <ore:gearPlatinum>,
  <ore:gearMithril>,
  <ore:gearElectrum>,
  <ore:gearInvar>,
  <ore:gearBronze>
] as IOreDictEntry[];

for i, gear in commonGears {
  dictGears[i].remove(gear);
  dictTEGears[i].remove(gear);
}

for seed in seedsToFix {
  <ore:listAllseed>.add(seed);
}

dictGlass.remove(quiteClearGlass);