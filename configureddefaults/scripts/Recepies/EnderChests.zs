
// disable vanilla ender chest
craftingTable.remove(<item:minecraft:ender_chest>);

// removed ender pouch recipe to add modified versions
craftingTable.remove(<item:enderchests:ender_pouch>);

craftingTable.addShaped(
    "enderpouch", 
    <item:enderchests:ender_pouch>, 
    [
        [<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>],
        [<item:minecraft:leather>, <item:fwaystones:abyss_watcher>, <item:minecraft:leather>],
        [<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>]
    ]);