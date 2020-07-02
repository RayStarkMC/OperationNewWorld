
import minetweaker.item.IItemStack;
import minetweaker.oredict.IOreDictEntry;
import mods.buildcraft.AssemblyTable;
import mods.gregtech.Assembler;


// --- aliases ---

val gearsBC = [
  <BuildCraft|Core:woodenGearItem>,
  <BuildCraft|Core:stoneGearItem>,
  <BuildCraft|Core:ironGearItem>,
  <BuildCraft|Core:goldGearItem>,
  <BuildCraft|Core:diamondGearItem>
] as IItemStack[];

val dictGears = [
  <ore:gearWood>,
  <ore:gearStone>,
  <ore:gearIron>,
  <ore:gearGold>,
  <ore:gearDiamond>
] as IOreDictEntry[];

val gearIronBC = gearsBC[2];
val gearGoldBC = gearsBC[3];

val dictTEGearIron = <ore:thermalexpansion:machineIron>;
val dictTEGearGold = <ore:thermalexpansion:machineGold>;

val miningWell = <BuildCraft|Factory:miningWellBlock>;
val pump = <BuildCraft|Factory:pumpBlock>;
val floodGate = <BuildCraft|Factory:floodGateBlock>;
val tank = <BuildCraft|Factory:tankBlock>;
val chute = <BuildCraft|Factory:blockHopper>;
val autoWorkbench = <BuildCraft|Factory:autoWorkbenchBlock>;
val filler = <BuildCraft|Builders:fillerBlock>;
val assemblyTable = <BuildCraft|Silicon:laserTableBlock>;
val laser = <BuildCraft|Silicon:laserBlock>;
val builder = <BuildCraft|Builders:builderBlock>;
val quarry = <BuildCraft|Builders:machineBlock>;
val landMark = <BuildCraft|Core:markerBlock>;

val wires as IItemStack[] = [
  <BuildCraft|Transport:pipeWire>,
  <BuildCraft|Transport:pipeWire:1>,
  <BuildCraft|Transport:pipeWire:2>,
  <BuildCraft|Transport:pipeWire:3>
];

val chips  as IItemStack[] = [
  <BuildCraft|Silicon:redstoneChipset>,
  <BuildCraft|Silicon:redstoneChipset:1>,
  <BuildCraft|Silicon:redstoneChipset:2>,
  <BuildCraft|Silicon:redstoneChipset:3>,
  <BuildCraft|Silicon:redstoneChipset:4>,
  <BuildCraft|Silicon:redstoneChipset:5>,
  <BuildCraft|Silicon:redstoneChipset:6>,
  <BuildCraft|Silicon:redstoneChipset:7>
];

val plateRedAlloy = <gregtech:gt.metaitem.01:17308>;
val plateWroughtIron = <gregtech:gt.metaitem.01:17304>;
val emmiterMV = <gregtech:gt.metaitem.01:32681>;
val machineHullULV = <gregtech:gt.blockmachines:10>;
val machineHullLV = <gregtech:gt.blockmachines:11>;
val machineHullHV = <gregtech:gt.blockmachines:13>;
val yellowStripeBlock0 = <gregtech:gt.blockcasings3>;
val yellowStripeBlock1 = <gregtech:gt.blockcasings3:1>;
val headPickaxeWroughtIron = <gregtech:gt.metaitem.02:1304>;
val blassItemPipe = <gregtech:gt.blockmachines:5602>;
val bronzeFluidPipe = <gregtech:gt.blockmachines:5122>;
val ironGear = <gregtech:gt.metaitem.02:31032>;
val bronzeGear = <gregtech:gt.metaitem.02:31300>;
val gearGoldGT = <gregtech:gt.metaitem.02:31086>;
val gearDiamondGT = <gregtech:gt.metaitem.02:31500>;
val gearStainlessGT = <gregtech:gt.metaitem.02:31306>;
val programmedCircuit8 = <gregtech:gt.integrated_circuit:8>;
val lensRuby = <gregtech:gt.metaitem.01:24502>;
val lensFoolsRuby = <gregtech:gt.metaitem.01:24512>;
val lensDiamond = <gregtech:gt.metaitem.01:24500>;
val assemblerMV = <gregtech:gt.blockmachines:212>;
val laserEngraverMV = <gregtech:gt.blockmachines:592>;

val obsidian9 = <miscutils:blockCompressedObsidian>;

val drillDiamond = <IC2:itemToolDDrill:*>;

val hammer = <ore:craftingToolHardHammer>;
val piston = <minecraft:piston>;
val bucket = <minecraft:bucket>;
val ironBars = <minecraft:iron_bars>;
val glass = <minecraft:glass>;
val hopper = <minecraft:hopper>;

val craftingTable9 = <Avaritia:Double_Craft>;
val woodenStorageCrate = <ImmersiveEngineering:woodenDevice:4>;

val dictCircuitBasic = <ore:circuitBasic>;
val dictCircuitGood = <ore:circuitGood>;
val dictCircuitAdvanced = <ore:circuitAdvanced>;
val dictCraftingGrinder = <ore:craftingGrinder>;


// --- recipe change ---

// remove gears
for i, gear in gearsBC {
  recipes.remove(gear);
  dictGears[i].remove(gear);
}
dictTEGearIron.remove(gearIronBC);
dictTEGearGold.remove(gearGoldBC);

// change machines
recipes.remove(miningWell);
recipes.addShaped(miningWell, [
  [blassItemPipe, piston                , blassItemPipe],
  [blassItemPipe, machineHullULV        , blassItemPipe],
  [blassItemPipe, headPickaxeWroughtIron, blassItemPipe]
]);

recipes.remove(pump);
recipes.addShaped(pump, [
  [bronzeFluidPipe, piston        , bronzeFluidPipe],
  [bronzeFluidPipe, machineHullULV, bronzeFluidPipe],
  [bronzeFluidPipe, bucket        , bronzeFluidPipe]
]);

recipes.remove(floodGate);
recipes.addShaped(floodGate, [
  [ironGear, ironBars      , ironGear],
  [ironBars, machineHullULV, ironBars],
  [tank    , ironBars      , tank    ]
]);

recipes.remove(tank);
recipes.addShaped(tank, [
  [glass, glass , glass],
  [glass, hammer, glass],
  [glass, glass , glass]
]);
Assembler.addRecipe(tank, [glass * 8, programmedCircuit8 * 0], null, 400, 4);

recipes.remove(chute);
recipes.addShaped(chute, [
  [plateWroughtIron, hopper          , plateWroughtIron],
  [null            , plateWroughtIron, null            ],
]);

recipes.remove(autoWorkbench);
recipes.addShaped(autoWorkbench, [
  [ironGear  , bronzeGear        , ironGear  ],
  [bronzeGear, craftingTable9    , bronzeGear],
  [ironGear  , woodenStorageCrate, ironGear  ]
]);

recipes.remove(filler);
recipes.addShaped(filler, [
  [dictCircuitBasic  , landMark          , dictCircuitBasic  ],
  [yellowStripeBlock0, machineHullLV     , yellowStripeBlock1],
  [gearGoldGT        , woodenStorageCrate, gearGoldGT        ]
]);

recipes.remove(assemblyTable);
recipes.addShaped(assemblyTable, [
  [obsidian9    , laserEngraverMV, obsidian9    ],
  [gearDiamondGT, lensRuby       , gearDiamondGT],
  [obsidian9    , assemblerMV    , obsidian9    ]
]);
recipes.addShaped(assemblyTable, [
  [obsidian9    , laserEngraverMV, obsidian9    ],
  [gearDiamondGT, lensFoolsRuby  , gearDiamondGT],
  [obsidian9    , assemblerMV    , obsidian9    ]
]);

recipes.remove(laser);
recipes.addShaped(laser, [
  [plateRedAlloy, plateRedAlloy, plateRedAlloy],
  [plateRedAlloy, lensDiamond  , plateRedAlloy],
  [obsidian9    , emmiterMV    , obsidian9    ]
]);

recipes.remove(quarry);
recipes.addShaped(quarry, [
  [dictCircuitAdvanced, gearStainlessGT, dictCircuitAdvanced],
  [gearDiamondGT      , machineHullHV  , gearDiamondGT      ],
  [dictCraftingGrinder, drillDiamond   , dictCraftingGrinder]
]);

for wire in wires
  AssemblyTable.removeRecipe(wire);

for chip in chips
  AssemblyTable.removeRecipe(chip);