import crafttweaker.item.IItemStack;

var iridium = <ore:ingotIridium>;
var iridiumNugget = <ore:nuggetIridium>;
var iron = <ore:ingotIron>;

recipes.remove(<rftools:machine_frame>);
recipes.addShaped("RFTools Machine Frame", <rftools:machine_frame>, 
[[iron,iridiumNugget,iron],
 [iridiumNugget,<ore:blockGlassHardened>,iridiumNugget],
 [iron,iridiumNugget,iron]]);
 
recipes.remove(<rftools:machine_base>);
recipes.addShaped("RFTools Machine Base", <rftools:machine_base>, 
[[null,null,null],
 [iridiumNugget,iridiumNugget,iridiumNugget],
 [<ore:stone>,<ore:stone>,<ore:stone>]]);
 
val rftRemovedItems = [
 <rftools:modular_storage>,
<rftools:remote_storage>,
<rftools:matter_transmitter>,
<rftools:matter_receiver>,
<rftools:dialing_device>,
<rftools:destination_analyzer>,
<rftools:matter_booster>,
<rftools:machine_infuser>,
<rftools:powercell>,
<rftools:powercell_advanced>,
<rftools:powercell_creative>,
<rftools:powercell_simple>,
<rftools:spawner>,
<rftools:matter_beamer>,
<rftools:endergenic>,
<rftools:pearl_injector>,
<rftools:ender_monitor>,
<rftools:storage_scanner>,
<rftools:booster>,
<rftools:level_emitter>,
<rftools:syringe>] as IItemStack[];

for item in rftRemovedItems {
	mods.jei.JEI.removeAndHide(item);
}