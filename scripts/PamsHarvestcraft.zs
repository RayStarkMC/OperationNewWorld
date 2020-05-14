import minetweaker.item.IItemStack;


// --- aliases ---

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

val karatCarrotSeed;
val industrialHempSeed;
val artichokeSeed;

val sinkAll = <harvestcraft:sink:*>;
val presser = <harvestcraft:presser>;

val plateSteel = <gregtech:gt.metaitem.01:17305>;
val piston = <minecraft:piston>;

// --- ore dictionaly ---

// make gardenAny for quest
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
  waterGarden] as IItemStack[];

val gardenAny = <ore:gardenAny>;
for garden in gardens {
  gardenAny.add(garden);
}


// --- recipe change ---
recipes.remove(sinkAll);

recipes.remove(presser);
recipes.addShaped(presser, [
  [plateSteel, piston, plateSteel],
  [plateSteel, null  , plateSteel],
  [plateSteel, piston, plateSteel] 
]);
