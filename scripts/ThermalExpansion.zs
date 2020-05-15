import mods.gregtech.Assembler;

// --- aliases ---

val machineFrameTier1 = <ThermalExpansion:Frame>;

val tankTier1 = <ThermalExpansion:Tank:1>;
val tankTier2 = <ThermalExpansion:Tank:2>;
val tankTier3 = <ThermalExpansion:Tank:3>;
val tankTier4 = <ThermalExpansion:Tank:4>;

val coilReception = <ThermalExpansion:material:1>;
val coilTransmission = <ThermalExpansion:material:2>;
val coilConductance = <ThermalExpansion:material:3>;

val dynamoSteam = <ThermalExpansion:Dynamo>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Augments: [{Slot: 0, id: 4537 as short, Count: 1 as byte, Damage: 32 as short}]});
val dynamoMagmatic = <ThermalExpansion:Dynamo:1>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Augments: [{Slot: 0, id: 4537 as short, Count: 1 as byte, Damage: 32 as short}]});
val dynamoCompression = <ThermalExpansion:Dynamo:2>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Augments: [{Slot: 0, id: 4537 as short, Count: 1 as byte, Damage: 32 as short}]});
val dynamoReactant = <ThermalExpansion:Dynamo:3>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Augments: [{Slot: 0, id: 4537 as short, Count: 1 as byte, Damage: 32 as short}]});
val dynamoeEnervation = <ThermalExpansion:Dynamo:4>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Augments: [{Slot: 0, id: 4537 as short, Count: 1 as byte, Damage: 32 as short}]});

val ingotGold = <minecraft:gold_ingot>;
val ingotSilver = <gregtech:gt.metaitem.01:11054>;
val ingotElectrum = <gregtech:gt.metaitem.01:11303>;
val ingotRedAlloy = <gregtech:gt.metaitem.01:11308>;
val plateGlass = <gregtech:gt.metaitem.01:17890>;
val plateCopper = <gregtech:gt.metaitem.01:17035>;
val plateInvar = <gregtech:gt.metaitem.01:17302>;
val plateDenseUltimet = <gregtech:gt.metaitem.01:22344>;
val glassHardened = <ThermalExpansion:Glass>;
val plateEnderium = <gregtech:gt.metaitem.01:17321>;
val electricPumpLV = <gregtech:gt.metaitem.01:32610>;
val electricPumpMV = <gregtech:gt.metaitem.01:32611>;
val electricPumpHV = <gregtech:gt.metaitem.01:32612>;
val electricPumpEV = <gregtech:gt.metaitem.01:32613>;
val machineHullHV = <gregtech:gt.blockmachines:13>;
val frameBoxMagnalium = <gregtech:gt.blockmachines:4409>;
val dynamoHatchHV = <gregtech:gt.blockmachines:33>;

val tankBC = <BuildCraft|Factory:tankBlock>;

val moltenSolderingAlloy = <liquid:molten.solderingalloy>;

// --- recipe change ---

recipes.remove(machineFrameTier1);
recipes.addShaped(machineFrameTier1, [
  [frameBoxMagnalium, plateDenseUltimet , frameBoxMagnalium],
  [plateDenseUltimet, machineHullHV     , plateDenseUltimet],
  [frameBoxMagnalium, plateDenseUltimet , frameBoxMagnalium]
]);

recipes.remove(tankTier1);
recipes.addShaped(tankTier1, [
  [plateCopper, plateGlass    , plateCopper],
  [plateGlass , tankBC        , plateGlass ],
  [plateCopper, electricPumpLV, plateCopper]
]);

recipes.remove(tankTier2);
recipes.addShaped(tankTier2, [
  [plateInvar, plateGlass    , plateInvar],
  [plateGlass, tankTier1     , plateGlass],
  [plateInvar, electricPumpMV, plateInvar]
]);

recipes.remove(tankTier3);
recipes.addShaped(tankTier3, [
  [glassHardened, plateGlass    , glassHardened],
  [plateGlass   , tankTier2     , plateGlass   ],
  [glassHardened, electricPumpHV, glassHardened]
]);

recipes.remove(tankTier4);
recipes.addShaped(tankTier4, [
  [plateEnderium, plateGlass    , plateEnderium],
  [plateGlass   , tankTier3     , plateGlass   ],
  [plateEnderium, electricPumpEV, plateEnderium]
]);

recipes.remove(coilReception);
recipes.remove(coilTransmission);
recipes.remove(coilConductance);
Assembler.addRecipe(coilReception, ingotGold, ingotRedAlloy*2, moltenSolderingAlloy * 144, 200, 256);
Assembler.addRecipe(coilTransmission, ingotSilver, ingotRedAlloy*2, moltenSolderingAlloy * 144, 200, 256);
Assembler.addRecipe(coilConductance, ingotElectrum, ingotRedAlloy*2, moltenSolderingAlloy * 144, 200, 256);