// --- aliases ---

val jacb = <jacb:betterBench>;

val craftingTable = <minecraft:crafting_table>;
val chest = <minecraft:chest>;

// --- recipe change ---

recipes.remove(jacb);
recipes.addShaped(jacb, [
  [craftingTable],
  [chest        ]
]);