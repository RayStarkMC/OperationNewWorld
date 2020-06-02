import mods.gregtech.Assembler;





// --- aliases ---
val fluxDuctLeadstone = <ThermalDynamics:ThermalDynamics_0>;
val fluxDuctHardened = <ThermalDynamics:ThermalDynamics_0:1>;

val glass = <minecraft:glass>;

val glassHardened = <ThermalExpansion:Glass>;

val plateRedAlloy = <gregtech:gt.metaitem.01:17308>;
val plateInvar = <gregtech:gt.metaitem.01:17302>;
val cableLead4x = <gregtech:gt.blockmachines:1228>;
val cableCupronickel4x = <gregtech:gt.blockmachines:1348>;




// --- recipe change ---

recipes.remove(fluxDuctLeadstone);
Assembler.addRecipe(fluxDuctLeadstone, [cableLead4x*2, glass, plateRedAlloy*6], null, 400, 24);

Assembler.addRecipe(fluxDuctHardened, [cableCupronickel4x*2, glassHardened, plateInvar*6], null, 400, 96);