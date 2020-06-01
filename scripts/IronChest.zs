import minetweaker.item.IItemStack;


// --- aliases ---

val chestDirt = <IronChest:BlockIronChest:7>;
val chestCopper = <IronChest:BlockIronChest:3>;
val chestIron = <IronChest:BlockIronChest>;
val chestSilver = <IronChest:BlockIronChest:4>;
val chestGold = <IronChest:BlockIronChest:1>;
val chestDiamond = <IronChest:BlockIronChest:2>;
val chestCrystal = <IronChest:BlockIronChest:5>;
val chestObsidian = <IronChest:BlockIronChest:6>;

val upgradeIG  = <IronChest:ironGoldUpgrade>;
val upgradeGD  = <IronChest:goldDiamondUpgrade>;
val upgradeCS  = <IronChest:copperSilverUpgrade>;
val upgradeSG  = <IronChest:silverGoldUpgrade>;
val upgradeCI  = <IronChest:copperIronUpgrade>;
val upgradeDCr = <IronChest:diamondCrystalUpgrade>;
val upgradeWI  = <IronChest:woodIronUpgrade>;
val upgradeWC  = <IronChest:woodCopperUpgrade>;
val upgradeDO  = <IronChest:diamondObsidianUpgrade>;

val plateCopper = <gregtech:gt.metaitem.01:17035>;
val plateIron = <gregtech:gt.metaitem.01:17032>;
val plateSilver = <gregtech:gt.metaitem.01:17054>;
val plateGold = <IC2:itemPlates:3>;
val plateDiamond = <gregtech:gt.metaitem.01:17500>;
val lensGlass = <gregtech:gt.metaitem.01:24890>;
val obsidian9 = <miscutils:blockCompressedObsidian>;
val plateDenseSilver = <gregtech:gt.metaitem.01:22054>;


// --- recipe change ---

val chests as IItemStack[][] = [
  [chestCopper  , chestDirt   , plateCopper ],
  [chestIron    , chestCopper , plateIron   ],
  [chestSilver  , chestIron   , plateSilver ],
  [chestGold    , chestSilver , plateGold   ],
  [chestDiamond , chestGold   , plateDiamond],
  [chestCrystal , chestDiamond, lensGlass   ],
  [chestObsidian, chestDiamond, obsidian9   ]
];

for entry in chests
  changeRecipeCenterAround(entry[0], entry[1], entry[2]);

val upgrades as IItemStack[][] = [
  [upgradeIG , plateDenseSilver, plateGold   ],
  [upgradeGD , chestDirt       , plateDiamond],
  [upgradeCS , upgradeCI       , plateSilver ],
  [upgradeSG , chestDirt       , plateGold   ],
  [upgradeCI , chestDirt       , plateIron   ],
  [upgradeDCr, chestDirt       , lensGlass   ],
  [upgradeWI , upgradeWC       , plateIron   ],
  [upgradeWC , chestDirt       , plateCopper ],
  [upgradeDO , chestDirt       , obsidian9   ],
];

for entry in upgrades
  changeRecipeCenterAround(entry[0], entry[1], entry[2]);

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