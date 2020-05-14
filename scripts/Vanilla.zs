import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;

// --- aliases ---

val hammer = <ore:craftingToolHardHammer>;
val file = <ore:craftingToolFile>;
val saw = <ore:craftingToolSaw>;

val stoneSlab = <minecraft:stone_slab>;
val sandstoneSlab = <minecraft:stone_slab:1>;
val cobblestoneSlab = <minecraft:stone_slab:3>;
val bricksSlab = <minecraft:stone_slab:4>;
val stoneBricksSlab = <minecraft:stone_slab:5>;
val netherBrickSlab = <minecraft:stone_slab:6>;
val quartzSlab = <minecraft:stone_slab:7>;
val oakWoodSlab = <minecraft:wooden_slab>;

val stone = <ore:stone>;
val sandStone = <ore:soneSand>;
val cobblestone = <ore:stoneCobble>;
val bricks = <minecraft:brick_block>;
val stoneBricks = <ore:stoneBricks>;
val netherBrick = <ore:stoneNetherBrick>;
val quartzBrick = <ore:blockQuartz>;
val oakWoodPlanks = <minecraft:planks>;

val diamond = <minecraft:diamond>;
val diamondSword = <minecraft:diamond_sword>;
val diamondShovel = <minecraft:diamond_shovel>;
val diamondPickaxe = <minecraft:diamond_pickaxe>;
val diamondAxe = <minecraft:diamond_axe>;
val diamondHoe = <minecraft:diamond_hoe>;

val stick = <minecraft:stick>;

val chest = <minecraft:chest>;

val dictLogWood = <ore:logWood>;


// --- recipe change ---

// fix slab recipes
val slabs = [
  stoneSlab,
  sandstoneSlab,
  cobblestoneSlab,
  bricksSlab,
  stoneBricksSlab,
  netherBrickSlab,
  quartzSlab,
  oakWoodSlab
] as IItemStack[];

val slabMaterials = [
  stone,
  sandStone,
  cobblestone,
  bricks,
  stoneBricks,
  netherBrick,
  quartzBrick,
  oakWoodPlanks,
] as IIngredient[];

for i, slab in slabs {
  val material = slabMaterials[i];
  
  recipes.remove(slab);
  recipes.addShaped(slab * 2, [
    [saw, stone]
  ]);
}

// fix diamond tool recipes

recipes.remove(diamondSword);
recipes.addShaped(diamondSword, [
  [null, diamond],
  [file, diamond],
  [null, stick]
]);

recipes.remove(diamondShovel);
recipes.addShaped(diamondShovel, [
  [file, diamond],
  [null, stick],
  [null, stick]
]);

recipes.remove(diamondPickaxe);
recipes.addShaped(diamondPickaxe, [
  [diamond, diamond, diamond],
  [file   , stick],
  [null   , stick]
]);

recipes.remove(diamondAxe);
recipes.addShaped(diamondAxe, [
  [diamond, diamond],
  [diamond, stick],
  [file   , stick]
]);

recipes.remove(diamondHoe);
recipes.addShaped(diamondHoe, [
  [diamond, diamond],
  [file   , stick],
  [null   , stick]
]);

// fix chest recipes

recipes.remove(chest * 4);
recipes.addShaped(chest *2, [
  [dictLogWood, dictLogWood, dictLogWood],
  [dictLogWood, null       , dictLogWood],
  [dictLogWood, dictLogWood, dictLogWood]
]);