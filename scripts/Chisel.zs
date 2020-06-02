import mods.gregtech.Pulverizer;
import mods.gregtech.ForgeHammer;



// --- aliases ---

val granite = <chisel:granite>;
val diorite = <chisel:diorite>;

val redGraniteCobblestone = <gregtech:gt.blockgranites:9>;
val dustCertusQuartz = <gregtech:gt.metaitem.01:2516>;
val dustPotassiumFeldsper = <gregtech:gt.metaitem.01:2847>;
val dustSiliconDioxide = <gregtech:gt.metaitem.01:2837>;
val dustBiotite = <gregtech:gt.metaitem.01:2848>;





// --- recipe change ---

ForgeHammer.addRecipe(redGraniteCobblestone, granite, 16, 10);
Pulverizer.addRecipe([dustSiliconDioxide, dustCertusQuartz, dustPotassiumFeldsper, dustBiotite], diorite, [10000, 2000, 1000, 1000], 400, 2);