
// removed explorer compass to add modified versions
craftingTable.remove(<item:explorerscompass:explorerscompass>);

craftingTable.addShaped(
    "explorerscompass", 
    <item:explorerscompass:explorerscompass>, 
    [
        [<item:minecraft:amethyst_shard>, <item:fwaystones:abyss_watcher>, <item:minecraft:amethyst_shard>],
        [<tag:item:c:cobblestones/mossy>, <item:minecraft:compass>, <tag:item:c:cobblestones/mossy>],
        [<item:mythicupgrades:topaz_crystal_shard>, <item:mythicupgrades:peridot_crystal_shard>, <item:mythicupgrades:aquamarine_crystal_shard>]
    ]);