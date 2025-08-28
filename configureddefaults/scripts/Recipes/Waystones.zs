
// change abyssal watcher ricepe
craftingTable.remove(<item:fwaystones:abyss_watcher>);
craftingTable.addShapeless(
    "fwaystones_abyss_watcher", 
    <item:fwaystones:abyss_watcher>, 
    [
        <item:minecraft:lapis_lazuli>, <item:minecraft:ender_eye>, <item:minecraft:redstone>
    ]);

// change end stone brick waystone ricepe
craftingTable.remove(<item:fwaystones:end_stone_brick_waystone>);
craftingTable.addShaped(
    "fwaystones_end_stone_brick_waystone", 
    <item:fwaystones:end_stone_brick_waystone>, 
    [
        [<item:minecraft:end_stone_bricks>, <item:fwaystones:abyss_watcher>, <item:minecraft:end_stone_bricks>],
        [<item:minecraft:end_stone_bricks>, <item:minecraft:gold_block>, <item:minecraft:end_stone_bricks>],
        [<item:minecraft:end_stone_bricks>, <item:minecraft:obsidian>, <item:minecraft:end_stone_bricks>]
    ]);

// change red nether brick waystone ricepe
craftingTable.remove(<item:fwaystones:red_nether_brick_waystone>);
craftingTable.addShaped(
    "fwaystones_red_nether_brick_waystone", 
    <item:fwaystones:red_nether_brick_waystone>, 
    [
        [<item:minecraft:red_nether_bricks>, <item:fwaystones:abyss_watcher>, <item:minecraft:red_nether_bricks>],
        [<item:minecraft:red_nether_bricks>, <item:minecraft:gold_block>, <item:minecraft:red_nether_bricks>],
        [<item:minecraft:red_nether_bricks>, <item:minecraft:obsidian>, <item:minecraft:red_nether_bricks>]
    ]);

// change red desert waystone ricepe
craftingTable.remove(<item:fwaystones:red_desert_waystone>);
craftingTable.addShaped(
    "fwaystones_red_desert_waystone", 
    <item:fwaystones:red_desert_waystone>, 
    [
        [<tag:item:c:sandstone/red_blocks>, <item:fwaystones:abyss_watcher>, <tag:item:c:sandstone/red_blocks>],
        [<tag:item:c:sandstone/red_blocks>, <item:minecraft:gold_block>, <tag:item:c:sandstone/red_blocks>],
        [<tag:item:c:sandstone/red_blocks>, <item:minecraft:obsidian>, <tag:item:c:sandstone/red_blocks>]
    ]);

// change desert waystone ricepe
craftingTable.remove(<item:fwaystones:desert_waystone>);
craftingTable.addShaped(
    "fwaystones_desert_waystone", 
    <item:fwaystones:desert_waystone>, 
    [
        [<tag:item:c:sandstone/uncolored_blocks>, <item:fwaystones:abyss_watcher>, <tag:item:c:sandstone/uncolored_blocks>],
        [<tag:item:c:sandstone/uncolored_blocks>, <item:minecraft:gold_block>, <tag:item:c:sandstone/uncolored_blocks>],
        [<tag:item:c:sandstone/uncolored_blocks>, <item:minecraft:obsidian>, <tag:item:c:sandstone/uncolored_blocks>]
    ]);

// change waystone ricepe
craftingTable.remove(<item:fwaystones:waystone>);
craftingTable.addShaped(
    "fwaystones_waystone", 
    <item:fwaystones:waystone>, 
    [
        [<item:minecraft:stone>, <item:fwaystones:abyss_watcher>, <item:minecraft:stone>],
        [<item:minecraft:stone>, <item:minecraft:gold_block>, <item:minecraft:stone>],
        [<item:minecraft:stone>, <item:minecraft:obsidian>, <item:minecraft:stone>]
    ]);

// change stone brick waystone ricepe
craftingTable.remove(<item:fwaystones:stone_brick_waystone>);
craftingTable.addShaped(
    "fwaystones_stone_brick_waystone", 
    <item:fwaystones:stone_brick_waystone>, 
    [
        [<tag:item:minecraft:stone_bricks>, <item:fwaystones:abyss_watcher>, <tag:item:minecraft:stone_bricks>],
        [<tag:item:minecraft:stone_bricks>, <item:minecraft:gold_block>, <tag:item:minecraft:stone_bricks>],
        [<tag:item:minecraft:stone_bricks>, <item:minecraft:obsidian>, <tag:item:minecraft:stone_bricks>]
    ]);

// change deepslate brick waystone ricepe
craftingTable.remove(<item:fwaystones:deepslate_brick_waystone>);
craftingTable.addShaped(
    "fwaystones_deepslate_brick_waystone", 
    <item:fwaystones:deepslate_brick_waystone>, 
    [
        [<tag:item:fwaystones:deepslate_bricks>, <item:fwaystones:abyss_watcher>, <tag:item:fwaystones:deepslate_bricks>],
        [<tag:item:fwaystones:deepslate_bricks>, <item:minecraft:gold_block>, <tag:item:fwaystones:deepslate_bricks>],
        [<tag:item:fwaystones:deepslate_bricks>, <item:minecraft:obsidian>, <tag:item:fwaystones:deepslate_bricks>]
    ]);

// change nether brick waystone ricepe
craftingTable.remove(<item:fwaystones:nether_brick_waystone>);
craftingTable.addShaped(
    "fwaystones_nether_brick_waystone", 
    <item:fwaystones:nether_brick_waystone>, 
    [
        [<tag:item:fwaystones:nether_bricks>, <item:fwaystones:abyss_watcher>, <tag:item:fwaystones:nether_bricks>],
        [<tag:item:fwaystones:nether_bricks>, <item:minecraft:gold_block>, <tag:item:fwaystones:nether_bricks>],
        [<tag:item:fwaystones:nether_bricks>, <item:minecraft:obsidian>, <tag:item:fwaystones:nether_bricks>]
    ]);