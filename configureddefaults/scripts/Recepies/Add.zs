import crafttweaker.api.recipe.CraftingTableRecipeManager;

// modified recipe of essence of capacity (used tag instead of vanilla ender chest only)
craftingTable.addShaped(
    "essence_of_capacity", 
    <item:betterenchanting:essence_of_capacity>, 
    [
        [<item:minecraft:air>, <item:betterenchanting:infused_lapis>, <item:minecraft:air>],
        [<item:minecraft:leather_leggings>, <item:betterenchanting:magic_shard_full>, <item:minecraft:leather_leggings>],
        [<item:minecraft:gold_block>, <tag:item:c:chests/ender>, <item:minecraft:gold_block>]
    ]);

// modified recipe of abyss watcher to join the Waystones mod and the Better Enchanting mod
craftingTable.addShapeless(
    "abyss_watcher", 
    <item:fwaystones:abyss_watcher>, 
    [
        <item:betterenchanting:essence_of_sight>, <item:minecraft:ender_pearl>
    ]);

// modified recipe of explorer and nature compass to join the 2 mods with the Mythic Upgrades mod 
craftingTable.addShaped(
    "explorerscompass", 
    <item:explorerscompass:explorerscompass>, 
    [
        [<item:minecraft:amethyst_shard>, <item:fwaystones:abyss_watcher>, <item:minecraft:amethyst_shard>],
        [<tag:item:c:cobblestones/mossy>, <item:minecraft:compass>, <tag:item:c:cobblestones/mossy>],
        [<item:mythicupgrades:topaz_crystal_shard>, <item:mythicupgrades:peridot_crystal_shard>, <item:mythicupgrades:aquamarine_crystal_shard>]
    ]);

craftingTable.addShaped(
    "naturescompass", 
    <item:naturescompass:naturescompass>, 
    [
        [<item:minecraft:amethyst_shard>, <item:fwaystones:abyss_watcher>, <item:minecraft:amethyst_shard>],
        [<tag:item:minecraft:saplings>, <item:minecraft:compass>, <tag:item:minecraft:saplings>],
        [<item:mythicupgrades:topaz_crystal_shard>, <item:mythicupgrades:peridot_crystal_shard>, <item:mythicupgrades:aquamarine_crystal_shard>]
    ]);

// modified recipe of ender pouch to join the Ender Chests mod with the Waystones mod
craftingTable.addShaped(
    "enderpouch", 
    <item:enderchests:ender_pouch>, 
    [
        [<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>],
        [<item:minecraft:leather>, <item:fwaystones:abyss_watcher>, <item:minecraft:leather>],
        [<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>]
    ]);