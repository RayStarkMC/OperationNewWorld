// --- aliases ---

val gliderWing = <OpenBlocks:generic>;
val glider = <OpenBlocks:hangglider>;
val hardLeather = <harvestcraft:hardenedleatherItem>;
val longStick = <gregtech:gt.metaitem.02:22809>;
val bronzeRod = <gregtech:gt.metaitem.01:23300>;





// --- recipe change ---
recipes.remove(gliderWing);
recipes.addShaped(gliderWing, [
  [null       , longStick  , hardLeather],
  [longStick  , hardLeather, hardLeather],
  [hardLeather, hardLeather, hardLeather]]);
  
recipes.remove(glider);
recipes.addShaped(glider,[
  [gliderWing, bronzeRod, gliderWing]]);