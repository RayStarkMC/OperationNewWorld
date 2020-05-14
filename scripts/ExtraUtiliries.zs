import mods.extraUtils.QED;

// --- aliases ---

val upgradeWorld = <ExtraUtilities:nodeUpgrade:2>;

val qed = <ExtraUtilities:endConstructor>;
val enderEye = <minecraft:ender_eye>;
val obsidianInfused = <ExtraUtilities:decorativeBlock1:1>;
val matrix = <ExtraUtilities:decorativeBlock1:12>;
val machineHullHV = <gregtech:gt.blockmachines:13>;
val plateAluminium = <gregtech:gt.metaitem.01:17019>;
val headPickaxeDiamond = <gregtech:gt.metaitem.02:1500>;

val dictPlateLapis = <ore:plateLapis>;

// --- recipe change ---

recipes.remove(upgradeWorld);
QED.addShapedRecipe(upgradeWorld, [
  [dictPlateLapis, plateAluminium    , dictPlateLapis],
  [plateAluminium, headPickaxeDiamond, plateAluminium],
  [dictPlateLapis, plateAluminium    , dictPlateLapis]
]);

recipes.remove(qed);
recipes.addShaped(qed, [
  [enderEye       , machineHullHV  , enderEye       ],
  [obsidianInfused, matrix         , obsidianInfused],
  [obsidianInfused, obsidianInfused, obsidianInfused]
]);