import mods.gregtech.CircuitAssembler;
import mods.gregtech.FormingPress;


// --- aliases ---

val procLogic = <appliedenergistics2:item.ItemMultiMaterial:22>;
val procCalculation = <appliedenergistics2:item.ItemMultiMaterial:23>;
val procEngineering = <appliedenergistics2:item.ItemMultiMaterial:24>;
val printedSilicon = <appliedenergistics2:item.ItemMultiMaterial:20>;
val printedLogic = <appliedenergistics2:item.ItemMultiMaterial:18>;
val printedCalculation = <appliedenergistics2:item.ItemMultiMaterial:16>;
val printedEngineering = <appliedenergistics2:item.ItemMultiMaterial:17>;
val inscriberSilicon = <appliedenergistics2:item.ItemMultiMaterial:19>;
val inscriberLogic = <appliedenergistics2:item.ItemMultiMaterial:15>;
val inscriberCalculation = <appliedenergistics2:item.ItemMultiMaterial:13>;
val inscriberEngineering = <appliedenergistics2:item.ItemMultiMaterial:14>;
val cableFluix = <appliedenergistics2:item.ItemMultiPart:16>;
val blankPattern = <appliedenergistics2:item.ItemMultiMaterial:52>;
val annihilationCore = <appliedenergistics2:item.ItemMultiMaterial:44>;
val formationCore = <appliedenergistics2:item.ItemMultiMaterial:43>;
val basicCard = <appliedenergistics2:item.ItemMultiMaterial:25>;
val advancedCard = <appliedenergistics2:item.ItemMultiMaterial:28>;

val drive = <appliedenergistics2:tile.BlockDrive>;
val controller = <appliedenergistics2:tile.BlockController>;
val energyAcceptor = <appliedenergistics2:tile.BlockEnergyAcceptor>;
val growthAccelerator = <appliedenergistics2:tile.BlockQuartzGrowthAccelerator>;
val inscriber = <appliedenergistics2:tile.BlockInscriber>;
val interface = <appliedenergistics2:tile.BlockInterface>;

val importBus = <appliedenergistics2:item.ItemMultiPart:240>;
val exportBus = <appliedenergistics2:item.ItemMultiPart:260>;

val plateSilicon = <gregtech:gt.metaitem.01:17020>;
val plateGold = <gregtech:gt.metaitem.01:17086>;
val plateQuartz = <gregtech:gt.metaitem.01:17516>;
val plateDiamond = <gregtech:gt.metaitem.01:17500>;
val plateRedAlloy = <gregtech:gt.metaitem.01:17308>;
val plateTitanium = <gregtech:gt.metaitem.01:17028>;
val plateAluminium = <gregtech:gt.metaitem.01:17019>;
val plateSteel = <gregtech:gt.metaitem.01:17305>;
val plateStainlessSteel = <gregtech:gt.metaitem.01:17306>;
val dustGrowstone = <minecraft:glowstone_dust>;
val crystalPureQuartz = <appliedenergistics2:item.ItemMultiMaterial:10>;
val crystalPureFluix = <appliedenergistics2:item.ItemMultiMaterial:12>;
val glassQuartz = <appliedenergistics2:tile.BlockQuartzGlass>;
val blockFluix = <appliedenergistics2:tile.BlockFluix>;
val pistonEV = <gregtech:gt.metaitem.01:32643>;
val pipeItemElectrumLarge = <gregtech:gt.blockmachines:5613>;

val transformerLV = <gregtech:gt.blockmachines:21>;
val formingPressEV = <gregtech:gt.blockmachines:604>;
val superBufferHV = <gregtech:gt.blockmachines:9303>;
val inputBusLV = <gregtech:gt.blockmachines:71>;
val outputBusLV = <gregtech:gt.blockmachines:81>;
val machineHullEV = <gregtech:gt.blockmachines:14>;

val piston = <minecraft:piston>;
val stickyPiston = <minecraft:sticky_piston>;

val dictCircuitBasic = <ore:circuitBasic>;
val dictCircuitGood = <ore:circuitGood>;
val dictCircuitAdvanced = <ore:circuitAdvanced>;
val dictCircuitData = <ore:circuitData>;

val moltenSolderingAlloy = <liquid:molten.solderingalloy>;

// --- recipe change ---
recipes.remove(blockFluix);

CircuitAssembler.addRecipe(procLogic, [printedLogic, printedSilicon, plateRedAlloy, dictCircuitBasic], moltenSolderingAlloy * 144, 400, 16);
CircuitAssembler.addRecipe(procCalculation, [printedCalculation, printedSilicon, plateRedAlloy, dictCircuitGood], moltenSolderingAlloy * 144, 400, 64);
CircuitAssembler.addRecipe(procEngineering, [printedEngineering, printedSilicon, plateRedAlloy, dictCircuitAdvanced], moltenSolderingAlloy * 144, 400, 256);

FormingPress.addRecipe(printedSilicon, plateSilicon * 2, inscriberSilicon * 0, 400, 16);
FormingPress.addRecipe(printedLogic, plateGold * 2, inscriberLogic * 0, 400, 16);
FormingPress.addRecipe(printedCalculation, plateQuartz * 2, inscriberCalculation * 0, 400, 64);
FormingPress.addRecipe(printedEngineering, plateDiamond * 2, inscriberEngineering * 0, 400, 256);

recipes.remove(energyAcceptor);
recipes.addShaped(energyAcceptor, [
  [crystalPureFluix, glassQuartz  , crystalPureFluix],
  [glassQuartz     , transformerLV, glassQuartz     ],
  [crystalPureFluix, glassQuartz  , crystalPureFluix]
]);

recipes.remove(growthAccelerator);
recipes.addShaped(growthAccelerator, [
  [plateTitanium, cableFluix, plateTitanium],
  [glassQuartz  , blockFluix, glassQuartz  ],
  [plateTitanium, cableFluix, plateTitanium]
]);

recipes.remove(inscriber);
recipes.addShaped(inscriber, [
  [plateTitanium   , pistonEV      , plateTitanium],
  [crystalPureFluix, formingPressEV, plateTitanium],
  [plateTitanium   , pistonEV      , plateTitanium]
]);

recipes.remove(blankPattern);
recipes.addShaped(blankPattern, [
  [glassQuartz   , dustGrowstone    , glassQuartz   ],
  [dustGrowstone , crystalPureQuartz, dustGrowstone ],
  [plateAluminium, plateAluminium   , plateAluminium]
]);

recipes.remove(drive);
recipes.addShaped(drive, [
  [plateStainlessSteel, procEngineering, plateStainlessSteel],
  [cableFluix         , superBufferHV  , cableFluix         ],
  [plateStainlessSteel, procEngineering, plateStainlessSteel]
]);

recipes.remove(controller);
recipes.addShaped(controller, [
  [dictCircuitData, energyAcceptor, dictCircuitData],
  [energyAcceptor , machineHullEV , energyAcceptor ],
  [dictCircuitData, energyAcceptor, dictCircuitData]
]);

recipes.remove(interface);
recipes.addShaped(interface, [
  [dictCircuitBasic, inputBusLV , dictCircuitBasic],
  [annihilationCore, glassQuartz, formationCore   ],
  [dictCircuitBasic, outputBusLV, dictCircuitBasic]
]);

recipes.remove(importBus);
recipes.addShaped(importBus, [
  [null      , pipeItemElectrumLarge, null],
  [plateSteel, annihilationCore     , plateSteel],
  [plateSteel, stickyPiston         , plateSteel]
]);

recipes.remove(exportBus);
recipes.addShaped(exportBus, [
  [plateSteel, pipeItemElectrumLarge, plateSteel],
  [plateSteel, formationCore        , plateSteel],
  [null      , piston               , null      ]
]);

recipes.remove(basicCard);
recipes.addShaped(basicCard, [
  [plateGold      , plateAluminium , null          ],
  [dictCircuitGood, procCalculation, plateAluminium],
  [plateGold      , plateAluminium , null          ]
]);

recipes.remove(advancedCard);
recipes.addShaped(advancedCard, [
  [plateDiamond       , plateStainlessSteel, null               ],
  [dictCircuitAdvanced, procEngineering    , plateStainlessSteel],
  [plateDiamond       , plateStainlessSteel, null               ]
]);