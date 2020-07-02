import minetweaker.item.IItemStack;
import mods.gregtech.Compressor;
import mods.gregtech.BlastFurnace;
import mods.gregtech.CircuitAssembler;
import mods.thermalexpansion.Furnace;
import mods.thermalexpansion.Smelter;
import mods.calculator.basic as Calculator;
import mods.calculator.scientific as Scientific;
import mods.calculator.stoneSeparator as StoneSeparator;
import mods.calculator.algorithmSeparator as AlgorithmSeparator;

// --- aliases ---

val calculatorScreen = <Calculator:CalculatorScreen>;
val calulatorAssembly = <Calculator:CalculatorAssembly>;
val advancedAssembly = <Calculator:AdvancedAssembly>;
val atomicAssembly = <Calculator:AtomicAssembly>;
val atomicModule = <Calculator:AtomicModule>;
val gemAmethystCalc = <Calculator:Small Amethyst>;
val largeAmethyst = <Calculator:Large Amethyst>;
val largeTanzanite = <Calculator:LargeTanzanite>;
val ingotEnrichedGold = <Calculator:EnrichedGoldIngot>;
val ingotRedstone = <Calculator:RedstoneIngot>;
val dustEnrichedGold = <Calculator:EnrichedGold>;
val blockReinforcedIron = <Calculator:ReinforcedBlock>;
val blockEnrichedGold = <Calculator:EnrichedBlock>;
val smallStone = <Calculator:SmallStone>;

val infoCalculator = <Calculator:InfoCalculator>;
val craftingCalculator = <Calculator:CraftingCalculator>.withTag({Items: [], Itemssize: 0});
val calculator = <Calculator:Calculator>.withTag({Items: [], Itemssize: 0});
val scientificCalculator = <Calculator:ScientificCalculator>.withTag({Items: [], Itemssize: 0});
val hungerModule = <Calculator:HungerModule>;

val handCrankedGenerator = <Calculator:CrankedGenerator>;
val powerCube = <Calculator:PCubeIdle>;
val stoneSeparator = <Calculator:StoneSeperatorIdle>;
val algorithmSeparator = <Calculator:AlgorithmSeperatorIdle>;
val basicGreenhouse = <Calculator:BasicGreenhouse>;

val blockDiamond = <minecraft:diamond_block>;
val blockEmerald = <minecraft:emerald_block>;
val blockRedstone = <minecraft:redstone_block>;
val oreIron = <minecraft:iron_ore>;
val oreGold = <minecraft:gold_ore>;
val slabStone = <minecraft:stone_slab>;
val dustRedstone = <minecraft:redstone>;
val button = <minecraft:stone_button>;
val cobblestone = <minecraft:cobblestone>;
val sand = <minecraft:sand>;
val worktable = <Forestry:factory2:2>;
val writableBook = <minecraft:writable_book>;
val woodOak = <minecraft:log>;
val woodSpruce = <minecraft:log:1>;
val woodBirch = <minecraft:log:2>;
val woodJungle = <minecraft:log:3>;
val woodAcacia = <minecraft:log2>;
val woodDarkOak = <minecraft:log2:1>;
val lapis = <minecraft:dye:4>;
val enderEye = <minecraft:ender_eye>;
val enderPearl = <minecraft:ender_pearl>;
val notchApple = <minecraft:golden_apple:1>;

val blockAluminium = <gregtech:gt.blockmetal1:1>;
val plateIron = <gregtech:gt.metaitem.01:17032>;
val plateSteel = <gregtech:gt.metaitem.01:17305>;
val plateRedAlloy = <gregtech:gt.metaitem.01:17308>;
val plateWood = <gregtech:gt.metaitem.01:17809>;
val frameSteel = <gregtech:gt.blockmachines:4401>;
val frameWood = <gregtech:gt.blockmachines:4905>;
val fineWireElectrum = <gregtech:gt.metaitem.02:19303>;
val fineWirePlatinum = <gregtech:gt.metaitem.02:19085>;
val integratedLogicCircuit = <gregtech:gt.metaitem.03:32037>;
val randomAccessMemoryChip = <gregtech:gt.metaitem.03:32039>;
val centrifugeLV = <gregtech:gt.blockmachines:361>;
val centrifugeMV = <gregtech:gt.blockmachines:362>;
val emSeparatorLV = <gregtech:gt.blockmachines:561>;
val emSeparatorMV = <gregtech:gt.blockmachines:562>;
val machineHullMV = <gregtech:gt.blockmachines:12>;
val emitterMV = <gregtech:gt.metaitem.01:32681>;
val sensorMV = <gregtech:gt.metaitem.01:32691>;
val smdDiode = <gregtech:gt.metaitem.03:32016>;
val energyCrystal = <IC2:itemBatCrystal:26>;

val dictCircuitBasic = <ore:circuitBasic>;
val dictCircuitGood = <ore:circuitGood>;
val dictCircuitAdvanced = <ore:circuitAdvanced>;
val dictReinforcedBlock = <ore:calculatorReinforcedBlock>;
val dictGemAmethyst = <ore:gemAmethyst>;
val dictGemTanzanite = <ore:gemTanzanite>;
val dictOreIron = <ore:oreIron>;
val dictOreGold = <ore:oreGold>;

val moltenSolderingAlloy = <liquid:molten.solderingalloy>;

// --- recipe change ---

recipes.remove(calculatorScreen);
recipes.addShaped(calculatorScreen, [
  [slabStone, slabStone   , slabStone],
  [slabStone, plateRedAlloy, slabStone],
  [slabStone, slabStone   , slabStone]
]);

recipes.remove(infoCalculator);
recipes.addShaped(infoCalculator, [
  [plateIron, calculatorScreen, plateIron],
  [button   , writableBook    , button   ],
  [plateIron, plateIron       , plateIron]
]);

recipes.remove(craftingCalculator);
recipes.addShaped(craftingCalculator, [
  [plateSteel, calculatorScreen, plateSteel],
  [button    , worktable       , button    ],
  [plateSteel, plateSteel      , plateSteel]
]);

recipes.remove(calculator);
recipes.addShaped(calculator, [
  [plateSteel, calculatorScreen, plateSteel],
  [button    , dictCircuitBasic, button    ],
  [plateSteel, plateSteel      , plateSteel]
]);

recipes.remove(scientificCalculator);
recipes.addShaped(scientificCalculator, [
  [blockEnrichedGold  , calculatorScreen , blockEnrichedGold  ],
  [blockReinforcedIron, calulatorAssembly, blockReinforcedIron],
  [blockEnrichedGold  , calulatorAssembly, blockEnrichedGold  ]
]);

recipes.remove(hungerModule);
recipes.addShaped(hungerModule, [
  [dictGemAmethyst, calculatorScreen, dictGemAmethyst],
  [largeAmethyst  , notchApple      , largeAmethyst  ],
  [dictGemAmethyst, ingotRedstone   , dictGemAmethyst]
]);

recipes.remove(powerCube);
recipes.addShaped(powerCube, [
  [frameSteel, plateSteel   , frameSteel],
  [plateSteel, blockRedstone, plateSteel],
  [frameSteel, plateSteel   , frameSteel]
]);

recipes.remove(handCrankedGenerator);
recipes.addShaped(handCrankedGenerator, [
  [frameWood, plateWood, frameWood],
  [plateWood, powerCube, plateWood],
  [frameWood, plateWood, frameWood]
]);

recipes.remove(largeAmethyst);
recipes.addShaped(largeAmethyst, [
  [dictGemAmethyst, dictGemAmethyst, dictGemAmethyst],
  [dictGemAmethyst, dictGemAmethyst, dictGemAmethyst],
  [dictGemAmethyst, dictGemAmethyst, dictGemAmethyst]
]);

recipes.remove(largeTanzanite);
recipes.addShaped(largeTanzanite, [
  [dictGemTanzanite, dictGemTanzanite, dictGemTanzanite],
  [dictGemTanzanite, dictGemTanzanite, dictGemTanzanite],
  [dictGemTanzanite, dictGemTanzanite, dictGemTanzanite]
]);

recipes.remove(stoneSeparator);
recipes.addShaped(stoneSeparator, [
  [dictReinforcedBlock, centrifugeLV       , dictReinforcedBlock],
  [powerCube          , blockReinforcedIron, powerCube          ],
  [dictReinforcedBlock, emSeparatorLV      , dictReinforcedBlock]
]);

recipes.remove(algorithmSeparator);
recipes.addShaped(algorithmSeparator, [
  [blockAluminium, centrifugeMV , blockAluminium],
  [stoneSeparator, blockDiamond , stoneSeparator],
  [blockAluminium, emSeparatorMV, blockAluminium]
]);

recipes.remove(basicGreenhouse);
recipes.addShaped(basicGreenhouse, [
  [sensorMV           , blockEnrichedGold, emitterMV          ],
  [blockReinforcedIron, machineHullMV    , blockReinforcedIron],
  [dictCircuitGood    , blockEnrichedGold, dictCircuitGood    ]
]);

fixCompressingRecipe();

furnace.remove(ingotEnrichedGold);
Furnace.removeRecipe(dustEnrichedGold);
Smelter.removeRecipe(sand, dustEnrichedGold * 2);
BlastFurnace.addRecipe([ingotEnrichedGold], [dustEnrichedGold], 1700, 120, 1700);

recipes.remove(calulatorAssembly*8);
CircuitAssembler.addRecipe(calulatorAssembly, [
  blockReinforcedIron*9,
  button*9,
  dictCircuitGood*2,
  integratedLogicCircuit*3,
  randomAccessMemoryChip,
  fineWireElectrum*16
], moltenSolderingAlloy * 144, 200, 28);

recipes.remove(advancedAssembly*4);
CircuitAssembler.addRecipe(advancedAssembly, [
  blockEnrichedGold*25,
  calulatorAssembly*4,
  dictCircuitAdvanced*3,
  smdDiode*4,
  randomAccessMemoryChip*4,
  fineWirePlatinum*16
], moltenSolderingAlloy * 144, 200, 112);

recipes.remove(atomicModule);
CircuitAssembler.addRecipe(atomicModule, [
  largeTanzanite*5,
  calulatorAssembly*4,
  dictCircuitAdvanced*3,
  smdDiode*4,
  randomAccessMemoryChip*4,
  fineWirePlatinum*16
], moltenSolderingAlloy * 144, 200, 112);

recipes.remove(atomicAssembly);
CircuitAssembler.addRecipe(atomicAssembly, [
  blockEmerald*25,
  calulatorAssembly*4,
  dictCircuitAdvanced*3,
  smdDiode*4,
  randomAccessMemoryChip*4,
  fineWirePlatinum*16
], moltenSolderingAlloy * 144, 200, 112);

StoneSeparator.removeRecipe(woodOak);
StoneSeparator.removeRecipe(woodSpruce);
StoneSeparator.removeRecipe(woodBirch);
StoneSeparator.removeRecipe(woodJungle);
StoneSeparator.removeRecipe(woodAcacia);
StoneSeparator.removeRecipe(woodDarkOak);

function fixCompressingRecipe() {
  val compressingRecipes as IItemStack[][] = [
    [<Calculator:AmethystBlock>    , <Calculator:Large Amethyst>     ],
    [<Calculator:TanzaniteBlock>   , <Calculator:LargeTanzanite>     ],
    [<Calculator:EnrichedBlock>    , <Calculator:EnrichedGoldIngot>  ],
    [<Calculator:ReinforcedBlock>  , <Calculator:ReinforcedIronIngot>],
    [<Calculator:WeakenedBlock>    , <Calculator:WeakenedDiamond>    ],
    [<Calculator:FlawlessBlock>    , <Calculator:FlawlessDiamond>    ],
    [<Calculator:FlawlessFireBlock>, <Calculator:FlawlessFireDiamond>],
    [<Calculator:ElectricBlock>    , <Calculator:ElectricDiamond>    ],
    [<Calculator:EndBlock>         , <Calculator:EndDiamond>         ],
  ];

  for entry in compressingRecipes {
    recipes.remove(entry[0]);
    Compressor.addRecipe(entry[1], entry[0]*9, 300, 2);
  }
}