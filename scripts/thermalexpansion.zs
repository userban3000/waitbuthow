import mods.nuclearcraft.alloy_furnace;
import mods.thermalexpansion.RedstoneFurnace;
import mods.thermalexpansion.Transposer;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.EnervationDynamo;


//items generally used
var frame = <thermalexpansion:frame>;
var icoil = <thermalfoundation:material:513>; //input coil
var ocoil = <thermalfoundation:material:514>;
var iocoil = <thermalfoundation:material:515>;
var redstone = <ore:dustRedstone>;


//add compactor, sawmill, fractionating still, compression dynamo, magma crucible, fluid transposer to INVAR
var invar = <ore:ingotInvar>;
var invarGear = <ore:gearInvar>;

recipes.remove(<thermalexpansion:machine:2>);
recipes.addShaped("Sawmill", <thermalexpansion:machine:2>, 
[[null,<thermalfoundation:material:657>,null],
 [<ore:plankWood>,frame,<ore:plankWood>],
 [invarGear,icoil,invarGear]]);

recipes.remove(<thermalexpansion:machine:7>);
recipes.addShaped("Fractionating Still", <thermalexpansion:machine:7>, 
[[null,<ore:gearConstantan>,null],
 [<ore:blockGlass>,frame,<ore:blockGlass>],
 [invarGear,icoil,invarGear]]);
 
recipes.remove(<thermalexpansion:machine:5>);
recipes.addShaped("Compactor", <thermalexpansion:machine:5>, 
[[null,<minecraft:piston>,null],
 [<ore:ingotBronze>,frame,<ore:ingotBronze>],
 [invarGear,icoil,invarGear]]);
 
recipes.remove(<thermalexpansion:dynamo:2>);
recipes.addShaped("Compression Dynamo", <thermalexpansion:dynamo:2>, 
[[null,ocoil,null],
 [invar,<ore:gearTin>,invar],
 [<ore:ingotTin>,redstone,<ore:ingotTin>]]);
 
recipes.remove(<thermalexpansion:machine:6>);
recipes.addShaped("Magma Crucible", <thermalexpansion:machine:6>, 
[[null,<thermalfoundation:material:1024>,null],
 [<minecraft:nether_brick>,frame,<minecraft:nether_brick>],
 [invarGear,icoil,invarGear]]);
 
recipes.remove(<thermalexpansion:machine:8>);
recipes.addShaped("Fluid Transposer", <thermalexpansion:machine:8>, 
[[null,<minecraft:bucket>,null],
 [<ore:blockGlass>,frame,<ore:blockGlass>],
 [invarGear,icoil,invarGear]]);
 

 
//remove electrum from vanilla furnace & nc alloy
var electrum = <ore:ingotElectrum>;
var electrumGear = <ore:gearElectrum>;
var electrumDust = <thermalfoundation:material:97>;
recipes.remove(<thermalfoundation:material:97>);
mods.thermalexpansion.Transposer.addFillRecipe(<thermalfoundation:material:97>*2,<thermalfoundation:material:1>,<liquid:silver> * 144,1200);
mods.thermalexpansion.Transposer.addFillRecipe(<thermalfoundation:material:97>*2,<thermalfoundation:material:66>,<liquid:gold> * 144,1200);
mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput([<thermalfoundation:material:161>*2]);

//add igneous, glacial, induction to ELECTRUM
recipes.remove(<thermalexpansion:machine:15>);
recipes.addShaped("Igneous Extruder", <thermalexpansion:machine:15>, 
[[null,<ore:blockGlass>,null],
 [invar,frame,invar],
 [electrumGear,icoil,electrumGear]]);

recipes.remove(<thermalexpansion:machine:14>);
recipes.addShaped("Glacial Precipitator", <thermalexpansion:machine:14>, 
[[null,<minecraft:piston>,null],
 [invar,frame,invar],
 [electrumGear,icoil,electrumGear]]);

recipes.remove(<thermalexpansion:machine:3>);
recipes.addShaped("Induction Smelter", <thermalexpansion:machine:3>, 
[[null,invarGear,null],
 [<minecraft:sand>,frame,<minecraft:sand>],
 [electrumGear,icoil,electrumGear]]);
 
 

//declare signalum 
var signalum = <ore:ingotSignalum>;
var signalumGear = <ore:gearSignalum>;

//add seq fab, phyto ins, energetic infuser to SIGNALUM
recipes.remove(<thermalexpansion:machine:11>);
recipes.addShaped("Sequential Fabricator", <thermalexpansion:machine:11>, 
[[null,<ore:workbench>,null],
 [<ore:ingotTin>,frame,<ore:ingotTin>],
 [signalumGear,icoil,signalumGear]]);

recipes.remove(<thermalexpansion:machine:4>);
recipes.addShaped("Phytogenic Insolator", <thermalexpansion:machine:4>, 
[[null,<ore:gearLumium>,null],
 [<ore:dirt>,frame,<ore:dirt>],
 [signalumGear,icoil,signalumGear]]);
 
recipes.remove(<thermalexpansion:machine:9>);
recipes.addShaped("Energetic Infuser", <thermalexpansion:machine:9>, 
[[null,<ore:plateElectrum>,null],
 [ocoil,frame,ocoil],
 [signalumGear,icoil,signalumGear]]);
 
//add enervation, reactant to SIGNALUM
recipes.remove(<thermalexpansion:dynamo:3>);
recipes.addShaped("Reactant Dynamo", <thermalexpansion:dynamo:3>, 
[[null,ocoil,null],
 [invar,signalumGear,invar],
 [<ore:ingotTin>,redstone,<ore:ingotTin>]]);

recipes.remove(<thermalexpansion:dynamo:4>);
recipes.addShaped("Enervation Dynamo", <thermalexpansion:dynamo:4>, 
[[null,ocoil,null],
 [invar,signalumGear,invar],
 [electrum,redstone,electrum]]);


 
//add ensorc, imb to ENDERIUM
var enderium = <ore:ingotEnderium>;
var enderiumGear = <ore:gearEnderium>;

recipes.remove(<thermalexpansion:machine:13>);
recipes.addShaped("Arcane Ensorcellator", <thermalexpansion:machine:13>, 
[[null,<minecraft:enchanting_table>,null],
 [<ore:blockLapis>,frame,<ore:blockLapis>],
 [enderiumGear,icoil,enderiumGear]]);

recipes.remove(<thermalexpansion:machine:12>);
recipes.addShaped("Alchemical Imbuer", <thermalexpansion:machine:12>, 
[[null,<minecraft:brewing_stand>,null],
 [<ore:blockGlassHardened>,frame,<ore:blockGlassHardened>],
 [enderiumGear,icoil,enderiumGear]]);
 
 
 //balance
 
//make iridium unobtainable through pulverizing platinum 
mods.thermalexpansion.Pulverizer.removeRecipe(<thermalfoundation:ore:6>); //this rmoves platinum ore pulverizing
mods.thermalexpansion.Pulverizer.addRecipe(<thermalfoundation:material:70>*2, <thermalfoundation:ore:6>, 4000); //readd with no iridium drop
 
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:866>,<thermalfoundation:ore:6>);
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:134>*3,<thermalfoundation:material:866>,<thermalfoundation:ore:6>,4000);


//remove rustic lattice overwriting with iron gear
recipes.remove(<rustic:iron_lattice>);
var iron = <minecraft:iron_ingot>;

recipes.addShaped("Iron Lattice", <rustic:iron_lattice>,
[[null,iron,null],
 [iron,null,iron],
 [null,iron,null]]);
 
 //remove redstone from enervation dynamo
 mods.thermalexpansion.EnervationDynamo.removeFuel(<minecraft:redstone>);
 mods.thermalexpansion.EnervationDynamo.removeFuel(<minecraft:redstone_block>);

 
 
 