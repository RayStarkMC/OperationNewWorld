// --- aliases ---

val upgradeBlank = <StevesWorkshop:production_table_upgrade>;
val upgradeCrafter = <StevesWorkshop:production_table_upgrade:1>;
val upgradeExtra = <StevesWorkshop:production_table_upgrade:2>;
val upgradeCharger = <StevesWorkshop:production_table_upgrade:3>;
val upgradeSpeed = <StevesWorkshop:production_table_upgrade:4>;
val upgradeQueue = <StevesWorkshop:production_table_upgrade:5>;
val upgradeEfficiency = <StevesWorkshop:production_table_upgrade:6>;
val upgradeLava = <StevesWorkshop:production_table_upgrade:7>;
val upgradeSolar = <StevesWorkshop:production_table_upgrade:8>;
val upgradeTransfer = <StevesWorkshop:production_table_upgrade:9>;
val upgradeFilter = <StevesWorkshop:production_table_upgrade:10>;
val upgradeCapacity = <StevesWorkshop:production_table_upgrade:11>;
val productionTable = <StevesWorkshop:production_table>;

val autoWorkbench = <BuildCraft|Factory:autoWorkbenchBlock>;

val stoneSlab = <minecraft:stone_slab>;
val chest = <minecraft:chest>;
val cobblestone9 = <ExtraUtilities:cobblestone_compressed>;
val dictBlockCokeBlock = <ore:blockFuelCoke>;
val piston = <minecraft:piston>;
val bucketLava = <minecraft:lava_bucket>;
val hopper = <minecraft:hopper>;
val platePressureGold = <minecraft:light_weighted_pressure_plate>;
val furnace = <minecraft:furnace>;
val craftingTable = <minecraft:crafting_table>;

val plateIron = <gregtech:gt.metaitem.01:17032>;
val plateWroughtIron = <gregtech:gt.metaitem.01:17304>;
val platePlank = <gregtech:gt.metaitem.01:17809>;
val plateSteel = <gregtech:gt.metaitem.01:17305>;
val plateAluminium = <gregtech:gt.metaitem.01:17019>;
val plateElectrum = <gregtech:gt.metaitem.01:17303>;

val dictCircuitBasic = <ore:circuitBasic>;
val dictCircuitGood = <ore:circuitGood>;
val coatedCircuitBoard = <gregtech:gt.metaitem.01:32710>;
val solarGT = <gregtech:gt.metaitem.01:32750>;
val conveyerLV = <gregtech:gt.metaitem.01:32630>;
val itemFilter = <gregtech:gt.metaitem.01:32729>;
val gearWoodGT = <gregtech:gt.metaitem.02:31809>;
val gearStoneGT = <gregtech:gt.metaitem.02:31299>;

val tankBC = <BuildCraft|Factory:tankBlock>;

val glassThickened = <ExtraUtilities:decorativeBlock2>;


// --- recipe change ---

recipes.remove(upgradeBlank);
recipes.addShaped(upgradeBlank, [
  [stoneSlab, stoneSlab, stoneSlab],
  [stoneSlab, plateIron, stoneSlab],
  [stoneSlab, stoneSlab, stoneSlab]
]);

recipes.remove(upgradeCrafter);
recipes.addShaped(upgradeCrafter, [
  [coatedCircuitBoard, coatedCircuitBoard, coatedCircuitBoard],
  [cobblestone9      , autoWorkbench     , cobblestone9      ],
  [cobblestone9      , upgradeBlank      , cobblestone9      ]
]);

recipes.remove(upgradeExtra);
recipes.addShaped(upgradeExtra, [
  [platePlank, chest       , platePlank],
  [chest     , upgradeBlank, chest     ],
  [platePlank, chest       , platePlank]
]);

recipes.remove(upgradeCharger);
recipes.addShaped(upgradeCharger, [
  [plateSteel, dictCircuitBasic, plateSteel],
  [plateSteel, upgradeBlank    , plateSteel],
  [plateSteel, dictCircuitBasic, plateSteel]
]);

recipes.remove(upgradeSpeed);
recipes.addShaped(upgradeSpeed, [
  [plateAluminium , dictCircuitBasic, plateAluminium ],
  [dictCircuitGood, upgradeBlank    , dictCircuitGood],
  [plateAluminium , dictCircuitBasic, plateAluminium ]
]);

recipes.remove(upgradeQueue);
recipes.addShaped(upgradeQueue, [
  [chest           , platePlank  , chest           ],
  [plateWroughtIron, upgradeBlank, plateWroughtIron],
  [chest           , platePlank  , chest           ]
]);

recipes.remove(upgradeEfficiency);
recipes.addShaped(upgradeEfficiency, [
  [plateSteel        , plateSteel  , plateSteel        ],
  [dictBlockCokeBlock, piston      , dictBlockCokeBlock],
  [dictCircuitBasic  , upgradeBlank, dictCircuitBasic  ]
]);

recipes.remove(upgradeLava);
recipes.addShaped(upgradeLava, [
  [plateElectrum, tankBC      , plateElectrum],
  [bucketLava   , upgradeBlank, bucketLava   ],
  [plateElectrum, bucketLava  , plateElectrum]
]);

recipes.remove(upgradeSolar);
recipes.addShaped(upgradeSolar, [
  [plateAluminium, glassThickened, plateAluminium],
  [plateAluminium, solarGT       , plateAluminium],
  [plateAluminium, upgradeBlank  , plateAluminium]
]);

recipes.remove(upgradeTransfer);
recipes.addShaped(upgradeTransfer, [
  [plateElectrum , plateElectrum, plateElectrum],
  [conveyerLV    , upgradeBlank , conveyerLV   ],
  [plateElectrum , plateElectrum, plateElectrum]
]);

recipes.remove(upgradeFilter);
recipes.addShaped(upgradeFilter, [
  [plateSteel       , plateSteel  , plateSteel       ],
  [platePressureGold, itemFilter  , platePressureGold],
  [plateSteel       , upgradeBlank, plateSteel       ]
]);

recipes.remove(upgradeCapacity);
recipes.addShaped(upgradeCapacity, [
  [plateSteel, plateSteel, plateSteel],
  [plateElectrum, dictCircuitGood, plateElectrum],
  [plateElectrum, upgradeBlank, plateElectrum]
]);

recipes.remove(productionTable);
recipes.addShaped(productionTable, [
  [gearWoodGT , craftingTable, gearWoodGT ],
  [furnace    , upgradeBlank , furnace    ],
  [gearStoneGT, craftingTable, gearStoneGT]
]);