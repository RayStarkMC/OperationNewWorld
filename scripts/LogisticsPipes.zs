import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;
import minetweaker.liquid.ILiquidStack;
import mods.gregtech.CircuitAssembler;
import mods.gregtech.Assembler;





// --- aliases ---

val pipeFrame = <LogisticsPipes:item.pipeComponents>;
val microServo = <LogisticsPipes:item.pipeComponents:1>;
val processorRouting = <LogisticsPipes:item.pipeComponents:2>;
val microPackager = <LogisticsPipes:item.pipeComponents:3>;
val microCapsulator = <LogisticsPipes:item.pipeComponents:4>;
val circuitExpansion = <LogisticsPipes:item.pipeComponents:5>;
val focusLens = <LogisticsPipes:item.pipeComponents:6>;
val laserAcceptorInterface = <LogisticsPipes:item.pipeComponents:7>;

val solderingStation = <LogisticsPipes:logisticsSolidBlock>;
val lpJunction = <LogisticsPipes:logisticsSolidBlock:1>;
val securityStation = <LogisticsPipes:logisticsSolidBlock:2>;
val craftingTable = <LogisticsPipes:logisticsSolidBlock:3>;
val craftingTableFuzzy = <LogisticsPipes:logisticsSolidBlock:4>;
val statisticsTable = <LogisticsPipes:logisticsSolidBlock:5>;

val pipeBasic = <LogisticsPipes:item.PipeItemsBasicLogistics>;
val pipeRequest = <LogisticsPipes:item.PipeItemsRequestLogistics>;
val pipeProvider = <LogisticsPipes:item.PipeItemsProviderLogistics>;
val pipeCrafting = <LogisticsPipes:item.PipeItemsCraftingLogistics>;
val pipeSatellite = <LogisticsPipes:item.PipeItemsSatelliteLogistics>;
val pipeSupplier = <LogisticsPipes:item.PipeItemsSupplierLogistics>;
val pipeChassisMk1 = <LogisticsPipes:item.PipeLogisticsChassiMk1>;
val pipeChassisMk2 = <LogisticsPipes:item.PipeLogisticsChassiMk2>;
val pipeChassisMk3 = <LogisticsPipes:item.PipeLogisticsChassiMk3>;
val pipeChassisMk4 = <LogisticsPipes:item.PipeLogisticsChassiMk4>;
val pipeChassisMk5 = <LogisticsPipes:item.PipeLogisticsChassiMk5>;
val pipeCraftingMk2 = <LogisticsPipes:item.PipeItemsCraftingLogisticsMk2>;
val pipeRequestMk2 = <LogisticsPipes:item.PipeItemsRequestLogisticsMk2>;
val pipeRemoteOrderer = <LogisticsPipes:item.PipeItemsRemoteOrdererLogistics>;
val pipeProviderMk2 = <LogisticsPipes:item.PipeItemsProviderLogisticsMk2>;
val pipeBeeAnalyzer = <LogisticsPipes:item.PipeItemsApiaristAnalyser>;
val pipeBeeSink = <LogisticsPipes:item.PipeItemsApiaristSink>;
val pipeSystemConnector = <LogisticsPipes:item.PipeItemsInvSysConnector>;
val pipeSystemEntrance = <LogisticsPipes:item.PipeItemsSystemEntranceLogistics>;
val pipeSystemDestination = <LogisticsPipes:item.PipeItemsSystemDestinationLogistics>;
val pipeFluidContainer = <LogisticsPipes:item.PipeItemsFluidSupplier>;
val pipeFluidBasic = <LogisticsPipes:item.PipeFluidBasic>;
val pipeFluidInsertion = <LogisticsPipes:item.PipeFluidInsertion>;
val pipeFluidProvider = <LogisticsPipes:item.PipeFluidProvider>;
val pipeFluidRequest = <LogisticsPipes:item.PipeFluidRequestLogistics>;
val pipeFluidExtractor = <LogisticsPipes:item.PipeFluidExtractor>;
val pipeFluidSatellite = <LogisticsPipes:item.PipeFluidSatellite>;
val pipeFluidSupplier = <LogisticsPipes:item.PipeFluidSupplierMk2>;
val pipeUnrouted = <LogisticsPipes:item.PipeItemsBasicTransport>;

val moduleBlank = <LogisticsPipes:item.itemModule>;
val moduleItemSink = <LogisticsPipes:item.itemModule:1>;
val modulePassiveSupplier = <LogisticsPipes:item.itemModule:2>;
val moduleExtractor = <LogisticsPipes:item.itemModule:3>;
val modulePolymorphic = <LogisticsPipes:item.itemModule:4>;
val moduleQuickSort = <LogisticsPipes:item.itemModule:5>;
val moduleTerminus = <LogisticsPipes:item.itemModule:6>;
val moduleAdvancedExtractor = <LogisticsPipes:item.itemModule:7>;
val moduleExtractorMk2 = <LogisticsPipes:item.itemModule:107>;
val moduleAdvancedExtractorMk2 = <LogisticsPipes:item.itemModule:107>;
val moduleExtractorMk3 = <LogisticsPipes:item.itemModule:203>;
val moduleAdvancedExtractorMk3 = <LogisticsPipes:item.itemModule:207>;
val moduleProvider = <LogisticsPipes:item.itemModule:500>;
val moduleProviderMk2 = <LogisticsPipes:item.itemModule:501>;
val moduleElectricManager = <LogisticsPipes:item.itemModule:300>;
val moduleElectricBuffur = <LogisticsPipes:item.itemModule:301>;
val moduleModBasedItemSink = <LogisticsPipes:item.itemModule:12>;
val moduleOreDictItemSink = <LogisticsPipes:item.itemModule:13>;
val moduleCreativeTabItemSink = <LogisticsPipes:item.itemModule:16>;
val moduleEnchantmentSink = <LogisticsPipes:item.itemModule:31>;
val moduleEnchantmentSinkMk2 = <LogisticsPipes:item.itemModule:131>;
val moduleQuickSortCC = <LogisticsPipes:item.itemModule:14>;
val moduleItemSinkCC = <LogisticsPipes:item.itemModule:15>;

val upgradeFuzzy = <LogisticsPipes:item.itemUpgrade:25>;


val ingotRubber = <gregtech:gt.metaitem.01:11880>;
val ingotRedAlloy = <gregtech:gt.metaitem.01:11308>;
val plateSteel = <gregtech:gt.metaitem.01:17305>;
val plateDiamond = <gregtech:gt.metaitem.01:17500>;
val plateRedstoneAlloy = <miscutils:itemPlateRedstoneAlloy>;
val plateGlass = <minecraft:glass_pane>;
val plateUltimet = <gregtech:gt.metaitem.01:17344>;
val plateAluminium = <gregtech:gt.metaitem.01:17019>;
val plateGold = <gregtech:gt.metaitem.01:17086>;
val rodSteel = <gregtech:gt.metaitem.01:23305>;
val wireFineGold = <gregtech:gt.metaitem.02:19086>;
val coverCraftingTable = <gregtech:gt.metaitem.01:32744>;
val circuitIntegrated12 = <gregtech:gt.integrated_circuit:12>;
val machineHullLV = <gregtech:gt.blockmachines:11>;
val machineHullMV = <gregtech:gt.blockmachines:12>;
val machineHullHV = <gregtech:gt.blockmachines:13>;
val energyBuffer16LV = <gregtech:gt.blockmachines:191>;
val transformerLV = <gregtech:gt.blockmachines:21>;

val dustRedstone = <minecraft:redstone>;
val stickyPiston = <minecraft:sticky_piston>;
val glassBottle = <minecraft:glass_bottle>;
val blockRedstone = <minecraft:redstone_block>;
val enderPearl = <minecraft:ender_pearl>;
val bucket = <minecraft:bucket>;
val paper = <minecraft:paper>;
val book = <minecraft:book>;
val bookEnchant = <minecraft:enchanted_book>;
val torchRedstone = <minecraft:redstone_torch>;

val woodenStorageCrate = <ImmersiveEngineering:woodenDevice:4>;
val pipeSealant = <BuildCraft|Transport:pipeWaterproof>;
val reBattery = <IC2:itemBatREDischarged>;
val modemWireless = <ComputerCraft:CC-Peripheral:1>;
val modemWired = <ComputerCraft:CC-Cable:1>;
val cableNetworking = <ComputerCraft:CC-Cable>;

val dictCircuitBasic = <ore:circuitBasic>;
val dictCircuitGood = <ore:circuitGood>;
val dictCircuitAdvanced = <ore:circuitAdvanced>;
val dictDyeGreen = <ore:dyeGreen>;
val dictDyeRed = <ore:dyeRed>;
val dictDyeBlue = <ore:dyeBlue>;
val dictDyeYellow = <ore:dyeYellow>;
val dictDyeOrange = <ore:dyeOrange>;
val dictDyeBlank = <ore:dyeBlack>;
val dictDyePurple = <ore:dyePurple>;

val moltenSolderingAlloy = <liquid:molten.solderingalloy>;
val moltenRedAlloy = <liquid:molten.redalloy>;





// --- tooltip ---

val toolTipAboutBasicCircuit = format.aqua("Can be made with any basic circuit.");
processorRouting.addTooltip(toolTipAboutBasicCircuit);
circuitExpansion.addTooltip(toolTipAboutBasicCircuit);
moduleElectricManager.addTooltip(toolTipAboutBasicCircuit);





// --- recipe change ---

changeToAssemblerLV(pipeFrame*8, [rodSteel*12 , circuitIntegrated12*0], moltenSolderingAlloy*144);
changeToAssemblerLV(microServo, [dictDyeGreen, dictDyeRed, dictDyeBlue, wireFineGold*3, ingotRubber, plateSteel], moltenRedAlloy*144);
changeToAssemblerLV(microPackager, [dictDyeRed * 2, dictDyeGreen * 2, wireFineGold * 4, stickyPiston, plateSteel], moltenRedAlloy*144);
changeToAssemblerLV(microCapsulator, [microPackager, glassBottle], null);
changeToAssemblerLV(focusLens, [plateGlass*5], null);
changeToAssemblerLV(laserAcceptorInterface, [focusLens, dustRedstone*3, rodSteel], null);
changeToAssemblerMV(moduleBlank, [paper*2, dustRedstone*2, circuitExpansion, processorRouting, dictCircuitGood], moltenSolderingAlloy*144);
changeToCircuitAssemblerLV(processorRouting, [plateDiamond, plateRedstoneAlloy, wireFineGold*4, dictCircuitGood], moltenSolderingAlloy*144);
changeToCircuitAssemblerLV(circuitExpansion, [plateSteel, plateRedstoneAlloy, wireFineGold * 4, dictCircuitGood], moltenSolderingAlloy*144);

changeToAssemblerLV(pipeUnrouted, [pipeFrame, dustRedstone, plateGlass*2], moltenSolderingAlloy * 144);
changeToAssemblerLV(pipeBasic, [pipeUnrouted, processorRouting], moltenSolderingAlloy*144);
changeToAssemblerLV(pipeRequest, [pipeBasic, processorRouting, microPackager], null);
changeToAssemblerLV(pipeProvider, [pipeBasic, dustRedstone*2, microPackager, microServo], null);
changeToAssemblerMV(pipeCrafting, [pipeRequest, pipeProvider, dustRedstone, microPackager, microServo], null);
changeToAssemblerMV(pipeSatellite, [pipeRequest, dustRedstone * 2, microPackager, dictDyeYellow], null);
changeToAssemblerMV(pipeSupplier, [pipeRequest, microPackager, dictDyeBlue*2], null);
changeToAssemblerMV(pipeChassisMk1, [pipeBasic, plateSteel*2, dustRedstone*3], null);
changeToAssemblerMV(pipeCraftingMk2, [pipeCrafting, circuitExpansion, dustRedstone], null);
changeToAssemblerMV(pipeRequestMk2, [pipeRequest, processorRouting, circuitExpansion], null);
changeToAssemblerMV(pipeProviderMk2, [pipeProvider, circuitExpansion], null);
changeToAssemblerMV(pipeFluidContainer, [pipeBasic, dictDyeBlue*2, bucket], null);
changeToAssemblerMV(pipeFluidBasic, [pipeBasic, dictDyeBlue*4, pipeSealant*4], null);
changeToAssemblerMV(pipeFluidInsertion, [pipeFluidBasic, dictDyeBlue*2, bucket, microCapsulator], null);
changeToAssemblerMV(pipeFluidProvider, [pipeFluidBasic, dictDyeBlue*2, microServo, microCapsulator], null);
changeToAssemblerMV(pipeFluidRequest, [pipeFluidBasic, dictDyeBlue, processorRouting, microCapsulator], null);
changeToAssemblerMV(pipeFluidExtractor, [pipeFluidProvider, dustRedstone*2], null);
changeToAssemblerMV(pipeFluidSatellite, [pipeFluidRequest, dustRedstone*3, microCapsulator], null);
changeToAssemblerMV(pipeFluidSupplier, [pipeFluidRequest, dictDyeBlue*2, microCapsulator], null);
changeToAssemblerHV(pipeChassisMk2, [pipeChassisMk1, plateSteel*5], null);
changeToAssemblerHV(pipeChassisMk3, [pipeChassisMk2, plateSteel*8], null);
changeToAssemblerHV(pipeChassisMk4, [pipeChassisMk3, plateSteel*5, plateSteel*8], null);
changeToAssemblerHV(pipeRemoteOrderer, [pipeRequestMk2, enderPearl, microPackager], null);
changeToAssemblerEV(pipeChassisMk5, [pipeChassisMk4, processorRouting], null);
changeToAssemblerEV(pipeSystemConnector, [pipeBasic, enderPearl, microPackager, dustRedstone*2], null);
changeToAssemblerEV(pipeSystemEntrance, [pipeProvider, microPackager, dictDyeGreen], null);
changeToAssemblerEV(pipeSystemDestination, [pipeProvider, microPackager, dictDyeRed], null);

changeToAssemblerMV(moduleItemSink, [moduleBlank, dictDyeGreen*2, dustRedstone*2, microPackager], null);
changeToAssemblerMV(modulePassiveSupplier, [moduleBlank, dictDyeRed*2, dustRedstone*2, microPackager], null);
changeToAssemblerMV(moduleExtractor, [moduleProvider, microServo], null);
changeToAssemblerMV(moduleExtractorMk2, [moduleExtractor, microServo], null);
changeToAssemblerMV(moduleTerminus, [moduleBlank, dictDyeBlank, dictDyePurple, dustRedstone*2, microPackager], null);
changeToAssemblerMV(moduleProvider, [moduleBlank, dictDyeBlue*2, dustRedstone*2, microPackager], null);
changeToAssemblerHV(moduleProviderMk2, [moduleProvider, circuitExpansion], null);
changeToAssemblerHV(moduleExtractorMk3, [moduleExtractorMk2, microServo], null);
changeToAssemblerHV(moduleQuickSort, [moduleBlank, dictDyeBlue*2, dustRedstone*2, processorRouting, microPackager], null);
changeToAssemblerHV(moduleAdvancedExtractor, [moduleExtractor, circuitExpansion], null);
changeToAssemblerHV(moduleAdvancedExtractorMk2, [moduleAdvancedExtractor, microServo], null);
changeToAssemblerHV(moduleAdvancedExtractorMk2, [moduleExtractorMk2, circuitExpansion], null);
changeToAssemblerHV(moduleModBasedItemSink, [moduleItemSink, circuitExpansion], null);
changeToAssemblerHV(moduleOreDictItemSink, [moduleModBasedItemSink, book], null);
changeToAssemblerHV(moduleCreativeTabItemSink, [moduleOreDictItemSink, circuitExpansion], null);
changeToAssemblerHV(moduleEnchantmentSink, [moduleItemSink, bookEnchant], null);
changeToAssemblerEV(modulePolymorphic, [moduleItemSink, dictDyeOrange*2, dustRedstone*2, microPackager], null);
changeToAssemblerEV(moduleAdvancedExtractorMk3, [moduleAdvancedExtractorMk2, microServo], null);
changeToAssemblerEV(moduleAdvancedExtractorMk3, [moduleExtractorMk3, circuitExpansion], null);
changeToAssemblerEV(moduleElectricManager, [moduleBlank, dictCircuitBasic*2, reBattery*2, dustRedstone*3, microPackager], null);
changeToAssemblerEV(moduleElectricBuffur, [moduleBlank,  dictCircuitAdvanced*4, dustRedstone*3, microPackager], null);
changeToAssemblerEV(moduleEnchantmentSinkMk2, [moduleEnchantmentSink, circuitExpansion], null);
changeToAssemblerEV(moduleQuickSortCC, [moduleQuickSort, modemWireless, modemWired, cableNetworking, torchRedstone, dustRedstone*3], null);
changeToAssemblerEV(moduleItemSinkCC, [moduleItemSink, modemWireless, modemWired, cableNetworking, torchRedstone, dustRedstone*3], null);

changeRecipe(solderingStation, [
  [plateUltimet, coverCraftingTable, plateUltimet],
  [plateUltimet, machineHullHV     , plateUltimet],
  [plateUltimet, ingotRedAlloy     , plateUltimet]
]);
changeRecipe(lpJunction, [
  [plateSteel      , dictCircuitBasic, plateSteel      ],
  [blockRedstone   , energyBuffer16LV, blockRedstone   ],
  [dictCircuitBasic, transformerLV   , dictCircuitBasic]
]);
changeRecipe(securityStation, [
  [plateSteel   , processorRouting, plateSteel   ],
  [blockRedstone, machineHullMV   , blockRedstone],
  [plateSteel   , pipeBasic       , plateSteel   ]
]);
changeRecipe(sraftingTable, [
  [plateAluminium  , coverCraftingTable, plateAluminium  ],
  [circuitExpansion, machineHullLV     , circuitExpansion],
  [plateAluminium  , woodenStorageCrate, plateAluminium  ]
]);
changeRecipe(craftingTableFuzzy, [
  [upgradeFuzzy          ],
  [craftingTable]
]);
changeRecipe(statisticsTable, [
  [plateSteel   , plateGold    , plateSteel   ],
  [blockRedstone, machineHullMV, blockRedstone],
  [plateSteel   , pipeBasic    , plateSteel   ]
]);





// --- functions ---

function changeRecipe(output as IItemStack, inputs as IIngredient[][]) {
  recipes.remove(output);
  recipes.addShaped(output, inputs);
}

function changeToAssembler(output as IItemStack, inputs as IIngredient[], liquid as ILiquidStack, time as int, voltage as int) {
  recipes.remove(output);
  Assembler.addRecipe(output, inputs, liquid, time, voltage);
}

function changeToAssemblerLV(output as IItemStack, inputs as IIngredient[], liquid as ILiquidStack) {
  changeToAssembler(output, inputs, liquid, 400, 16);
}

function changeToAssemblerMV(output as IItemStack, inputs as IIngredient[], liquid as ILiquidStack) {
  changeToAssembler(output, inputs, liquid, 400, 64);
}

function changeToAssemblerHV(output as IItemStack, inputs as IIngredient[], liquid as ILiquidStack) {
  changeToAssembler(output, inputs, liquid, 400, 256);
}

function changeToAssemblerEV(output as IItemStack, inputs as IIngredient[], liquid as ILiquidStack) {
  changeToAssembler(output, inputs, liquid, 400, 1024);
}

function changeToCircuitAssembler(output as IItemStack, inputs as IIngredient[], liquid as ILiquidStack, time as int, voltage as int) {
  recipes.remove(output);
  CircuitAssembler.addRecipe(output, inputs, liquid, time, voltage);
}

function changeToCircuitAssemblerLV(output as IItemStack, inputs as IIngredient[], liquid as ILiquidStack) {
  changeToCircuitAssembler(output, inputs, liquid, 400, 16);
}

function changeToCircuitAssemblerMV(output as IItemStack, inputs as IIngredient[], liquid as ILiquidStack) {
  changeToCircuitAssembler(output, inputs, liquid, 400, 64);
}

function changeToCircuitAssemblerHV(output as IItemStack, inputs as IIngredient[], liquid as ILiquidStack) {
  changeToCircuitAssembler(output, inputs, liquid, 400, 256);
}

function changeToCircuitAssemblerEV(output as IItemStack, inputs as IIngredient[], liquid as ILiquidStack) {
  changeToCircuitAssembler(output, inputs, liquid, 400, 1024);
}