
// removed essence recipes, found in loot chests or librarian trader.
val essences = [
    <item:betterenchanting:essence_of_protection>,
    <item:betterenchanting:essence_of_fire_protection>,
    <item:betterenchanting:essence_of_blast_protection>,
    <item:betterenchanting:essence_of_projectile_protection>,
    <item:betterenchanting:essence_of_sneak_1>,
    <item:betterenchanting:essence_of_sneak_2>,
    <item:betterenchanting:essence_of_sneak_3>,
    <item:betterenchanting:essence_of_feather>,
    <item:betterenchanting:essence_of_respiration>,
    <item:betterenchanting:essence_of_sea>,
    <item:betterenchanting:essence_of_thorn>,
    <item:betterenchanting:essence_of_ice>,
    <item:betterenchanting:essence_of_sweeping>,
    <item:betterenchanting:essence_of_sharpness>,
    <item:betterenchanting:essence_of_smite>,
    <item:betterenchanting:essence_of_arthropods>,
    <item:betterenchanting:essence_of_knockback>,
    <item:betterenchanting:essence_of_fire>,
    <item:betterenchanting:essence_of_looting>,
    <item:betterenchanting:essence_of_arrows>,
    <item:betterenchanting:essence_of_power>,
    <item:betterenchanting:essence_of_punch>,
    <item:betterenchanting:essence_of_efficiency>,
    <item:betterenchanting:essence_of_silk_touch>,
    <item:betterenchanting:essence_of_fortune>,
    <item:betterenchanting:essence_of_sea_luck>,
    <item:betterenchanting:essence_of_lure>,
    <item:betterenchanting:essence_of_experience>,
    <item:betterenchanting:essence_of_mending>,
    <item:betterenchanting:essence_of_unbreaking>,
    <item:betterenchanting:essence_of_channeling>,
    <item:betterenchanting:essence_of_impaling>,
    <item:betterenchanting:essence_of_loyalty>,
    <item:betterenchanting:essence_of_riptide>,
    <item:betterenchanting:essence_of_multishot>,
    <item:betterenchanting:essence_of_piercing>,
    <item:betterenchanting:essence_of_quick_charge>,
    <item:betterenchanting:essence_of_density>,
    <item:betterenchanting:essence_of_breach>,
    <item:betterenchanting:essence_of_wind>,
    <item:betterenchanting:essence_of_poison>,
    <item:betterenchanting:essence_of_poison_protection>,
    <item:betterenchanting:essence_of_mining>,
    <item:betterenchanting:essence_of_smelting>,
    <item:betterenchanting:essence_of_sight>,
    <item:betterenchanting:essence_of_levitation>,
    <item:betterenchanting:essence_of_foraging>,
    <item:betterenchanting:essence_of_strike>,
    <item:betterenchanting:essence_of_health>,
    <item:betterenchanting:essence_of_vampirism>,
    <item:betterenchanting:essence_of_agility>,
    <item:betterenchanting:essence_of_combat>,
    <item:betterenchanting:essence_of_building>,
    <item:betterenchanting:essence_of_fear>,
    <item:betterenchanting:essence_of_reach>,
    <item:betterenchanting:essence_of_pulling>,
    <item:betterenchanting:essence_of_food>,
    <item:betterenchanting:essence_of_photosynthesis>,
    <item:betterenchanting:essence_of_gravity>,
    <item:betterenchanting:essence_of_wings>,
    <item:betterenchanting:essence_of_capacity>,
    <item:betterenchanting:essence_of_refill>,
    <item:betterenchanting:essence_of_explosion>,
    <item:betterenchanting:essence_of_multi_roll>,
    <item:betterenchanting:essence_of_longfoot>,
    <item:betterenchanting:essence_of_critical_spell>,
    <item:betterenchanting:essence_of_energy>,
    <item:betterenchanting:essence_of_haste>,
    <item:betterenchanting:essence_of_magic_protection>,
    <item:betterenchanting:essence_of_soulfrost>,
    <item:betterenchanting:essence_of_spell_power>,
    <item:betterenchanting:essence_of_sunfire>,
    <item:betterenchanting:essence_of_spell_infinity>
];

for essence in essences
{
    craftingTable.remove(essence);
}

// change magic shard recipe
craftingTable.remove(<item:betterenchanting:magic_shard_full>);
craftingTable.addShaped(
    "betterenchanting_magic_shard_full", 
    <item:betterenchanting:magic_shard_full>, 
    [
        [<item:minecraft:air>, <item:minecraft:experience_bottle>, <item:minecraft:air>],
        [<item:minecraft:gold_ingot>, <item:betterenchanting:magic_shard_dull>, <item:minecraft:gold_ingot>],
        [<item:betterenchanting:infused_lapis>, <item:minecraft:experience_bottle>, <item:betterenchanting:infused_lapis>]
    ]);

// remove enchantment catalyst recipe
craftingTable.remove(<item:betterenchanting:enchantment_catalyst>);