import mods.gregtech.Assembler;

// --- aliases ---

val stoneWand = <betterbuilderswands:wandStone>;
val ironWand = <betterbuilderswands:wandIron>;
val diamondWand = <betterbuilderswands:wandDiamond>;
val wand16 = <betterbuilderswands:wandUnbreakable:4>;
val wand32 = <betterbuilderswands:wandUnbreakable:5>;
val wand64 = <betterbuilderswands:wandUnbreakable:6>;
val wand4096 = <betterbuilderswands:wandUnbreakable:12>;
val wand8192 = <betterbuilderswands:wandUnbreakable:13>;
val wand16384 = <betterbuilderswands:wandUnbreakable:14>;

val exuWand = <ExtraUtilities:builderswand>;
val exuSuperWand = <ExtraUtilities:creativebuilderswand>;

val treatedStick = <ImmersiveEngineering:material>;
val sealedStick = <gregtech:gt.metaitem.01:23889>;
val implegnatedStick = <Forestry:oakStick>;

val cobblestone81 = <ExtraUtilities:cobblestone_compressed:1>;
val dictBlockIron = <ore:blockIron>;
val dictBlockDiamond = <ore:blockDiamond>;
val dictIngotUnstable = <ore:ingotUnstable>;
val dictblockUnstable = <ore:blockUnstable>;

val dictWrench = <ore:craftingToolWrench>;
val dictDriver = <ore:craftingToolScrewdriver>;
val dictHammer = <ore:craftingToolHardHammer>;
val dictFile = <ore:craftingToolFile>;


// --- recipe change ---
recipes.remove(stoneWand);
recipes.addShaped(stoneWand, [
  [dictHammer  , dictWrench  , cobblestone81],
  [null        , treatedStick, dictDriver   ],
  [treatedStick, null        , dictFile     ]
]);

recipes.remove(ironWand);
recipes.addShaped(ironWand, [
  [dictHammer , dictWrench , dictBlockIron],
  [stoneWand  , sealedStick, dictDriver   ],
  [sealedStick, stoneWand  , dictFile     ]
]);

recipes.remove(diamondWand);
recipes.addShaped(diamondWand, [
  [dictHammer      , dictWrench      , dictBlockDiamond],
  [ironWand        , implegnatedStick, dictDriver      ],
  [implegnatedStick, ironWand        , dictFile        ]
]);