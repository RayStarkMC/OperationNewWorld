// --- aliases ---

val machineFrameTier1 = <ThermalExpansion:Frame>;

val machineHullHV = <gregtech:gt.blockmachines:13>;
val denseUltimetPlate = <gregtech:gt.metaitem.01:22344>;
val frameBoxMagnalium = <gregtech:gt.blockmachines:4409>;

val tankTier1 = <ThermalExpansion:Tank:1>;
val tankTier2 = <ThermalExpansion:Tank:2>;
val tankTier3 = <ThermalExpansion:Tank:3>;
val tankTier4 = <ThermalExpansion:Tank:4>;

val plateGlass = <gregtech:gt.metaitem.01:17890>;
val plateCopper = <gregtech:gt.metaitem.01:17035>;
val plateInvar = <gregtech:gt.metaitem.01:17302>;
val glassHardened = <ThermalExpansion:Glass>;
val plateEnderium = <gregtech:gt.metaitem.01:17321>;
val electricPumpLV = <gregtech:gt.metaitem.01:32610>;
val electricPumpMV = <gregtech:gt.metaitem.01:32611>;
val electricPumpHV = <gregtech:gt.metaitem.01:32612>;
val electricPumpEV = <gregtech:gt.metaitem.01:32613>;
val tankBC = <BuildCraft|Factory:tankBlock>;

// --- recipe change ---

recipes.remove(machineFrameTier1);
recipes.addShaped(machineFrameTier1, [
  [frameBoxMagnalium, denseUltimetPlate , frameBoxMagnalium],
  [denseUltimetPlate, machineHullHV     , denseUltimetPlate],
  [frameBoxMagnalium, denseUltimetPlate , frameBoxMagnalium]
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