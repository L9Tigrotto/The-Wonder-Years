#priority 100

// ========================================
// Item Tag Registration for Tierable Equipment
// ========================================
// This script defines which items can be upgraded through the tiering system
// by adding them to appropriate item tags for The Wonder Years modpack

// ========================================
// ARMOR PIECES
// ========================================
// All armor pieces that can be upgraded through the tiering system
// Includes vanilla armor sets and MythicUpgrades mod armor sets
val tierable_as_armors = [
    <item:minecraft:leather_helmet>,
    <item:minecraft:leather_chestplate>,
    <item:minecraft:leather_leggings>,
    <item:minecraft:leather_boots>,
    <item:minecraft:turtle_helmet>,
    <item:minecraft:golden_helmet>,
    <item:minecraft:golden_chestplate>,
    <item:minecraft:golden_leggings>,
    <item:minecraft:golden_boots>,
    <item:minecraft:chainmail_helmet>,
    <item:minecraft:chainmail_chestplate>,
    <item:minecraft:chainmail_leggings>,
    <item:minecraft:chainmail_boots>,
    <item:minecraft:iron_helmet>,
    <item:minecraft:iron_chestplate>,
    <item:minecraft:iron_leggings>,
    <item:minecraft:iron_boots>,
    <item:minecraft:diamond_helmet>,
    <item:minecraft:diamond_chestplate>,
    <item:minecraft:diamond_leggings>,
    <item:minecraft:diamond_boots>,
    <item:minecraft:netherite_helmet>,
    <item:minecraft:netherite_chestplate>,
    <item:minecraft:netherite_leggings>,
    <item:minecraft:netherite_boots>,
    <item:mythicupgrades:topaz_helmet>,
    <item:mythicupgrades:topaz_chestplate>,
    <item:mythicupgrades:topaz_leggings>,
    <item:mythicupgrades:topaz_boots>,
    <item:mythicupgrades:peridot_helmet>,
    <item:mythicupgrades:peridot_chestplate>,
    <item:mythicupgrades:peridot_leggings>,
    <item:mythicupgrades:peridot_boots>,
    <item:mythicupgrades:aquamarine_helmet>,
    <item:mythicupgrades:aquamarine_chestplate>,
    <item:mythicupgrades:aquamarine_leggings>,
    <item:mythicupgrades:aquamarine_boots>,
    <item:mythicupgrades:ruby_helmet>,
    <item:mythicupgrades:ruby_chestplate>,
    <item:mythicupgrades:ruby_leggings>,
    <item:mythicupgrades:ruby_boots>,
    <item:mythicupgrades:sapphire_helmet>,
    <item:mythicupgrades:sapphire_chestplate>,
    <item:mythicupgrades:sapphire_leggings>,
    <item:mythicupgrades:sapphire_boots>,
    <item:mythicupgrades:jade_helmet>,
    <item:mythicupgrades:jade_chestplate>,
    <item:mythicupgrades:jade_leggings>,
    <item:mythicupgrades:jade_boots>,
    <item:mythicupgrades:ametrine_helmet>,
    <item:mythicupgrades:ametrine_chestplate>,
    <item:mythicupgrades:ametrine_leggings>,
    <item:mythicupgrades:ametrine_boots>,
];

// ========================================
// TOOLS AND UTILITY ITEMS
// ========================================
// All tools that can be upgraded (shovels, pickaxes, axes, hoes)
// Includes vanilla tool sets and MythicUpgrades mod tool sets
val tierable_as_tools = [
    <item:minecraft:wooden_shovel>,
    <item:minecraft:wooden_pickaxe>,
    <item:minecraft:wooden_axe>,
    <item:minecraft:wooden_hoe>,
    <item:minecraft:stone_shovel>,
    <item:minecraft:stone_pickaxe>,
    <item:minecraft:stone_axe>,
    <item:minecraft:stone_hoe>,
    <item:minecraft:iron_shovel>,
    <item:minecraft:iron_pickaxe>,
    <item:minecraft:iron_axe>,
    <item:minecraft:iron_hoe>,
    <item:minecraft:golden_shovel>,
    <item:minecraft:golden_pickaxe>,
    <item:minecraft:golden_axe>,
    <item:minecraft:golden_hoe>,
    <item:minecraft:diamond_shovel>,
    <item:minecraft:diamond_pickaxe>,
    <item:minecraft:diamond_axe>,
    <item:minecraft:diamond_hoe>,
    <item:minecraft:netherite_shovel>,
    <item:minecraft:netherite_pickaxe>,
    <item:minecraft:netherite_axe>,
    <item:minecraft:netherite_hoe>,
	<item:mythicupgrades:topaz_shovel>,
	<item:mythicupgrades:topaz_pickaxe>,
	<item:mythicupgrades:topaz_axe>,
	<item:mythicupgrades:topaz_hoe>,
	<item:mythicupgrades:peridot_shovel>,
	<item:mythicupgrades:peridot_pickaxe>,
	<item:mythicupgrades:peridot_axe>,
	<item:mythicupgrades:peridot_hoe>,
	<item:mythicupgrades:aquamarine_shovel>,
	<item:mythicupgrades:aquamarine_pickaxe>,
	<item:mythicupgrades:aquamarine_axe>,
	<item:mythicupgrades:aquamarine_hoe>,
	<item:mythicupgrades:ruby_shovel>,
	<item:mythicupgrades:ruby_pickaxe>,
	<item:mythicupgrades:ruby_axe>,
	<item:mythicupgrades:ruby_hoe>,
	<item:mythicupgrades:sapphire_shovel>,
	<item:mythicupgrades:sapphire_pickaxe>,
	<item:mythicupgrades:sapphire_axe>,
	<item:mythicupgrades:sapphire_hoe>,
	<item:mythicupgrades:jade_shovel>,
	<item:mythicupgrades:jade_pickaxe>,
	<item:mythicupgrades:jade_axe>,
	<item:mythicupgrades:jade_hoe>,
	<item:mythicupgrades:ametrine_shovel>,
	<item:mythicupgrades:ametrine_pickaxe>,
	<item:mythicupgrades:ametrine_axe>,
	<item:mythicupgrades:ametrine_hoe>,
];

// ========================================
// FLIGHT EQUIPMENT
// ========================================
// Items used for flight that can be tiered
val tierable_as_elytra = [
    <item:minecraft:elytra>
];

// ========================================
// FISHING EQUIPMENT
// ========================================
// Fishing tools that can be upgraded
val tierable_as_fishing_rod = [
    <item:minecraft:fishing_rod>
];

// ========================================
// MELEE WEAPONS
// ========================================
// Close combat weapons that can be upgraded (swords)
val tierable_as_melee_weapon = [
    <item:minecraft:wooden_sword>,
	<item:minecraft:stone_sword>,
	<item:minecraft:iron_sword>,
	<item:minecraft:golden_sword>,
	<item:minecraft:diamond_sword>,
	<item:minecraft:netherite_sword>,
	<item:mythicupgrades:topaz_sword>,
	<item:mythicupgrades:peridot_sword>,
	<item:mythicupgrades:aquamarine_sword>,
	<item:mythicupgrades:ruby_sword>,
	<item:mythicupgrades:sapphire_sword>,
	<item:mythicupgrades:jade_sword>,
	<item:mythicupgrades:ametrine_sword>,
];

// ========================================
// RANGED WEAPONS
// ========================================
// Projectile weapons that can be upgraded
val tierable_as_ranged_weapon = [
    <item:minecraft:bow>,
	<item:minecraft:crossbow>,
];

// ========================================
// DEFENSIVE EQUIPMENT
// ========================================
// Shields and other defensive items that can be upgraded
val tierable_as_shield = [
    <item:minecraft:shield>
];

val tierable_as_mace = [
    <item:minecraft:mace>
];

val tierable_as_trident = [
    <item:minecraft:trident>
];

// ========================================
// TAG REGISTRATION
// ========================================
// Register all items to their respective item tags for the tiering system
for item in tierable_as_armors { <tag:item:the_wonder_years:tierable/armor>.add(item); }
for item in tierable_as_tools { <tag:item:the_wonder_years:tierable/tools>.add(item); }
for item in tierable_as_elytra { <tag:item:the_wonder_years:tierable/elytra>.add(item); }
for item in tierable_as_fishing_rod { <tag:item:the_wonder_years:tierable/fishing_rod>.add(item); }
for item in tierable_as_melee_weapon { <tag:item:the_wonder_years:tierable/melee_weapon>.add(item); }
for item in tierable_as_ranged_weapon { <tag:item:the_wonder_years:tierable/ranged_weapon>.add(item); }
for item in tierable_as_shield { <tag:item:the_wonder_years:tierable/shield>.add(item); }
for item in tierable_as_mace { <tag:item:the_wonder_years:tierable/mace>.add(item); }
for item in tierable_as_trident { <tag:item:the_wonder_years:tierable/trident>.add(item); }