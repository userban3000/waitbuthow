var steel = <ore:ingotSteel>;

recipes.remove(<nuclearcraft:part>);

recipes.addShapedMirrored("Basic Plating", <nuclearcraft:part>,
[[steel,<ore:dustGraphite>,null],
 [<ore:dustGraphite>,steel,null],
 [null,null,null]]);