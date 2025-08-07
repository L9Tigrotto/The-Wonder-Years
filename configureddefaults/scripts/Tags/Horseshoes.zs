#priority 100

// ========================================
// Horseshoes Tag Exclusion System
// ========================================
// This script removes horseshoes from the vanilla foot armor enchantment tag
// in vafour of Neo Enchantment Plus's Ethereal Leap enchantment.

// ========================================
// HORSESHOES EQUIPMENT
// ========================================
// All horseshoe variants that need to be excluded from vanilla foot armor enchantments
// This prevents Feather Falling from being applied
val horseshoes_equipment = [
    <item:horseshoes:iron_horseshoes>,
    <item:horseshoes:gold_horseshoes>,
    <item:horseshoes:diamond_horseshoes>
];

// ========================================
// TAG EXCLUSION
// ========================================

for item in horseshoes_equipment { <tag:item:minecraft:enchantable/foot_armor>.remove(item); }