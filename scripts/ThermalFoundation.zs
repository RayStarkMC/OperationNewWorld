import minetweaker.oredict.IOreDictEntry;
import minetweaker.item.IItemStack;
import mods.immersiveengineering.MetalPress;
import mods.nei.NEI;

// --- aliases--- 

val hammer = <ore:craftingToolHardHammer>;
val file = <ore:craftingToolFile>;
val mallet = <ore:craftingToolSoftHammer>;
val mortar = <ore:craftingToolMortar>;

val woodShears = <ThermalFoundation:tool.shearsWood>;
val stoneShears = <ThermalFoundation:tool.shearsStone>;
val diamondShears =<ThermalFoundation:tool.shearsDiamond>;

val woodSickle = <ThermalFoundation:tool.sickleWood>;
val stoneSickle = <ThermalFoundation:tool.sickleStone>;
val diamondSickle = <ThermalFoundation:tool.sickleDiamond>;

val woodPlank = <ore:plankWood>;
val cobblestone = <ore:stoneCobble>;
val diamond = <ore:gemDiamond>;
val stick = <ore:stickWood>;

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

val uniqueGears = [
  <ThermalFoundation:material:138>, // signalum
  <ThermalFoundation:material:139>, // lumium
  <ThermalFoundation:material:140>  // enderium
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

val gearMold = <ImmersiveEngineering:mold:1>;
val steelPlate = <ore:plateSteel>;

// --- recipe change ---

// Shears
recipes.remove(woodShears);
recipes.addShaped(woodShears, [
  [mallet   , woodPlank],
  [woodPlank, null]]);

recipes.remove(stoneShears);
recipes.addShaped(stoneShears, [
  [hammer      , cobblestone],
  [cobblestone , mortar]]);

recipes.remove(diamondShears);
recipes.addShaped(diamondShears, [
  [null   , diamond],
  [diamond, file]]);

// Sicles
recipes.remove(woodSickle);
recipes.addShaped(woodSickle, [
  [null     , woodPlank, null],
  [woodPlank, null     , null],
  [mallet   , woodPlank, stick]]);

recipes.remove(stoneSickle);
recipes.addShaped(stoneSickle, [
  [null       , cobblestone, null],
  [cobblestone, file       , null],
  [hammer     , cobblestone, stick]]);

recipes.remove(diamondSickle);
recipes.addShaped(diamondSickle, [
  [null   , diamond, null],
  [diamond, file   , null],
  [null   , diamond, stick]]);

for i, gear in uniqueGears {
  recipes.remove(gear);
}

// --- item removing ---

// remove gear
for i, gear in commonGears {
  recipes.remove(gear);
  dictGears[i].remove(gear);
  dictTEGears[i].remove(gear);
  MetalPress.removeRecipe(gear);
}