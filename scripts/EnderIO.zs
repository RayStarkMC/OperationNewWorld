import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;
import mods.gregtech.AlloySmelter;





// --- aliases ---

val conduitBinder = <EnderIO:itemMaterial:1>;
val binderComposite = <EnderIO:itemMaterial:2>;
val conduitItem = <EnderIO:itemItemConduit>;
val conduitFluid = <EnderIO:itemLiquidConduit>;
val conduitFluidPressurized = <EnderIO:itemLiquidConduit:1>;
val conduitFluidEnder = <EnderIO:itemLiquidConduit:2>;
val fusedQuartz = <EnderIO:blockFusedQuartz>;
val quiteClearGlass = <EnderIO:blockFusedQuartz:1>;
val darkFusedQuartz = <EnderIO:blockFusedQuartz:4>;
val reservoir = <EnderIO:blockReservoir>;

val sand = <minecraft:sand>;
val glass = <minecraft:glass>;
val cauldron = <minecraft:cauldron>;
val netherQuartz = <minecraft:quartz>;

val platePulsatingIron = <miscutils:itemPlatePhasedIron>;
val plateVibrantAlloy = <miscutils:itemPlateVibrantAlloy>;
val dustConcrete = <gregtech:gt.metaitem.01:2947>;
val pipeElectrum = <gregtech:gt.blockmachines:5612>;
val pipeCopper = <gregtech:gt.blockmachines:5112>;
val pipeStainlessSteel = <gregtech:gt.blockmachines:5142>;
val pipeTitanium = <gregtech:gt.blockmachines:5152>;
val moldBlock = <gregtech:gt.metaitem.01:32308>;





// --- recipe change ---

changeShapelessRecipe(binderComposite*8, binderComposite, [dustConcrete, sand]);
AlloySmelter.addRecipe(fusedQuartz, netherQuartz*4, moldBlock*0, 160, 40);
AlloySmelter.addRecipe(quiteClearGlass, sand, moldBlock*0, 160, 8);
changeShapedRecipeSame(conduitItem*8, [
  [conduitBinder, conduitBinder     , conduitBinder],
  [pipeElectrum , platePulsatingIron, pipeElectrum ],
  [conduitBinder, conduitBinder     , conduitBinder]
]);
changeShapedRecipeSame(conduitFluid*8, [
  [conduitBinder, conduitBinder  , conduitBinder],
  [pipeCopper   , quiteClearGlass, pipeCopper   ],
  [conduitBinder, conduitBinder  , conduitBinder]
]);
changeShapedRecipeSame(conduitFluidPressurized*8, [
  [conduitBinder     , conduitBinder, conduitBinder     ],
  [pipeStainlessSteel, fusedQuartz  , pipeStainlessSteel],
  [conduitBinder     , conduitBinder, conduitBinder     ]
]);
changeShapedRecipeSame(conduitFluidEnder*8, [
  [conduitBinder, conduitBinder    , conduitBinder],
  [pipeTitanium , plateVibrantAlloy, pipeTitanium ],
  [conduitBinder, conduitBinder    , conduitBinder]
]);
changeShapedRecipeSame(reservoir*2, [
  [glass, darkFusedQuartz, glass],
  [glass, cauldron       , glass],
  [glass, darkFusedQuartz, glass]
]);





// --- functions ---

function changeShapedRecipe(oldOutput as IItemStack, newOutput as IItemStack, inputs as IIngredient[][]) {
  recipes.remove(oldOutput);
  recipes.addShaped(newOutput, inputs);
}

function changeShapedRecipeSame(output as IItemStack, inputs as IIngredient[][]) {
  changeShapedRecipe(output, output, inputs);
}

function changeShapelessRecipe(oldOutput as IItemStack, newOutput as IItemStack, inputs as IIngredient[]) {
  recipes.remove(oldOutput);
  recipes.addShapeless(newOutput, inputs);
}

function changeShapelessRecipeSame(output as IItemStack, inputs as IIngredient[]) {
  changeShapelessRecipe(output, output, inputs);
}