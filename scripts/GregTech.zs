import mods.thermalexpansion.Furnace;
import minetweaker.item.IItemStack;
import mods.gregtech.Separator;





// --- aliases ---

val pulpPolyethylene = <gregtech:gt.metaitem.01:2874>;
val sheetPolyethylene = <gregtech:gt.metaitem.01:17874>;
val barPolyethylene = <gregtech:gt.metaitem.01:11874>;





// --- recipe change ---

furnace.remove(pulpPolyethylene);
val recipeInputsForRSFurnace as IItemStack[] = [
  <MineFactoryReloaded:straw>,
  <MineFactoryReloaded:plastic.bag>,
  <MineFactoryReloaded:rubber.bar>,
  <gregtech:gt.metaitem.01:11880>,
  <MineFactoryReloaded:ruler>,
  <miscutils:itemStickyRubber>,
  <MineFactoryReloaded:plastic.sheet>,
  <IC2:itemRubber>,
  <MineFactoryReloaded:plastic>,
  <gregtech:gt.metaitem.01:17874>
];
for input in recipeInputsForRSFurnace
  Furnace.removeRecipe(input);
Furnace.addRecipe(1600, sheetPolyethylene, barPolyethylene);