import minetweaker.item.IItemStack;





// --- aliases ---

val sinkAll = <harvestcraft:sink:*>;
val presser = <harvestcraft:presser>;

val plateSteel = <gregtech:gt.metaitem.01:17305>;
val piston = <minecraft:piston>;





// --- recipe change ---
recipes.remove(sinkAll);

recipes.remove(presser);
recipes.addShaped(presser, [
  [plateSteel, piston, plateSteel],
  [plateSteel, null  , plateSteel],
  [plateSteel, piston, plateSteel] 
]);
