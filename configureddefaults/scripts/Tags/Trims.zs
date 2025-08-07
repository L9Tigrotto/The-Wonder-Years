#priority 100

// ========================================
// Item Tag Registration for Trimmable Equipment
// ========================================
// This script defines which armor pieces and equipment can receive
// armor trims by adding them to the appropriate item tag for The Wonder Years modpack

// ========================================
// TRIMMABLE EQUIPMENT
// ========================================
// All armor pieces and equipment that can receive armor trims
// Includes vanilla armor sets, special equipment, and MythicUpgrades gemstone armor
val trimmable_equipment = [
    // Special equipment
    <item:minecraft:elytra>,
    <item:minecraft:turtle_helmet>,
    
    // Vanilla armor sets
    <item:minecraft:leather_helmet>,
    <item:minecraft:leather_chestplate>,
    <item:minecraft:leather_leggings>,
    <item:minecraft:leather_boots>,
    <item:minecraft:chainmail_helmet>,
    <item:minecraft:chainmail_chestplate>,
    <item:minecraft:chainmail_leggings>,
    <item:minecraft:chainmail_boots>,
    <item:minecraft:iron_helmet>,
    <item:minecraft:iron_chestplate>,
    <item:minecraft:iron_leggings>,
    <item:minecraft:iron_boots>,
    <item:minecraft:golden_helmet>,
    <item:minecraft:golden_chestplate>,
    <item:minecraft:golden_leggings>,
    <item:minecraft:golden_boots>,
    <item:minecraft:diamond_helmet>,
    <item:minecraft:diamond_chestplate>,
    <item:minecraft:diamond_leggings>,
    <item:minecraft:diamond_boots>,
    <item:minecraft:netherite_helmet>,
    <item:minecraft:netherite_chestplate>,
    <item:minecraft:netherite_leggings>,
    <item:minecraft:netherite_boots>,
    
    // MythicUpgrades gemstone armor
    <item:mythicupgrades:ruby_helmet>,
    <item:mythicupgrades:ruby_chestplate>,
    <item:mythicupgrades:ruby_leggings>,
    <item:mythicupgrades:ruby_boots>,
    <item:mythicupgrades:topaz_helmet>,
    <item:mythicupgrades:topaz_chestplate>,
    <item:mythicupgrades:topaz_leggings>,
    <item:mythicupgrades:topaz_boots>,
    <item:mythicupgrades:peridot_helmet>,
    <item:mythicupgrades:peridot_chestplate>,
    <item:mythicupgrades:peridot_leggings>,
    <item:mythicupgrades:peridot_boots>,
    <item:mythicupgrades:jade_helmet>,
    <item:mythicupgrades:jade_chestplate>,
    <item:mythicupgrades:jade_leggings>,
    <item:mythicupgrades:jade_boots>,
    <item:mythicupgrades:aquamarine_helmet>,
    <item:mythicupgrades:aquamarine_chestplate>,
    <item:mythicupgrades:aquamarine_leggings>,
    <item:mythicupgrades:aquamarine_boots>,
    <item:mythicupgrades:sapphire_helmet>,
    <item:mythicupgrades:sapphire_chestplate>,
    <item:mythicupgrades:sapphire_leggings>,
    <item:mythicupgrades:sapphire_boots>,
    <item:mythicupgrades:ametrine_helmet>,
    <item:mythicupgrades:ametrine_chestplate>,
    <item:mythicupgrades:ametrine_leggings>,
    <item:mythicupgrades:ametrine_boots>
];

// ========================================
// TAG REGISTRATION
// ========================================
// Register all items to the trimmable item tag for the trimming system
for item in trimmable_equipment { <tag:item:the_wonder_years:applicable/trims>.add(item); }