import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;
import minetweaker.oredict.IOreDictEntry;
import mods.immersiveengineering.BlastFurnace as blastFurnace;
import mods.gregtech.Assembler;





// --- aliases ---
val ingotSteelIE = <ImmersiveEngineering:metal:7>;
val blockSteelIE = <ImmersiveEngineering:storage:7>;
val blockCoilCopper = <ImmersiveEngineering:storage:8>;
val blockCoilElectrum = <ImmersiveEngineering:storage:9>;
val blockCoilSteel = <ImmersiveEngineering:storage:10>;
val plateConstantanIE = <ImmersiveEngineering:metal:36>;
val plateAluminiumIE = <ImmersiveEngineering:metal:32>;
val hammer = <ImmersiveEngineering:tool>;
val treatedStick = <ImmersiveEngineering:material>;
val treatedPlank = <ImmersiveEngineering:woodenDecoration:4>;
val slagIE = <ImmersiveEngineering:material:13>;
val thermoelectricGenerator = <ImmersiveEngineering:metalDevice:10>;
val coilLV = <ImmersiveEngineering:coil>;
val coilMV = <ImmersiveEngineering:coil:1>;
val coilHV = <ImmersiveEngineering:coil:2>;
val coilHemp = <ImmersiveEngineering:coil:3>;
val coilSteel = <ImmersiveEngineering:coil:4>;
val fiberHemp = <ImmersiveEngineering:material:3>;
val dynamoKinetic = <ImmersiveEngineering:metalDevice:9>;
val waterWheel = <ImmersiveEngineering:woodenDevice:1>;
val segment = <ImmersiveEngineering:material:1>;
val mechanicalComponentIron = <ImmersiveEngineering:material:11>;
val mechanicalComponentSteel = <ImmersiveEngineering:material:12>;
val capacitorLV = <ImmersiveEngineering:metalDevice:1>;
val capacitorMV = <ImmersiveEngineering:metalDevice:3>;
val capacitorHV = <ImmersiveEngineering:metalDevice:7>;
val crateWoodenStorage = <ImmersiveEngineering:woodenDevice:4>;
val engineeringBlockLight = <ImmersiveEngineering:metalDecoration:7>;
val engineeringBlockHeavy = <ImmersiveEngineering:metalDecoration:5>;

val ingotCopper = <gregtech:gt.metaitem.01:11035>;
val ingotIron = <minecraft:iron_ingot>;
val ingotTin = <gregtech:gt.metaitem.01:11057>;
val ingotAluminium = <gregtech:gt.metaitem.01:11019>;
val ingotMagneticIron = <gregtech:gt.metaitem.01:11354>;
val ingotSteel = <gregtech:gt.metaitem.01:11305>;
val blockLead = <gregtech:gt.blockmetal4:2>;
val blockSteel = <gregtech:gt.blockmetal6:13>;
val plateIron = <gregtech:gt.metaitem.01:17032>;
val plateCopper = <gregtech:gt.metaitem.01:17035>;
val plateSteel = <gregtech:gt.metaitem.01:17305>;
val plateCupronickel = <gregtech:gt.metaitem.01:17310>;
val plateStainlessSteel = <gregtech:gt.metaitem.01:17306>;
val plateTitanium = <gregtech:gt.metaitem.01:17028>;
val plateDoubleCupronickel = <gregtech:gt.metaitem.01:18310>;
val plateDoubleSteel = <gregtech:gt.metaitem.01:18305>;
val wireFineCopper = <gregtech:gt.metaitem.02:19035>;
val wireFineElectrum = <gregtech:gt.metaitem.02:19303>;
val wireFineSteel = <gregtech:gt.metaitem.02:19305>;
val gearMold = <ImmersiveEngineering:mold:1>;
val hatchDynamoLV = <gregtech:gt.blockmachines:31>;
val batteryLithiumSmall = <gregtech:gt.metaitem.01:32518>;
val machineHullLV = <gregtech:gt.blockmachines:11>;
val batteryBuffer16MV = <gregtech:gt.blockmachines:192>;
val batteryAcidHV = <gregtech:gt.metaitem.01:32530>.withTag({"GT.ItemCharge": 288000 as long});
val machineCasingStainlessSteel = <gregtech:gt.blockcasings4:1>;
val machineCasingTitanium = <gregtech:gt.blockcasings4:2>;
val machineHullHV = <gregtech:gt.blockmachines:13>;
val mahcineHullEV = <gregtech:gt.blockmachines:14>;

val stickWood = <minecraft:stick>;
val redstone = <minecraft:redstone>;
val stringM = <minecraft:string>; // variable name "string" cannot be used.

val dictIngotSteel = <ore:ingotSteel>;
val dictGearsGT = getDictGearsGT();
val dictPlateSteel = <ore:plateSteel>;
val dictCircuitAdvanced = <ore:circuitAdvanced>;
val dictCircuitData = <ore:circuitData>;

val moltenSolderingAlloy = <liquid:molten.solderingalloy>;

val coilRecipes as IItemStack[][] = [
  [coilLV   , treatedStick, wireFineCopper  , wireFineCopper    ],
  [coilMV   , treatedStick, wireFineElectrum, wireFineElectrum  ],
  [coilHV   , treatedStick, wireFineSteel   , ingotAluminium    ],
  [coilHemp , stickWood   , fiberHemp       , fiberHemp         ],
  [coilSteel, stickWood   , wireFineSteel   , wireFineSteel     ]
];

val blockCoilRecipes as IItemStack[][] = [
  [blockCoilCopper  , ingotSteel, coilLV],
  [blockCoilElectrum, ingotSteel, coilMV],
  [blockCoilSteel   , ingotSteel, coilHV]
];





// --- Recipe Change ---

// Remove plate recipes
recipes.removeShapeless(plateConstantanIE);
recipes.removeShapeless(plateAluminiumIE);

// Change hammer recipe
recipes.removeShaped(hammer);
recipes.addShaped(hammer, [
  [null        , dictIngotSteel, stringM       ],
  [null        , treatedStick  , dictIngotSteel],
  [treatedStick, null          , null          ]
]);

// blast furnace
blastFurnace.removeRecipe(ingotSteelIE);
blastFurnace.removeRecipe(blockSteelIE);


for dict in getDictOresCopper() {
  for ore in dict.items {
    blastFurnace.addRecipe(ingotCopper * 3, ore, 600, slagIE);
  }
}

for dict in getDictOresIron() {
  for ore in dict.items {
    blastFurnace.addRecipe(ingotIron * 3, ore, 600, slagIE);
  }
}

for ore in getDictOresTin() {
  blastFurnace.addRecipe(ingotTin * 3, ore, 600, slagIE);
}

for ore in getDictOresCassiterite() {
  blastFurnace.addRecipe(ingotTin * 6, ore, 600, slagIE);
}

// gear mold
recipes.remove(gearMold);
for gear in dictGearsGT {
  if(gear.name.endsWith("Wood") || gear.name.endsWith("Stone")) continue;

  recipes.addShaped(gearMold, [
    [null          , dictPlateSteel, null          ],
    [dictPlateSteel, gear          , dictPlateSteel],
    [null          , dictPlateSteel, null          ]
  ]);
}

for entry in coilRecipes
  changeCoilRecipe(entry[0], entry[1], entry[2], entry[3]);

recipes.remove(thermoelectricGenerator);
recipes.addShaped(thermoelectricGenerator, [
  [plateSteel      , plateSteel      , plateSteel      ],
  [plateCupronickel, blockCoilCopper , plateCupronickel],
  [plateCupronickel, plateCupronickel, plateCupronickel]
]);

recipes.remove(dynamoKinetic);
recipes.addShaped(dynamoKinetic, [
  [redstone         , blockCoilCopper  , redstone     ],
  [ingotMagneticIron, ingotMagneticIron, hatchDynamoLV],
  [redstone         , blockCoilCopper  , redstone     ]
]);

recipes.remove(waterWheel);
recipes.addShaped(waterWheel, [
  [segment, segment   , segment],
  [segment, blockSteel, segment],
  [segment, segment   , segment]
]);

for recipe in blockCoilRecipes
  changeRecipeCenterAround(recipe[0], recipe[1], recipe[2]);

recipes.remove(thermoelectricGenerator);
recipes.addShaped(thermoelectricGenerator, [
  [plateSteel            , blockCoilElectrum  , plateSteel            ],
  [plateDoubleCupronickel, batteryLithiumSmall, plateDoubleCupronickel],
  [plateDoubleCupronickel, machineHullLV      , plateDoubleCupronickel]
]);

recipes.remove(mechanicalComponentIron);
Assembler.addRecipe(mechanicalComponentIron, plateIron*4, plateCopper, moltenSolderingAlloy * 144, 240, 24);

recipes.remove(mechanicalComponentSteel);
Assembler.addRecipe(mechanicalComponentSteel, plateSteel*4, plateCopper, moltenSolderingAlloy * 144, 240, 24);

val recipesCapacitor as IItemStack[][] = [
  [capacitorLV, batteryBuffer16MV],
  [capacitorMV, capacitorLV      ],
  [capacitorHV, capacitorMV      ]
];

for recipe in recipesCapacitor {
  recipes.remove(recipe[0]);
  recipes.addShaped(recipe[0], [
    [plateDoubleSteel  , plateDoubleSteel, plateDoubleSteel  ],
    [blockLead         , batteryAcidHV   , blockLead         ],
    [crateWoodenStorage, recipe[1]       , crateWoodenStorage]
  ]);
}

recipes.remove(engineeringBlockLight);
recipes.addShaped(engineeringBlockLight, [
  [dictCircuitAdvanced        , mechanicalComponentIron, dictCircuitAdvanced        ],
  [machineCasingStainlessSteel, machineHullHV          , machineCasingStainlessSteel],
  [dictCircuitAdvanced        , mechanicalComponentIron, dictCircuitAdvanced        ]
]);

recipes.remove(engineeringBlockHeavy);
recipes.addShaped(engineeringBlockHeavy, [
  [dictCircuitData      , mechanicalComponentSteel, dictCircuitData      ],
  [machineCasingTitanium, mahcineHullEV           , machineCasingTitanium],
  [dictCircuitData      , mechanicalComponentSteel, dictCircuitData      ]
]);





// --- functions ---

function getDictGearsGT() as IOreDictEntry[] {
  var dictGearsAll as IOreDictEntry[] = [];
  
  for entry in oreDict.entries {
    val name = entry.name;
    if(!name.startsWith("gearGt")) continue;
    
    val substring = name.substring(6);
    if(substring.startsWith("Small") || substring.startsWith("Any")) continue;
    
    dictGearsAll += entry;
  }
  
  return dictGearsAll;
}

function getDictOres(suffixes as string[]) as IOreDictEntry[] {
  val prefix = "ore";
  
  var dictOres as IOreDictEntry[] = [];
  for entry in oreDict.entries {
    val name = entry.name;
    
    if(!name.startsWith(prefix)) continue;
    
    val subString = name.substring(prefix.length());
    if(subString.startsWith("Any")) continue;
    
    for suffix in suffixes {
      if(!name.endsWith(suffix)) continue;
      
      dictOres += entry;
    }
  }
  
  return dictOres;
}

function getDictOresCopper() as IOreDictEntry[] {
  val suffixes as string[] = [
    "Malachite",
    "Chalcopyrite",
    "Copper",
    "Tetrahedrite"
  ];
  
  return getDictOres(suffixes);
}

function getDictOresIron() as IOreDictEntry[] {
  val suffixes as string[] = [
    "BrownLimonite",
    "YellowLimonite",
    "Iron",
    "Pyrite",
    "BandedIron",
  ];
  
  return getDictOres(suffixes);
}

function getDictOresTin() as IOreDictEntry[] {
  return getDictOres(["Tin"]);
}

function getDictOresCassiterite() as IOreDictEntry[] {
  return getDictOres(["Cassiterite"]);
}

function changeCoilRecipe(output as IItemStack, center as IIngredient, topBottom as IIngredient, leftRight as IIngredient) {
  recipes.remove(output);
  recipes.addShaped(output, [
    [null     , topBottom, null     ],
    [leftRight, center   , leftRight],
    [null     , topBottom, null     ]
  ]);
}

function changeRecipeCenterAround(output as IItemStack, center as IItemStack, around as IItemStack) {
  recipes.remove(output);
  addRecipeCenterAround(output, center, around);
}

function addRecipeCenterAround(output as IItemStack, center as IItemStack, around as IItemStack) {
  recipes.addShaped(output, [
    [around, around, around],
    [around, center, around],
    [around, around, around]
  ]);
}