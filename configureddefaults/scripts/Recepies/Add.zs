import crafttweaker.api.recipe.CraftingTableRecipeManager;

// ender chest
craftingTable.addShaped(
    "essence_of_capacity", 
    <item:betterenchanting:essence_of_capacity>, 
    [
        [<item:minecraft:air>, <item:betterenchanting:infused_lapis>, <item:minecraft:air>],
        [<item:minecraft:leather_leggings>, <item:betterenchanting:magic_shard_full>, <item:minecraft:leather_leggings>],
        [<item:minecraft:gold_block>, <tag:item:c:chests/ender>, <item:minecraft:gold_block>]
    ]);

// waystone
craftingTable.addShapeless(
    "abyss_watcher", 
    <item:fwaystones:abyss_watcher>, 
    [
        <item:betterenchanting:essence_of_sight>, <item:minecraft:ender_pearl>
    ]);

// explorer and nature compass

<tag:item:mythicupgrades:overworld_crystals>.add(<item:mythicupgrades:topaz_crystal_shard>);
<tag:item:mythicupgrades:overworld_crystals>.add(<item:mythicupgrades:peridot_crystal_shard>);
<tag:item:mythicupgrades:overworld_crystals>.add(<item:mythicupgrades:aquamarine_crystal_shard>);

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
