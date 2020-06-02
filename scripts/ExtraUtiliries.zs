import mods.extraUtils.QED;
import mods.gregtech.CuttingSaw;
import mods.gregtech.Assembler;
import mods.gregtech.ChemicalBath;





// --- aliases ---

val upgradeWorld = <ExtraUtilities:nodeUpgrade:2>;
val qed = <ExtraUtilities:endConstructor>;
val obsidianInfused = <ExtraUtilities:decorativeBlock1:1>;
val matrix = <ExtraUtilities:decorativeBlock1:12>;
val drum = <ExtraUtilities:drum>;
val largerChest = <ExtraUtilities:chestFull>;
val miniChest = <ExtraUtilities:chestMini>;
val cobblestone81 = <ExtraUtilities:cobblestone_compressed:1>;
val blockUnstable = <ExtraUtilities:decorativeBlock1:5>;

val survivalistGenerator = <ExtraUtilities:generator>;
val furnaceGenerator = <ExtraUtilities:generator:1>;
val lavaGenerator = <ExtraUtilities:generator:2>;
val enderGenerator = <ExtraUtilities:generator:3>;
val heatedRedstoneGenerator = <ExtraUtilities:generator:4>;
val culinaryGenerator = <ExtraUtilities:generator:5>;
val potionGenerator = <ExtraUtilities:generator:6>;
val solarGenerator = <ExtraUtilities:generator:7>;
val tntGenerator = <ExtraUtilities:generator:8>;
val pinkGenerator = <ExtraUtilities:generator:9>;
val highTemperatureFuanceGenerator = <ExtraUtilities:generator:10>;
val netherStarGenerator = <ExtraUtilities:generator:11>;

val plateWood = <gregtech:gt.metaitem.01:17809>;
val plateIron = <gregtech:gt.metaitem.01:17032>;
val plateAluminium = <gregtech:gt.metaitem.01:17019>;
val plateRuby = <gregtech:gt.metaitem.01:17502>;
val plateRedGranite = <gregtech:gt.metaitem.01:17850>;
val plateEnderium = <gregtech:gt.metaitem.01:17321>;
val plateDenseRedAlloy = <gregtech:gt.metaitem.01:22308>;
val plateStainlessSteel = <gregtech:gt.metaitem.01:17306>;
val plateTunstaencarbide = <gregtech:gt.metaitem.01:17370>;
val plateOsmium = <gregtech:gt.metaitem.01:17083>;
val plateNaquadah = <gregtech:gt.metaitem.01:17324>;
val plateSteel = <gregtech:gt.metaitem.01:17305>;
val headPickaxeDiamond = <gregtech:gt.metaitem.02:1500>;
val industrialTnt = <IC2:blockITNT>;
val solar8V = <gregtech:gt.metaitem.01:32751>;
val electricFurnaceLV = <gregtech:gt.blockmachines:261>;
val electricFurnaceMV = <gregtech:gt.blockmachines:262>;
val electricFurnaceHV = <gregtech:gt.blockmachines:263>;
val electricFurnaceEV = <gregtech:gt.blockmachines:264>;
val electricFuanaceIV = <gregtech:gt.blockmachines:265>;
val assemblerEV = <gregtech:gt.blockmachines:214>;

val enderEye = <minecraft:ender_eye>;
val platePressureIron = <minecraft:heavy_weighted_pressure_plate>;
val cauldron = <minecraft:cauldron>;
val chest = <minecraft:chest>;
val blockIron = <minecraft:iron_block>;
val blockDiamond = <minecraft:diamond_block>;
val piston = <minecraft:piston>;
val enchantmentTable = <minecraft:enchanting_table>;
val netherStar = <minecraft:nether_star>;
val obsidian = <minecraft:obsidian>;

val dictPlateLapis = <ore:plateLapis>;
val dictCircuitBasic = <ore:circuitBasic>;
val dictCircuitGood = <ore:circuitGood>;
val dictCircuitAdvanced = <ore:circuitAdvanced>;
val dictCircuitData = <ore:circuitData>;
val dictCircuitElite = <ore:circuitElite>;

val water = <liquid:water>;
val moltenEnderium = <liquid:molten.enderium>;





// --- recipe change ---

recipes.remove(obsidianInfused);
ChemicalBath.addRecipe([obsidianInfused], obsidian, moltenEnderium*36, [10000], 400, 120);

recipes.remove(upgradeWorld);
QED.addShapedRecipe(upgradeWorld, [
  [dictPlateLapis, plateAluminium    , dictPlateLapis],
  [plateAluminium, headPickaxeDiamond, plateAluminium],
  [dictPlateLapis, plateAluminium    , dictPlateLapis]
]);

recipes.remove(qed);
recipes.addShaped(qed, [
  [enderEye       , assemblerEV    , enderEye       ],
  [obsidianInfused, matrix         , obsidianInfused],
  [obsidianInfused, obsidianInfused, obsidianInfused]
]);

recipes.removeShaped(chest, [
  [miniChest, miniChest, miniChest],
  [miniChest, miniChest, miniChest],
  [miniChest, miniChest, miniChest]
]);

recipes.removeShapeless(miniChest, [chest]);

recipes.remove(largerChest);
recipes.addShaped(largerChest, [
  [plateWood, plateWood, plateWood],
  [plateWood, chest    , plateWood],
  [plateWood, plateWood, plateWood]
]);

recipes.remove(drum);
recipes.addShaped(drum, [
  [plateIron, platePressureIron, plateIron],
  [plateIron, cauldron         , plateIron],
  [plateIron, platePressureIron, plateIron]
]);

recipes.remove(survivalistGenerator);
recipes.addShaped(survivalistGenerator, [
  [cobblestone81   , cobblestone81    , cobblestone81   ],
  [plateSteel      , piston           , plateSteel      ],
  [dictCircuitBasic, electricFurnaceLV, dictCircuitBasic]
]);

recipes.remove(furnaceGenerator);
recipes.addShaped(furnaceGenerator, [
  [plateAluminium , plateAluminium   , plateAluminium ],
  [plateAluminium , blockIron        , plateAluminium ],
  [dictCircuitGood, electricFurnaceMV, dictCircuitGood]
]);

recipes.remove(lavaGenerator);
recipes.addShaped(lavaGenerator, [
  [plateRuby      , plateRuby        , plateRuby      ],
  [plateRuby      , blockIron        , plateRuby      ],
  [dictCircuitGood, electricFurnaceMV, dictCircuitGood]
]);

recipes.remove(enderGenerator);
recipes.addShaped(enderGenerator, [
  [plateEnderium  , plateEnderium    , plateEnderium  ],
  [plateEnderium  , blockIron        , plateEnderium  ],
  [dictCircuitData, electricFurnaceEV, dictCircuitData]
]);

recipes.remove(heatedRedstoneGenerator);
recipes.addShaped(heatedRedstoneGenerator, [
  [plateDenseRedAlloy, plateDenseRedAlloy, plateDenseRedAlloy ],
  [plateDenseRedAlloy, lavaGenerator     , plateDenseRedAlloy ],
  [dictCircuitAdvanced, electricFurnaceHV, dictCircuitAdvanced]
]);

recipes.remove(culinaryGenerator);
recipes.addShaped(culinaryGenerator, [
  [plateStainlessSteel, plateStainlessSteel , plateStainlessSteel],
  [plateStainlessSteel, survivalistGenerator, plateStainlessSteel],
  [dictCircuitAdvanced, electricFurnaceHV   , dictCircuitAdvanced]
]);

recipes.remove(potionGenerator);
recipes.addShaped(potionGenerator, [
  [plateTunstaencarbide, plateTunstaencarbide, plateTunstaencarbide],
  [plateTunstaencarbide, enchantmentTable    , plateTunstaencarbide],
  [dictCircuitData     , electricFurnaceEV   , dictCircuitData     ]
]);

recipes.remove(solarGenerator);
recipes.addShaped(solarGenerator, [
  [solar8V        , solar8V          , solar8V        ],
  [solar8V        , blockDiamond     , solar8V        ],
  [dictCircuitData, electricFurnaceEV, dictCircuitData]
]);

recipes.remove(tntGenerator);
recipes.addShaped(tntGenerator, [
  [industrialTnt      , industrialTnt    , industrialTnt      ],
  [industrialTnt      , blockIron        , industrialTnt      ],
  [dictCircuitAdvanced, electricFurnaceHV, dictCircuitAdvanced]
]);

recipes.remove(pinkGenerator);
recipes.addShaped(pinkGenerator, [
  [plateRedGranite    , plateRedGranite     , plateRedGranite    ],
  [plateRedGranite    , survivalistGenerator, plateRedGranite    ],
  [dictCircuitAdvanced, electricFurnaceHV   , dictCircuitAdvanced]
]);

recipes.remove(highTemperatureFuanceGenerator);
recipes.addShaped(highTemperatureFuanceGenerator, [
  [plateOsmium    , plateOsmium      , plateOsmium    ],
  [plateOsmium    , furnaceGenerator , plateOsmium    ],
  [dictCircuitData, electricFurnaceEV, dictCircuitData]
]);

recipes.remove(netherStarGenerator);
recipes.addShaped(netherStarGenerator, [
  [plateNaquadah   , netherStar       , plateNaquadah   ],
  [plateNaquadah   , blockUnstable    , plateNaquadah   ],
  [dictCircuitElite, electricFuanaceIV, dictCircuitElite]
]);