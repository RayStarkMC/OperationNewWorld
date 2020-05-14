import minetweaker.item.IItemStack;
import minetweaker.oredict.IOreDictEntry;

// --- aliases ---

val bronzeIngot = <gregtech:gt.metaitem.01:11300>;

val gearsFFM as IItemStack[] = [
  <Forestry:gearBronze>,
  <Forestry:gearCopper>,
  <Forestry:gearTin>
];

val dictGears as IOreDictEntry[] = [
  <ore:gearBronze>,
  <ore:gearCopper>,
  <ore:gearTin>
];

val dictMachinesTE as IOreDictEntry[] = [
  <ore:thermalexpansion:machineBronze>,
  <ore:thermalexpansion:machineCopper>,
  <ore:thermalexpansion:machineTin>
];

val worktable = <Forestry:factory2:2>;

val jacb = <jacb:betterBench>;

val bookAndQuill = <minecraft:writable_book>;

val woodenStorageCrate = <ImmersiveEngineering:woodenDevice:4>;

val wroughtIronScrew = <gregtech:gt.metaitem.01:27304>;
val plateBronze = <gregtech:gt.metaitem.01:17300>;

// --- remove item ---

// remove gears
for i in 0 to gearsFFM.length {
  recipes.remove(gearsFFM[i]);
  dictGears[i].remove(gearsFFM[i]);
  dictMachinesTE[i].remove(gearsFFM[i]);
}

// --- change recipe ---

//remove bronzeIngot
recipes.removeShapeless(bronzeIngot);

recipes.remove(worktable);
recipes.addShaped(worktable, [
  [wroughtIronScrew, bookAndQuill      , wroughtIronScrew],
  [plateBronze, jacb         , plateBronze],
  [wroughtIronScrew, woodenStorageCrate, wroughtIronScrew]
]);