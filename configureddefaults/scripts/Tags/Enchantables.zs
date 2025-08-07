#priority 100

// ========================================
// ENCHANTABLE EQUIPMENT REGISTRATION SYSTEM
// ========================================
// This CraftTweaker script defines comprehensive item tag mappings for The Wonder Years modpack's
// random enchanting system for loots. Each equipment category is organized into arrays and automatically registered
// to corresponding item tags, enabling the enchanting system to recognize and apply appropriate
// enchantments to vanilla and modded equipment.

// ========================================
// EXCAVATION TOOLS - SHOVELS
// ========================================
// Defines all shovel variants that can receive digging-related enchantments
val enchantable_shovels = [
    // Vanilla Minecraft shovels
    <item:minecraft:wooden_shovel>,
    <item:minecraft:stone_shovel>,
    <item:minecraft:iron_shovel>,
    <item:minecraft:golden_shovel>,
    <item:minecraft:diamond_shovel>,
    <item:minecraft:netherite_shovel>,
    
    // MythicUpgrades gemstone shovels
    <item:mythicupgrades:ruby_shovel>,
    <item:mythicupgrades:topaz_shovel>,
    <item:mythicupgrades:peridot_shovel>,
    <item:mythicupgrades:jade_shovel>,
    <item:mythicupgrades:aquamarine_shovel>,
    <item:mythicupgrades:sapphire_shovel>,
    <item:mythicupgrades:ametrine_shovel>
];

// ========================================
// MINING TOOLS - PICKAXES
// ========================================
// Defines all pickaxe variants that can receive mining-related enchantments
val enchantable_pickaxes = [
    // Vanilla Minecraft pickaxes
    <item:minecraft:wooden_pickaxe>,
    <item:minecraft:stone_pickaxe>,
    <item:minecraft:iron_pickaxe>,
    <item:minecraft:golden_pickaxe>,
    <item:minecraft:diamond_pickaxe>,
    <item:minecraft:netherite_pickaxe>,
    
    // MythicUpgrades gemstone pickaxes
    <item:mythicupgrades:ruby_pickaxe>,
    <item:mythicupgrades:topaz_pickaxe>,
    <item:mythicupgrades:peridot_pickaxe>,
    <item:mythicupgrades:jade_pickaxe>,
    <item:mythicupgrades:aquamarine_pickaxe>,
    <item:mythicupgrades:sapphire_pickaxe>,
    <item:mythicupgrades:ametrine_pickaxe>
];

// ========================================
// WOODCUTTING TOOLS - AXES
// ========================================
// Defines all axe variants that can receive chopping and combat enchantments
val enchantable_axes = [
    // Vanilla Minecraft axes
    <item:minecraft:wooden_axe>,
    <item:minecraft:stone_axe>,
    <item:minecraft:iron_axe>,
    <item:minecraft:golden_axe>,
    <item:minecraft:diamond_axe>,
    <item:minecraft:netherite_axe>,
    
    // MythicUpgrades gemstone axes
    <item:mythicupgrades:ruby_axe>,
    <item:mythicupgrades:topaz_axe>,
    <item:mythicupgrades:peridot_axe>,
    <item:mythicupgrades:jade_axe>,
    <item:mythicupgrades:aquamarine_axe>,
    <item:mythicupgrades:sapphire_axe>,
    <item:mythicupgrades:ametrine_axe>
];

// ========================================
// FARMING TOOLS - HOES
// ========================================
// Defines all hoe variants that can receive farming-related enchantments
val enchantable_hoes = [
    // Vanilla Minecraft hoes
    <item:minecraft:wooden_hoe>,
    <item:minecraft:stone_hoe>,
    <item:minecraft:iron_hoe>,
    <item:minecraft:golden_hoe>,
    <item:minecraft:diamond_hoe>,
    <item:minecraft:netherite_hoe>,
    
    // MythicUpgrades gemstone hoes
    <item:mythicupgrades:ruby_hoe>,
    <item:mythicupgrades:topaz_hoe>,
    <item:mythicupgrades:peridot_hoe>,
    <item:mythicupgrades:jade_hoe>,
    <item:mythicupgrades:aquamarine_hoe>,
    <item:mythicupgrades:sapphire_hoe>,
    <item:mythicupgrades:ametrine_hoe>
];

// ========================================
// FISHING EQUIPMENT - RODS
// ========================================
// Defines all fishing rod variants that can receive angling enchantments
val enchantable_fishing_rods = [
    <item:minecraft:fishing_rod>
];

// ========================================
// HEAD PROTECTION - HELMETS
// ========================================
// Defines all helmet variants that can receive protective enchantments
val enchantable_helmets = [
    // Vanilla Minecraft helmets
    <item:minecraft:leather_helmet>,
    <item:minecraft:chainmail_helmet>,
    <item:minecraft:iron_helmet>,
    <item:minecraft:golden_helmet>,
    <item:minecraft:diamond_helmet>,
    <item:minecraft:netherite_helmet>,
    <item:minecraft:turtle_helmet>,
    
    // MythicUpgrades gemstone helmets
    <item:mythicupgrades:ruby_helmet>,
    <item:mythicupgrades:topaz_helmet>,
    <item:mythicupgrades:peridot_helmet>,
    <item:mythicupgrades:jade_helmet>,
    <item:mythicupgrades:aquamarine_helmet>,
    <item:mythicupgrades:sapphire_helmet>,
    <item:mythicupgrades:ametrine_helmet>
];

// ========================================
// TORSO PROTECTION - CHESTPLATES
// ========================================
// Defines all chestplate variants that can receive protective enchantments
val enchantable_chestplates = [
    // Vanilla Minecraft chestplates
    <item:minecraft:leather_chestplate>,
    <item:minecraft:chainmail_chestplate>,
    <item:minecraft:iron_chestplate>,
    <item:minecraft:golden_chestplate>,
    <item:minecraft:diamond_chestplate>,
    <item:minecraft:netherite_chestplate>,
    
    // MythicUpgrades gemstone chestplates
    <item:mythicupgrades:ruby_chestplate>,
    <item:mythicupgrades:topaz_chestplate>,
    <item:mythicupgrades:peridot_chestplate>,
    <item:mythicupgrades:jade_chestplate>,
    <item:mythicupgrades:aquamarine_chestplate>,
    <item:mythicupgrades:sapphire_chestplate>,
    <item:mythicupgrades:ametrine_chestplate>
];

// ========================================
// LEG PROTECTION - LEGGINGS
// ========================================
// Defines all leggings variants that can receive protective enchantments
val enchantable_leggings = [
    // Vanilla Minecraft leggings
    <item:minecraft:leather_leggings>,
    <item:minecraft:chainmail_leggings>,
    <item:minecraft:iron_leggings>,
    <item:minecraft:golden_leggings>,
    <item:minecraft:diamond_leggings>,
    <item:minecraft:netherite_leggings>,
    
    // MythicUpgrades gemstone leggings
    <item:mythicupgrades:ruby_leggings>,
    <item:mythicupgrades:topaz_leggings>,
    <item:mythicupgrades:peridot_leggings>,
    <item:mythicupgrades:jade_leggings>,
    <item:mythicupgrades:aquamarine_leggings>,
    <item:mythicupgrades:sapphire_leggings>,
    <item:mythicupgrades:ametrine_leggings>
];

// ========================================
// FOOT PROTECTION - BOOTS
// ========================================
// Defines all boots variants that can receive protective and mobility enchantments
val enchantable_boots = [
    // Vanilla Minecraft boots
    <item:minecraft:leather_boots>,
    <item:minecraft:chainmail_boots>,
    <item:minecraft:iron_boots>,
    <item:minecraft:golden_boots>,
    <item:minecraft:diamond_boots>,
    <item:minecraft:netherite_boots>,
    
    // MythicUpgrades gemstone boots
    <item:mythicupgrades:ruby_boots>,
    <item:mythicupgrades:topaz_boots>,
    <item:mythicupgrades:peridot_boots>,
    <item:mythicupgrades:jade_boots>,
    <item:mythicupgrades:aquamarine_boots>,
    <item:mythicupgrades:sapphire_boots>,
    <item:mythicupgrades:ametrine_boots>
];

// ========================================
// ANIMAL EQUIPMENT - HORSE ARMOR
// ========================================
// Defines all horse armor variants that can receive protective enchantments
val enchantable_horse_armor = [
    <item:minecraft:leather_horse_armor>,
    <item:minecraft:iron_horse_armor>,
    <item:minecraft:golden_horse_armor>,
    <item:minecraft:diamond_horse_armor>
];

// ========================================
// ANIMAL EQUIPMENT - HORSESHOES
// ========================================
// Defines all horseshoe variants that can receive mobility and protection enchantments
val enchantable_horseshoes = [
    <item:horseshoes:iron_horseshoes>,
    <item:horseshoes:gold_horseshoes>,
    <item:horseshoes:diamond_horseshoes>
];

// ========================================
// DEFENSIVE EQUIPMENT - SHIELDS
// ========================================
// Defines all shield variants that can receive defensive enchantments
val enchantable_shields = [
    <item:minecraft:shield>
];

// ========================================
// MELEE WEAPONS - SWORDS
// ========================================
// Defines all sword variants that can receive combat enchantments
val enchantable_swords = [
    // Vanilla Minecraft swords
    <item:minecraft:wooden_sword>,
    <item:minecraft:stone_sword>,
    <item:minecraft:iron_sword>,
    <item:minecraft:golden_sword>,
    <item:minecraft:diamond_sword>,
    <item:minecraft:netherite_sword>,
    
    // MythicUpgrades gemstone swords
    <item:mythicupgrades:ruby_sword>,
    <item:mythicupgrades:topaz_sword>,
    <item:mythicupgrades:peridot_sword>,
    <item:mythicupgrades:jade_sword>,
    <item:mythicupgrades:aquamarine_sword>,
    <item:mythicupgrades:sapphire_sword>,
    <item:mythicupgrades:ametrine_sword>
];

// ========================================
// AQUATIC WEAPONS - TRIDENTS
// ========================================
// Defines all trident variants that can receive aquatic combat enchantments
val enchantable_tridents = [
    <item:minecraft:trident>
];

// ========================================
// RANGED WEAPONS - BOWS
// ========================================
// Defines all bow variants that can receive archery enchantments
val enchantable_bows = [
    <item:minecraft:bow>
];

// ========================================
// MECHANICAL RANGED WEAPONS - CROSSBOWS
// ========================================
// Defines all crossbow variants that can receive crossbow-specific enchantments
val enchantable_crossbows = [
    <item:minecraft:crossbow>
];

// ========================================
// HEAVY MELEE WEAPONS - MACES
// ========================================
// Defines all mace variants that can receive heavy weapon enchantments
val enchantable_maces = [
    <item:minecraft:mace>
];

// ========================================
// FLIGHT EQUIPMENT - ELYTRA
// ========================================
// Defines all elytra variants that can receive flight-related enchantments
val enchantable_elytra = [
    <item:minecraft:elytra>
];

// ========================================
// AUTOMATED TAG REGISTRATION SYSTEM
// ========================================
// This section automatically registers all defined items to their corresponding
// item tags within the modpack's enchanting framework. The tags follow the pattern:
// the_wonder_years:enchantable/[equipment_type]

// Register excavation tools
for item in enchantable_shovels { <tag:item:the_wonder_years:enchantable/shovel>.add(item); }

// Register mining tools
for item in enchantable_pickaxes { <tag:item:the_wonder_years:enchantable/pickaxe>.add(item); }

// Register woodcutting tools
for item in enchantable_axes { <tag:item:the_wonder_years:enchantable/axe>.add(item); }

// Register farming tools
for item in enchantable_hoes { <tag:item:the_wonder_years:enchantable/hoe>.add(item); }

// Register fishing equipment
for item in enchantable_fishing_rods { <tag:item:the_wonder_years:enchantable/fishing_rod>.add(item); }

// Register head protection
for item in enchantable_helmets { <tag:item:the_wonder_years:enchantable/helmet>.add(item); }

// Register torso protection
for item in enchantable_chestplates { <tag:item:the_wonder_years:enchantable/chestplate>.add(item); }

// Register leg protection
for item in enchantable_leggings { <tag:item:the_wonder_years:enchantable/leggings>.add(item); }

// Register foot protection
for item in enchantable_boots { <tag:item:the_wonder_years:enchantable/boots>.add(item); }

// Register horse equipment
for item in enchantable_horse_armor { <tag:item:the_wonder_years:enchantable/horse_armor>.add(item); }
for item in enchantable_horseshoes { <tag:item:the_wonder_years:enchantable/horseshoes>.add(item); }

// Register defensive equipment
for item in enchantable_shields { <tag:item:the_wonder_years:enchantable/shield>.add(item); }

// Register melee weapons
for item in enchantable_swords { <tag:item:the_wonder_years:enchantable/sword>.add(item); }

// Register aquatic weapons
for item in enchantable_tridents { <tag:item:the_wonder_years:enchantable/trident>.add(item); }

// Register ranged weapons
for item in enchantable_bows { <tag:item:the_wonder_years:enchantable/bow>.add(item); }

// Register mechanical ranged weapons
for item in enchantable_crossbows { <tag:item:the_wonder_years:enchantable/crossbow>.add(item); }

// Register heavy melee weapons
for item in enchantable_maces { <tag:item:the_wonder_years:enchantable/mace>.add(item); }

// Register flight equipment
for item in enchantable_elytra { <tag:item:the_wonder_years:enchantable/elytra>.add(item); }