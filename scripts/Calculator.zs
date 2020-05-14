import mods.gregtech.Compressor;
import mods.gregtech.BlastFurnace;
import mods.thermalexpansion.Furnace;
import mods.thermalexpansion.Smelter;
import minetweaker.item.IItemStack;

// --- aliases ---

val infoCalculator = <Calculator:InfoCalculator>;
val craftingCalculator = <Calculator:CraftingCalculator>.withTag({Items: [], Itemssize: 0});
val calculator = <Calculator:Calculator>.withTag({Items: [], Itemssize: 0});
val calculatorScreen = <Calculator:CalculatorScreen>;
val powerCube = <Calculator:PCubeIdle>;
val handCrankedGenerator = <Calculator:CrankedGenerator>;
val gemAmethystCalc = <Calculator:Small Amethyst>;
val largeAmethyst = <Calculator:Large Amethyst>;
val dictGemAmethyst = <ore:gemAmethyst>;
val ingotEnrichedGold = <Calculator:EnrichedGoldIngot>;
val dustEnrichedGold = <Calculator:EnrichedGold>;
val blockReinforcedIron = <Calculator:ReinforcedBlock>;
val dictReinforcedBlock = <ore:calculatorReinforcedBlock>;
val stoneSeparator = <Calculator:StoneSeperatorIdle>;

val slabStone = <minecraft:stone_slab>;
val dustRedstone = <minecraft:redstone>;
val button = <minecraft:stone_button>;
val worktable = <Forestry:factory2:2>;
val writableBook = <minecraft:writable_book>;
val blockRedstone = <minecraft:redstone_block>;
val lapis = <minecraft:dye:4>;
val sand = <minecraft:sand>;

val dictCircuitBasic = <ore:circuitBasic>;
val plateIron = <gregtech:gt.metaitem.01:17032>;
val plateSteel = <gregtech:gt.metaitem.01:17305>;
val plateRedAlloy = <gregtech:gt.metaitem.01:17308>;
val frameSteel = <gregtech:gt.blockmachines:4401>;
val plateWood = <gregtech:gt.metaitem.01:17809>;
val frameWood = <gregtech:gt.blockmachines:4905>;
val centrifugeLV = <gregtech:gt.blockmachines:361>;
val emSeparatorLV = <gregtech:gt.blockmachines:561>;

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

furnace.remove(ingotEnrichedGold);
Furnace.removeRecipe(dustEnrichedGold);
Smelter.removeRecipe(sand, dustEnrichedGold * 2);
BlastFurnace.addRecipe([ingotEnrichedGold], [dustEnrichedGold], 1700, 120, 1700);


val fixCompress as IItemStack[][] = [
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
for entry in fixCompress
  fixCompressingRecipe(entry[0], entry[1]);

recipes.remove(stoneSeparator);
recipes.addShaped(stoneSeparator, [
  [dictReinforcedBlock, centrifugeLV       , dictReinforcedBlock],
  [powerCube          , blockReinforcedIron, powerCube          ],
  [dictReinforcedBlock, emSeparatorLV      , dictReinforcedBlock]
]);


function fixCompressingRecipe(output as IItemStack, material as IItemStack) {
  recipes.remove(output);
  Compressor.addRecipe(output, material*9, 300, 2);
}