import mods.gregtech.ChemicalReactor;

// --- aliases ---

val mirror = <SolarFlux:mirror>;
val plateGlass = <gregtech:gt.metaitem.01:17890>;
val plateAluminium = <gregtech:gt.metaitem.01:17019>;
val plateSteel = <gregtech:gt.metaitem.01:17305>;
val dictCircuitGood = <ore:circuitGood>;

val solar1 = <SolarFlux:solar1>;

val moltenSilver = <liquid:molten.silver>;


// --- recipe change ---

recipes.remove(mirror);
ChemicalReactor.addRecipe(mirror, null, null, plateGlass * 3, plateAluminium, moltenSilver * 432, 200, 120);

recipes.remove(solar1);
recipes.addShaped(solar1, [
  [mirror    , mirror         , mirror    ],
  [plateSteel, dictCircuitGood, plateSteel],
  [plateSteel, plateSteel     , plateSteel]
]);