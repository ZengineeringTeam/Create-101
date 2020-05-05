import crafttweaker.api.item.IItemStack;

craftingTable.addShapeless("test", <item:minecraft:diamond>, [<item:storagedrawers:oak_full_drawers_1>.withTag({tile: {Upgrades: [], id: "storagedrawers:standard_drawers_1" as string, Drawers: [{Item: {id: "minecraft:bone_meal" as string, Count: 1, tag: {__storagedrawers_count: 128}}, Count: 513}]}})]);
craftingTable.addShapeless("test2", <item:minecraft:diamond>, [<item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:mending" as string}]})]);
craftingTable.addShapeless("test3", <item:minecraft:diamond>, [<item:minecraft:diamond_pickaxe>.withTag({RepairCost: 1, Damage: 1, Enchantments: [{lvl: 1, id: "minecraft:mending" as string}]})]);

craftingTable.addShapeless("test4", <item:minecraft:diamond>, [<item:minecraft:diamond_pickaxe>], (usualOut as IItemStack, inputs as IItemStack[]) => {
    print(1);
    if( inputs[0].damaged ){
        print(2);
        return usualOut;
    }
    return <item:minecraft:clay>;
});

craftingTable.addShapeless("shapedtest", <item:minecraft:diamond> * 9, [<item:minecraft:dirt>], (usualOut as IItemStack, inputs as IItemStack[]) => {
    print( inputs[0].displayName );
    if(inputs[0].displayName == "totally real diamond block" ){
        return usualOut;
    }
    return <item:minecraft:clay>.setDisplayName("Diamond");
});
