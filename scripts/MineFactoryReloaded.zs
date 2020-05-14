import mods.thermalexpansion.Furnace;
import mods.thermalexpansion.Smelter;

// --- aliases ---

val rawRubber = <MineFactoryReloaded:rubber.raw>;
val sulfur = <ThermalFoundation:material:16>;
val piston = <minecraft:piston>;
val stickyPiston = <minecraft:sticky_piston>;
val slimeBall = <ore:slimeball>;
val stickWood =<ore:stickWood>;
val torch = <minecraft:torch>;

val rubberSaplings = <MineFactoryReloaded:rubberwood.sapling:*>;
val lootJungle = "pyramidJungleChest";
val lootDimDungeon = "dimensionalDungeonChest";
val lootDungeon = "dungeonChest";

// --- recipe removing ---

//remove recipe raw rubber
furnace.remove(<*>, rawRubber);
Furnace.removeRecipe(rawRubber);
Smelter.removeRecipe(sulfur, rawRubber * 2);
recipes.removeShaped(stickyPiston, [[rawRubber], [piston]]);
recipes.addShaped(stickyPiston, [[slimeBall], [piston]]);
recipes.removeShaped(torch, [[rawRubber], [stickWood]]);


// --- recipe addition ---

// --- loot ---
val loots = [
  lootJungle,
  lootDimDungeon,
  lootDungeon
] as string[];

for i, aLoot in loots {
  vanilla.loot.removeChestLoot(aLoot, rubberSaplings);
}