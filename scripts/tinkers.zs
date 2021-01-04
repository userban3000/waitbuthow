import mods.thermalexpansion.InductionSmelter;
import mods.tconstruct.Fuel;
import mods.tconstruct.Alloy;

//hardcore-ify grout for tinkering ii
recipes.remove(<tconstruct:soil>);
furnace.remove(<tconstruct:materials>); //removes grout smelting into seared

recipes.addShaped("Hardcore Grout", <tconstruct:soil>*4, 
[[<minecraft:clay_ball>,<minecraft:sand>,<minecraft:clay_ball>],
 [<minecraft:gravel>,<ore:ingotSteel>,<minecraft:gravel>],
 [<minecraft:clay_ball>,<minecraft:sand>,<minecraft:clay_ball>]]);

mods.recipestages.Recipes.setRecipeStage("Tinkering II", <tconstruct:soil>);

mods.thermalexpansion.InductionSmelter.addRecipe(<tconstruct:materials>*4, <tconstruct:soil>*4, <thermalfoundation:material:802>, 1200);

val lava = <liquid:lava>.definition;
lava.temperature = 330;
val starlight = <liquid:astralsorcery.liquidstarlight>.definition;
starlight.temperature = 4000; //same as pyro

mods.tconstruct.Fuel.registerFuel(<liquid:pyrotheum> * 100, 300);
mods.tconstruct.Fuel.registerFuel(<liquid:astralsorcery.liquidstarlight> * 100, 300);

//unfuck thermal progression
mods.tconstruct.Alloy.removeRecipe(<liquid:electrum>);
mods.tconstruct.Alloy.removeRecipe(<liquid:signalum>);
mods.tconstruct.Alloy.removeRecipe(<liquid:enderium>);