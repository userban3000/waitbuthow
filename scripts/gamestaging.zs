import mods.thermalexpansion.Pulverizer;

//Digital Era
//remove nc silicon
mods.jei.JEI.removeAndHide(<nuclearcraft:gem:6>);
mods.mekanism.crusher.removeRecipe(<nuclearcraft:gem:6>);
mods.nuclearcraft.manufactory.removeRecipeWithOutput([<nuclearcraft:gem:6>]);

//gate silicon
mods.ItemStages.addItemStage("Digital Era", <refinedstorage:silicon>);
mods.ItemStages.setUnfamiliarName("Melty Quartz", <refinedstorage:silicon>);

//gate iron quartz
mods.ItemStages.addItemStage("Digital Era", <refinedstorage:quartz_enriched_iron>);
mods.ItemStages.setUnfamiliarName("Brittle Iron", <refinedstorage:quartz_enriched_iron>);

//gate processor binding
mods.recipestages.Recipes.setRecipeStage("Digital Era", <refinedstorage:processor_binding>);

//unhide osmium
mods.orestages.OreStages.addReplacement("Digital Era", <mekanism:oreblock>);

//add beneath tp recip
mods.thermalexpansion.Transposer.addFillRecipe(<beneath:teleporterbeneath>, <thermalfoundation:storage_alloy:7>, <liquid:petrotheum> * 1000, 16000); //supposed to last 20secs at max upgraded
mods.ItemStages.addItemStage("Digital Era", <beneath:teleporterbeneath>);

//gate nc copper solenoid
mods.recipestages.Recipes.setRecipeStage("Digital Era", <nuclearcraft:part:4>);


//Nanobots & Simulations
//unhide iridium
mods.orestages.OreStages.addReplacement("Nanobots & Simulations", <thermalfoundation:ore:7>);

//rename hidden soot-covered redstone
mods.ItemStages.setUnfamiliarName("Sooty Redstone", <deepmoblearning:soot_covered_redstone>);
mods.recipestages.Recipes.setRecipeStage("Nanobots & Simulations", <deepmoblearning:soot_covered_redstone>);


//gate dimensional shard
mods.recipestages.Recipes.setRecipeStage("Nanobots & Simulations", <rftools:dimensional_shard>);



//Sylvan Arts
mods.recipestages.Recipes.setRecipeStage("Sylvan Arts", <naturesaura:gold_fiber>);
mods.ItemStages.addItemStage("Sylvan Arts", <roots:wildroot>);
mods.ItemStages.setUnfamiliarName("Warm Root", <roots:wildroot>);
mods.ItemStages.addItemStage("Sylvan Arts", <roots:terra_moss>);
mods.ItemStages.setUnfamiliarName("Mossy Clump", <roots:terra_moss>);
mods.ItemStages.stageModItems("Lepidopterology", "wings");



//Forged in Light, Hardened in Blood
//unhide rock crystal, aqua shale
mods.orestages.OreStages.addReplacement("Forged in Light, Hardened in Blood", <astralsorcery:blockcustomore>);
mods.orestages.OreStages.addReplacement("Forged in Light, Hardened in Blood", <astralsorcery:blockcustomsandore>, <minecraft:sand>);
//rename luminous crafting altar
//who the fuck obtains the table before aquamarine
mods.ItemStages.addItemStage("Forged in Light, Hardened in Blood", <astralsorcery:blockaltar>);
mods.ItemStages.setUnfamiliarName("Reflective Crafting Table?", <astralsorcery:blockaltar>);
mods.ItemStages.addItemStage("Forged in Light, Hardened in Blood", <bloodmagic:soul_forge>);
mods.ItemStages.setUnfamiliarName("Edgy Cauldron?", <bloodmagic:soul_forge>);
//stage recipes
mods.recipestages.Recipes.setRecipeStage("Forged in Light, Hardened in Blood", <bloodmagic:soul_snare>);



//The B-Roll
//hide rats until Pestilence is obtained
mods.MobStages.addStage("Pestilence", "rats:rat");
//unhide ebw crystal ore
mods.orestages.OreStages.addReplacement("The B-Roll", <ebwizardry:crystal_ore>);
mods.orestages.OreStages.addReplacement("The B-Roll", <ebwizardry:crystal_flower>, <minecraft:yellow_flower>);
//hide i&f passively spawning until you get the skull
mods.MobStages.addStage("Dragonry", "iceandfire:seaserpent");
mods.MobStages.addStage("Dragonry", "iceandfire:hippogryph");
mods.MobStages.addStage("Dragonry", "iceandfire:hippocampus");
mods.MobStages.addStage("Dragonry", "iceandfire:if_cockatrice");
mods.MobStages.addStage("Dragonry", "iceandfire:deathworm");
mods.MobStages.addStage("Dragonry", "iceandfire:stymphalianbird");
