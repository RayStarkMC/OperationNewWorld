import mods.gregtech.Centrifuge;





// --- aliases ---
val sand = <minecraft:sand>;
val dirt = <minecraft:dirt>;
val clay = <minecraft:clay_ball>;

val rodIron = <gregtech:gt.metaitem.01:23032>;
val mudball = <BiomesOPlenty:mudball>;
val mud = <BiomesOPlenty:mud>;
val loamyDirt = <BiomesOPlenty:newBopDirt>;
val loamyGlassDirt = <BiomesOPlenty:newBopGrass>;
val quicksand = <BiomesOPlenty:mud:1>;

val swordAmethyst = <BiomesOPlenty:swordAmethyst>;
val shovelAmethyst = <BiomesOPlenty:shovelAmethyst>;
val pickaxeAmethyst = <BiomesOPlenty:pickaxeAmethyst>;
val axeAmethyst = <BiomesOPlenty:axeAmethyst>;
val hoeAmethyst = <BiomesOPlenty:hoeAmethyst>;

val swordMud = <BiomesOPlenty:swordMud>;
val shovelMud = <BiomesOPlenty:shovelMud>;
val pickaxeMud = <BiomesOPlenty:pickaxeMud>;
val axeMud = <BiomesOPlenty:axeMud>;
val hoeMud = <BiomesOPlenty:hoeMud>;

val scytheWood = <BiomesOPlenty:scytheWood>;
val scytheStone = <BiomesOPlenty:scytheStone>;
val scytheDiamond = <BiomesOPlenty:scytheDiamond>;
val scytheMud = <BiomesOPlenty:scytheMud>;
val scytheAmethyst = <BiomesOPlenty:scytheAmethyst>;

val plantBall = <IC2:itemFuelPlantBall>;

val dictGemAmethyst = <ore:gemAmethyst>;
val dictHammer = <ore:craftingToolHardHammer>;
val dictFile = <ore:craftingToolFile>;
val dictMallet = <ore:craftingToolSoftHammer>;
val dictSaw = <ore:craftingToolSaw>;
val dictShovel = <ore:craftingToolShovel>;
val dictStick = <ore:stickWood>;
val dictPlank = <ore:plankWood>;
val dictCobblestone = <ore:cobblestone>;
val dictGemDiamond = <ore:gemDiamond>;

val liquidWater = <liquid:water>;





// --- recipe change ---

recipes.remove(swordAmethyst);
recipes.addShaped(swordAmethyst, [
  [null    , dictGemAmethyst],
  [dictFile, dictGemAmethyst],
  [null    , rodIron        ]
]);

recipes.remove(shovelAmethyst);
recipes.addShaped(shovelAmethyst, [
  [dictFile, dictGemAmethyst],
  [null    , rodIron        ],
  [null    , rodIron        ]
]);

recipes.remove(pickaxeAmethyst);
recipes.addShaped(pickaxeAmethyst, [
  [dictGemAmethyst, dictGemAmethyst, dictGemAmethyst],
  [dictFile       , rodIron        , null           ],
  [null           , rodIron        , null           ]
]);

recipes.remove(axeAmethyst);
recipes.addShaped(axeAmethyst, [
  [dictGemAmethyst, dictGemAmethyst],
  [dictGemAmethyst, rodIron        ],
  [dictFile       , rodIron        ]
]);

recipes.remove(hoeAmethyst);
recipes.addShaped(hoeAmethyst, [
  [dictGemAmethyst, dictGemAmethyst],
  [dictFile       , rodIron        ],
  [null           , rodIron        ]
]);

recipes.remove(swordMud);
recipes.addShaped(swordMud, [
  [mudball  , null      ],
  [mudball  , dictShovel],
  [dictStick, null      ]
]);

recipes.remove(shovelMud);
recipes.addShaped(shovelMud, [
  [mudball  , dictShovel],
  [dictStick, null      ],
  [dictStick, null      ]
]);

recipes.remove(pickaxeMud);
recipes.addShaped(pickaxeMud, [
  [mudball, mudball  , mudball],
  [null   , dictStick, dictShovel],
  [null   , dictStick, null]
]);

recipes.remove(axeMud);
recipes.addShaped(axeMud, [
  [mudball, mudball  , dictShovel],
  [mudball, dictStick, null      ],
  [null   , dictStick, null      ]
]);

recipes.remove(hoeMud);
recipes.addShaped(hoeMud, [
  [mudball, mudball  , dictShovel],
  [null   , dictStick, null      ],
  [null   , dictStick, null      ]
]);

recipes.remove(scytheWood);
recipes.addShaped(scytheWood, [
  [dictPlank, dictPlank, dictMallet],
  [dictStick, dictSaw  , dictPlank ],
  [dictStick, null     , null      ]
]);

recipes.remove(scytheStone);
recipes.addShaped(scytheStone, [
  [dictCobblestone, dictCobblestone, null           ],
  [dictStick      , dictFile       , dictCobblestone],
  [dictStick      , null           , null           ]
]);

recipes.remove(scytheDiamond);
recipes.addShaped(scytheDiamond, [
  [dictGemDiamond, dictGemDiamond, null          ],
  [dictStick     , dictFile      , dictGemDiamond],
  [dictStick     , null          , null          ]
]);

recipes.remove(scytheMud);
recipes.addShaped(scytheMud, [
  [mudball  , mudball, dictShovel],
  [dictStick, null   , mudball   ],
  [dictStick, null   , null      ]
]);

recipes.remove(scytheAmethyst);
recipes.addShaped(scytheAmethyst, [
  [dictGemAmethyst, dictGemAmethyst, null           ],
  [rodIron        , dictFile       , dictGemAmethyst],
  [rodIron        , null           , null           ]
]);

Centrifuge.addRecipe([sand, dirt, clay], null, loamyDirt, null, liquidWater*500, [2000, 2000, 4000], 250, 30);
Centrifuge.addRecipe([sand, dirt, clay, plantBall], null, loamyGlassDirt, null, liquidWater*500, [2000, 2000, 4000, 5000], 250, 30);
Centrifuge.addRecipe([dirt], null, mudball*4, null, liquidWater*750, [10000], 250, 30);
Centrifuge.addRecipe([dirt], null, mud, null, liquidWater*750, [10000], 250, 30);
Centrifuge.addRecipe([sand], null, quicksand, null, liquidWater*1000, [10000], 250, 30);