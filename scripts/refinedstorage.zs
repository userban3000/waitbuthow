import mods.thermalexpansion.InductionSmelter;
 
//move q-e iron to ind smelter
recipes.remove(<refinedstorage:quartz_enriched_iron>);
mods.thermalexpansion.InductionSmelter.addRecipe(<refinedstorage:quartz_enriched_iron>*3,<minecraft:quartz>,<minecraft:iron_ingot>*3,1200,<refinedstorage:silicon>,15);

//move silicon to ind smelter
furnace.remove(<refinedstorage:silicon>);
mods.thermalexpansion.InductionSmelter.addRecipe(<refinedstorage:silicon>,<minecraft:sand>,<minecraft:quartz>,800);