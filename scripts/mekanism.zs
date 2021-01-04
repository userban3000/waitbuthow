//remove redundant items
import crafttweaker.item.IItemStack;

val mekRemovedItems = [
<mekanism:machineblock2:13>.withTag({mekData: {}}),
<mekanism:machineblock2:14>,
<mekanism:basicblock:6>.withTag({tier: 2}),
<mekanism:basicblock:6>.withTag({tier: 3}),
<mekanism:basicblock:6>.withTag({tier: 4}),
<mekanism:machineblock2:11>.withTag({tier: 0}),
<mekanism:machineblock2:11>.withTag({tier: 1}),
<mekanism:machineblock2:11>.withTag({tier: 2}),
<mekanism:machineblock2:11>.withTag({tier: 3}),
<mekanism:machineblock2:11>.withTag({tier: 4}),
<mekanism:basicblock:6>.withTag({tier: 0}),
<mekanism:machineblock3:1>,
<mekanism:machineblock2:15>,
<mekanism:basicblock:6>.withTag({tier: 1}),
<mekanism:machineblock3:4>.withTag({mekData: {}}),
<mekanism:machineblock3:6>,
<mekanism:energycube>.withTag({tier: 0}),
<mekanism:energycube>.withTag({tier: 1}),
<mekanism:energycube>.withTag({tier: 2}),
<mekanism:energycube>.withTag({tier: 3}),
<mekanism:energycube>.withTag({tier: 4}),
<mekanism:transmitter>.withTag({tier: 0}),
<mekanism:transmitter>.withTag({tier: 1}),
<mekanism:transmitter>.withTag({tier: 2}),
<mekanism:transmitter>.withTag({tier: 3}),
<mekanism:transmitter:1>.withTag({tier: 0}),
<mekanism:transmitter:1>.withTag({tier: 1}),
<mekanism:transmitter:1>.withTag({tier: 2}),
<mekanism:transmitter:1>.withTag({tier: 3}),
<mekanism:transmitter:3>.withTag({tier: 0}),
<mekanism:transmitter:3>.withTag({tier: 1}),
<mekanism:transmitter:3>.withTag({tier: 2}),
<mekanism:transmitter:3>.withTag({tier: 3}),
<mekanism:transmitter:4>.withTag({tier: 0}),
<mekanism:transmitter:5>.withTag({tier: 0}),
<mekanism:energycube>.withTag({tier: 0}),
<mekanism:energycube>.withTag({tier: 1}),
<mekanism:energycube>.withTag({tier: 2}),
<mekanism:energycube>.withTag({tier: 3}),
<mekanism:energycube>.withTag({tier: 4})] as IItemStack[];

for item in mekRemovedItems {
	mods.jei.JEI.removeAndHide(item);
}

val removeFactoryRecipe = [
<mekanism:machineblock:5>.withTag({recipeType: 0}),
<mekanism:machineblock:5>.withTag({recipeType: 1}),
<mekanism:machineblock:5>.withTag({recipeType: 2}),
<mekanism:machineblock:5>.withTag({recipeType: 3}),
<mekanism:machineblock:5>.withTag({recipeType: 4}),
<mekanism:machineblock:5>.withTag({recipeType: 5}),
<mekanism:machineblock:5>.withTag({recipeType: 6}),
<mekanism:machineblock:5>.withTag({recipeType: 7}),
<mekanism:machineblock:5>.withTag({recipeType: 8}),
<mekanism:machineblock:6>.withTag({recipeType: 0}),
<mekanism:machineblock:6>.withTag({recipeType: 1}),
<mekanism:machineblock:6>.withTag({recipeType: 2}),
<mekanism:machineblock:6>.withTag({recipeType: 2}),
<mekanism:machineblock:6>.withTag({recipeType: 3}),
<mekanism:machineblock:6>.withTag({recipeType: 4}),
<mekanism:machineblock:6>.withTag({recipeType: 5}),
<mekanism:machineblock:6>.withTag({recipeType: 6}),
<mekanism:machineblock:6>.withTag({recipeType: 7}),
<mekanism:machineblock:6>.withTag({recipeType: 8}),
<mekanism:machineblock:7>.withTag({recipeType: 0}),
<mekanism:machineblock:7>.withTag({recipeType: 1}),
<mekanism:machineblock:7>.withTag({recipeType: 2}),
<mekanism:machineblock:7>.withTag({recipeType: 3}),
<mekanism:machineblock:7>.withTag({recipeType: 4}),
<mekanism:machineblock:7>.withTag({recipeType: 5}),
<mekanism:machineblock:7>.withTag({recipeType: 6}),
<mekanism:machineblock:7>.withTag({recipeType: 7}),
<mekanism:machineblock:7>.withTag({recipeType: 8})] as IItemStack[];

for item in removeFactoryRecipe {
	recipes.remove(item);
}

//indmat custom recipe
var tab = <mekanism:energytablet>;
var ender = <ore:ingotEnderium>;
var signalum = <ore:ingotSignalum>;
var ic1 = <mekanism:basicblock2:3>.withTag({tier: 0});
var ic2 = <mekanism:basicblock2:3>.withTag({tier: 1});
var ic3 = <mekanism:basicblock2:3>.withTag({tier: 2});
var ic4 = <mekanism:basicblock2:3>.withTag({tier: 3});
var ip1 = <mekanism:basicblock2:4>.withTag({tier: 0});
var ip2 = <mekanism:basicblock2:4>.withTag({tier: 1});
var ip3 = <mekanism:basicblock2:4>.withTag({tier: 2});
var ip4 = <mekanism:basicblock2:4>.withTag({tier: 3});
var ccu1 = <mekanism:controlcircuit>;
var ccu2 = <mekanism:controlcircuit:1>;
var ccu3 = <mekanism:controlcircuit:2>;
var ccu4 = <mekanism:controlcircuit:3>;

recipes.remove(ic1);
recipes.addShaped("Basic Induction Cell", ic1, 
[[ender,tab,ender],
 [tab,<minecraft:redstone_block>,tab],
 [ender,tab,ender]]);

recipes.remove(ic2);
recipes.addShaped("Advanced Induction Cell", ic2, 
[[tab,ic1,tab],
 [ic1,<minecraft:redstone_block>,ic1],
 [tab,ic1,tab]]);

recipes.remove(ic3);
recipes.addShaped("Elite Induction Cell", ic3, 
[[tab,ic2,tab],
 [ic2,<minecraft:redstone_block>,ic2],
 [tab,ic2,tab]]);
 
recipes.remove(ic4);
recipes.addShaped("Ultimate Induction Cell", ic4, 
[[tab,ic3,tab],
 [ic3,<minecraft:redstone_block>,ic3],
 [tab,ic3,tab]]);

recipes.remove(ip1);
recipes.addShaped("Basic Induction Provider", ip1, 
[[ccu1,signalum,ccu1],
 [signalum,<minecraft:redstone_block>,signalum],
 [ccu1,signalum,ccu1]]);

recipes.remove(ip2);
recipes.addShaped("Advanced Induction Provider", ip2, 
[[ccu2,ip1,ccu2],
 [ip1,<minecraft:redstone_block>,ip1],
 [ccu2,ip1,ccu2]]);

recipes.remove(ip3);
recipes.addShaped("Elite Induction Provider", ip3, 
[[ccu3,ip2,ccu3],
 [ip2,<minecraft:redstone_block>,ip2],
 [ccu3,ip2,ccu3]]);

recipes.remove(ip4);
recipes.addShaped("Ultimate Induction Provider", ip4, 
[[ccu3,ip3,ccu3],
 [ip3,<minecraft:redstone_block>,ip3],
 [ccu3,ip3,ccu3]]);

//hardcore-ify factories!
var ocoil = <thermalfoundation:material:513>; // yes ik its the icoil i had a breakdown fuck off
val mekfactoryinstallers = [
<mekanism:tierinstaller>,
<mekanism:tierinstaller:1>,
<mekanism:tierinstaller:2>,
<mekanism:tierinstaller:3>] as IItemStack[];

for item in mekfactoryinstallers {
	recipes.remove(item);
}

recipes.addShaped("Basic Tier Installer", <mekanism:tierinstaller>, 
[[<minecraft:redstone>,<mekanism:controlcircuit>,ocoil],
 [<thermalfoundation:material:354>,<thermalfoundation:upgrade>,<thermalfoundation:material:354>],
 [ocoil,<mekanism:controlcircuit>,<minecraft:redstone>]]);

recipes.addShaped("Advanced Tier Installer", <mekanism:tierinstaller:1>, 
[[<mekanism:enrichedalloy>,<mekanism:controlcircuit:1>,ocoil],
 [<thermalfoundation:material:353>,<thermalfoundation:upgrade:1>,<thermalfoundation:material:353>],
 [ocoil,<mekanism:controlcircuit:1>,<mekanism:enrichedalloy>]]);

recipes.addShaped("Elite Tier Installer", <mekanism:tierinstaller:2>, 
[[<mekanism:reinforcedalloy>,<mekanism:controlcircuit:2>,ocoil],
 [<thermalfoundation:material:357>,<thermalfoundation:upgrade:2>,<thermalfoundation:material:357>],
 [ocoil,<mekanism:controlcircuit:2>,<mekanism:reinforcedalloy>]]);

recipes.addShaped("Ultimate Tier Installer", <mekanism:tierinstaller:3>, 
[[<mekanism:atomicalloy>,<mekanism:controlcircuit:3>,ocoil],
 [<thermalfoundation:material:359>,<thermalfoundation:upgrade:3>,<thermalfoundation:material:359>],
 [ocoil,<mekanism:controlcircuit:3>,<mekanism:atomicalloy>]]);

recipes.remove(<mekanism:speedupgrade>);
recipes.addShaped("Speed Upgrade", <mekanism:speedupgrade>, 
[[null,<mekanism:compressedredstone>,null],
 [<mekanism:controlcircuit>,ocoil,<mekanism:controlcircuit>],
 [null,<mekanism:ingot:1>,null]]);