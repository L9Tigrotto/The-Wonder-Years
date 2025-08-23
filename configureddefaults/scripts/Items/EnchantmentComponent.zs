#priority 100

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.IData;
import crafttweaker.api.util.math.RandomSource;
import crafttweaker.api.item.enchantment.Enchantment;

import math.Functions;
import stdlib.List;

/**
 * EnchantmentComponent Class
 * 
 * Generates random enchantment data for items based on player context including
 * luck, dimension, and item type. Different dimensions have different enchantment
 * pools and generation parameters, with luck affecting both the number and level
 * of enchantments applied.
 * 
 * Enchantment generation considers incompatible enchantments and applies
 * dimension-specific bonuses and curses based on the environment.
 * 
 * Example usage:
 *   val enchant_data = EnchantmentComponent.generateRandomEnchantmentData(item_descriptor, loot_context);
 */
public class EnchantmentComponent
{
    /**
     * Enchantment pools available in the overworld dimension
     */
    private static val OVERWORLD_ENCHANTMENT_POOLS as Enchantment[][string] = {
        "shovel": [<enchantment:minecraft:vanishing_curse>, <enchantment:minecraft:efficiency>, <enchantment:enchantplus:tools/miningplus>,
                    <enchantment:minecraft:fortune>, <enchantment:minecraft:silk_touch>, <enchantment:minecraft:unbreaking>,
                    <enchantment:enchantplus:sword/xp_boost>],
        "pickaxe": [<enchantment:minecraft:vanishing_curse>, <enchantment:minecraft:efficiency>, <enchantment:enchantplus:tools/miningplus>,
                    <enchantment:minecraft:fortune>, <enchantment:minecraft:silk_touch>, <enchantment:minecraft:unbreaking>,
                    <enchantment:enchantplus:pickaxe/vein_miner>, <enchantment:enchantplus:sword/xp_boost>],
        "axe": [<enchantment:minecraft:vanishing_curse>, <enchantment:minecraft:bane_of_arthropods>, <enchantment:minecraft:efficiency>,
                <enchantment:enchantplus:tools/miningplus>, <enchantment:minecraft:smite>, <enchantment:enchantplus:axe/timber>,
                <enchantment:minecraft:fortune>, <enchantment:nova_structures:illagers_bane>, <enchantment:minecraft:sharpness>,
                <enchantment:minecraft:silk_touch>, <enchantment:minecraft:unbreaking>, <enchantment:enchantplus:sword/xp_boost>],
        "hoe": [<enchantment:minecraft:vanishing_curse>, <enchantment:minecraft:efficiency>, <enchantment:enchantplus:tools/miningplus>,
                <enchantment:enchantplus:hoe/scyther>, <enchantment:minecraft:fortune>, <enchantment:minecraft:silk_touch>,
                <enchantment:minecraft:unbreaking>, <enchantment:enchantplus:sword/xp_boost>],
        "fishing rod": [<enchantment:minecraft:vanishing_curse>, <enchantment:minecraft:luck_of_the_sea>, <enchantment:minecraft:lure>,
                        <enchantment:minecraft:unbreaking>],
        "helmet": [<enchantment:minecraft:binding_curse>, <enchantment:minecraft:vanishing_curse>, <enchantment:minecraft:aqua_affinity>,
                    <enchantment:enchantplus:helmet/bright_vision>, <enchantment:minecraft:fire_aspect>, <enchantment:minecraft:projectile_protection>,
                    <enchantment:minecraft:respiration>, <enchantment:enchantplus:armor/venom_protection>, <enchantment:minecraft:blast_protection>,
                    <enchantment:minecraft:fire_protection>, <enchantment:enchantplus:armor/fury>, <enchantment:minecraft:protection>,
                    <enchantment:minecraft:unbreaking>, <enchantment:enchantplus:armor/lifeplus>, <enchantment:minecraft:thorns>],
        "chestplate": [<enchantment:minecraft:binding_curse>, <enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:chestplate/builder_arm>,
                    <enchantment:minecraft:projectile_protection>, <enchantment:enchantplus:armor/venom_protection>, <enchantment:minecraft:blast_protection>,
                    <enchantment:minecraft:fire_protection>, <enchantment:enchantplus:armor/fury>, <enchantment:minecraft:protection>,
                    <enchantment:minecraft:unbreaking>, <enchantment:enchantplus:armor/lifeplus>, <enchantment:minecraft:thorns>],
        "leggings": [<enchantment:minecraft:binding_curse>, <enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:leggings/oversize>,
                    <enchantment:enchantplus:leggings/dwarfed>, <enchantment:enchantplus:leggings/fast_swim>, <enchantment:minecraft:projectile_protection>,
                    <enchantment:enchantplus:armor/venom_protection>, <enchantment:minecraft:blast_protection>, <enchantment:minecraft:fire_protection>,
                    <enchantment:enchantplus:armor/fury>, <enchantment:minecraft:protection>, <enchantment:minecraft:unbreaking>,
                    <enchantment:enchantplus:armor/lifeplus>, <enchantment:minecraft:thorns>],
        "boots": [<enchantment:minecraft:binding_curse>, <enchantment:minecraft:vanishing_curse>, <enchantment:minecraft:depth_strider>,
                <enchantment:minecraft:frost_walker>, <enchantment:minecraft:projectile_protection>, <enchantment:enchantplus:boots/step_assist>,
                <enchantment:enchantplus:armor/venom_protection>, <enchantment:minecraft:blast_protection>, <enchantment:minecraft:fire_protection>,
                <enchantment:enchantplus:armor/fury>, <enchantment:minecraft:protection>, <enchantment:minecraft:unbreaking>,
                <enchantment:minecraft:feather_falling>, <enchantment:enchantplus:armor/lifeplus>, <enchantment:minecraft:thorns>],
        "shield": [<enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>, <enchantment:minecraft:knockback>,
			    <enchantment:minecraft:unbreaking>, <enchantment:minecraft:thorns>],
        "horse armor": [<enchantment:enchantplus:mounted/cavalier_egis>, <enchantment:enchantplus:mounted/ethereal_leap>],
        "horseshoes": [<enchantment:minecraft:binding_curse>, <enchantment:minecraft:vanishing_curse>, <enchantment:minecraft:projectile_protection>,
                    <enchantment:enchantplus:armor/venom_protection>, <enchantment:minecraft:blast_protection>, <enchantment:minecraft:fire_protection>,
                    <enchantment:minecraft:protection>, <enchantment:minecraft:unbreaking>, <enchantment:enchantplus:armor/lifeplus>,
                    <enchantment:minecraft:thorns>],
        "sword": [<enchantment:minecraft:vanishing_curse>, <enchantment:minecraft:bane_of_arthropods>, <enchantment:minecraft:impaling>,
                <enchantment:minecraft:knockback>, <enchantment:minecraft:smite>, <enchantment:enchantplus:sword/attack_speed>,
                <enchantment:nova_structures:illagers_bane>, <enchantment:minecraft:looting>, <enchantment:minecraft:sharpness>,
                <enchantment:minecraft:sweeping_edge>, <enchantment:minecraft:unbreaking>, <enchantment:enchantplus:sword/critical>,
                <enchantment:enchantplus:sword/xp_boost>],
        "trident": [<enchantment:minecraft:vanishing_curse>, <enchantment:minecraft:channeling>, <enchantment:enchantplus:trident/gungnir_breath>,
                    <enchantment:minecraft:bane_of_arthropods>, <enchantment:minecraft:impaling>, <enchantment:minecraft:knockback>,
                    <enchantment:minecraft:smite>, <enchantment:minecraft:looting>, <enchantment:minecraft:sharpness>,
                    <enchantment:minecraft:sweeping_edge>, <enchantment:minecraft:loyalty>, <enchantment:minecraft:riptide>,
                    <enchantment:minecraft:piercing>, <enchantment:minecraft:quick_charge>, <enchantment:minecraft:unbreaking>,
                    <enchantment:enchantplus:sword/xp_boost>],
        "bow": [<enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:bow/breezing_arrow>, <enchantment:enchantplus:bow/eternal_frost>,
                <enchantment:minecraft:flame>, <enchantment:minecraft:piercing>, <enchantment:minecraft:punch>,
                <enchantment:enchantplus:bow/rebound>, <enchantment:enchantplus:bow/storm_arrow>, <enchantment:minecraft:infinity>,
                <enchantment:minecraft:power>, <enchantment:minecraft:multishot>, <enchantment:minecraft:quick_charge>,
                <enchantment:minecraft:looting>, <enchantment:minecraft:unbreaking>, <enchantment:enchantplus:sword/xp_boost>],
        "crossbow": [<enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:bow/breezing_arrow>, <enchantment:enchantplus:bow/eternal_frost>,
                    <enchantment:minecraft:flame>, <enchantment:minecraft:piercing>, <enchantment:minecraft:punch>,
                    <enchantment:enchantplus:bow/rebound>, <enchantment:enchantplus:bow/storm_arrow>, <enchantment:minecraft:infinity>,
                    <enchantment:minecraft:power>, <enchantment:minecraft:multishot>, <enchantment:minecraft:quick_charge>,
                    <enchantment:minecraft:looting>, <enchantment:minecraft:unbreaking>, <enchantment:enchantplus:sword/xp_boost>],
    };

    /**
     * Enchantment pools available in the nether dimension (includes curse_of_breaking)
     */
    private static val NETHER_ENCHANTMENT_POOLS as Enchantment[][string] = {
        "shovel": [<enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>, <enchantment:minecraft:efficiency>,
                <enchantment:enchantplus:tools/miningplus>, <enchantment:minecraft:fortune>, <enchantment:minecraft:silk_touch>,
                <enchantment:minecraft:unbreaking>,<enchantment:enchantplus:sword/xp_boost>],
        "pickaxe": [<enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>, <enchantment:minecraft:efficiency>,
                    <enchantment:enchantplus:tools/miningplus>, <enchantment:minecraft:fortune>, <enchantment:minecraft:silk_touch>,
                    <enchantment:minecraft:unbreaking>, <enchantment:enchantplus:pickaxe/vein_miner>, <enchantment:enchantplus:sword/xp_boost>],
        "axe": [<enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>, <enchantment:minecraft:bane_of_arthropods>,
                <enchantment:minecraft:efficiency>, <enchantment:enchantplus:tools/miningplus>, <enchantment:minecraft:smite>,
                <enchantment:enchantplus:axe/timber>, <enchantment:minecraft:fortune>, <enchantment:enchantplus:durability/curse_of_breaking>,
                <enchantment:nova_structures:illagers_bane>, <enchantment:minecraft:sharpness>, <enchantment:minecraft:silk_touch>,
                <enchantment:minecraft:unbreaking>, <enchantment:enchantplus:sword/xp_boost>],
        "hoe": [<enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>, <enchantment:minecraft:efficiency>,
                <enchantment:enchantplus:tools/miningplus>, <enchantment:enchantplus:hoe/scyther>, <enchantment:minecraft:fortune>,
                <enchantment:minecraft:silk_touch>, <enchantment:minecraft:unbreaking>, <enchantment:enchantplus:sword/xp_boost>],
        "helmet": [<enchantment:minecraft:binding_curse>, <enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>,
                <enchantment:minecraft:aqua_affinity>, <enchantment:enchantplus:helmet/bright_vision>, <enchantment:minecraft:projectile_protection>,
                <enchantment:minecraft:respiration>, <enchantment:enchantplus:helmet/auto_feed>, <enchantment:minecraft:blast_protection>,
                <enchantment:minecraft:fire_protection>, <enchantment:enchantplus:armor/fury>, <enchantment:minecraft:protection>,
                <enchantment:minecraft:unbreaking>, <enchantment:enchantplus:armor/venom_protection>, <enchantment:enchantplus:armor/lifeplus>,
                <enchantment:minecraft:thorns>],
        "chestplate": [<enchantment:minecraft:binding_curse>, <enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>,
                    <enchantment:enchantplus:chestplate/builder_arm>, <enchantment:minecraft:projectile_protection>, <enchantment:minecraft:blast_protection>,
                    <enchantment:minecraft:fire_protection>, <enchantment:enchantplus:armor/fury>, <enchantment:minecraft:protection>,
                    <enchantment:minecraft:unbreaking>, <enchantment:enchantplus:armor/venom_protection>, <enchantment:enchantplus:armor/lifeplus>,
                    <enchantment:minecraft:thorns>],
        "leggings": [<enchantment:minecraft:binding_curse>, <enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:leggings/oversize>,
                    <enchantment:enchantplus:leggings/dwarfed>, <enchantment:enchantplus:durability/curse_of_breaking>, <enchantment:enchantplus:leggings/fast_swim>,
                    <enchantment:minecraft:projectile_protection>, <enchantment:minecraft:blast_protection>, <enchantment:minecraft:fire_protection>,
                    <enchantment:enchantplus:armor/fury>, <enchantment:minecraft:protection>, <enchantment:minecraft:unbreaking>,
                    <enchantment:enchantplus:armor/venom_protection>, <enchantment:enchantplus:armor/lifeplus>, <enchantment:minecraft:thorns>],
        "boots": [<enchantment:minecraft:binding_curse>, <enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>,
                <enchantment:minecraft:depth_strider>, <enchantment:minecraft:frost_walker>, <enchantment:minecraft:projectile_protection>,
                <enchantment:enchantplus:boots/step_assist>, <enchantment:minecraft:blast_protection>, <enchantment:minecraft:fire_protection>,
                <enchantment:enchantplus:armor/fury>, <enchantment:enchantplus:boots/lava_walker>, <enchantment:enchantplus:armor/lifeplus>,
                <enchantment:minecraft:protection>, <enchantment:minecraft:unbreaking>, <enchantment:enchantplus:armor/venom_protection>,
                <enchantment:minecraft:feather_falling>, <enchantment:enchantplus:armor/lifeplus>, <enchantment:minecraft:thorns>],
        "shield": [<enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>, <enchantment:minecraft:knockback>,
			    <enchantment:minecraft:unbreaking>, <enchantment:minecraft:thorns>],
        "horse armor": [<enchantment:enchantplus:mounted/cavalier_egis>, <enchantment:enchantplus:mounted/ethereal_leap>],
        "horseshoes": [<enchantment:minecraft:binding_curse>, <enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>,
                    <enchantment:minecraft:projectile_protection>, <enchantment:minecraft:blast_protection>, <enchantment:minecraft:fire_protection>,
                    <enchantment:minecraft:protection>, <enchantment:minecraft:unbreaking>, <enchantment:enchantplus:armor/venom_protection>,
                    <enchantment:enchantplus:armor/lifeplus>, <enchantment:minecraft:thorns>],
        "sword": [<enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>, <enchantment:minecraft:bane_of_arthropods>,
                <enchantment:minecraft:impaling>, <enchantment:minecraft:knockback>, <enchantment:minecraft:smite>,
                <enchantment:enchantplus:sword/attack_speed>, <enchantment:nova_structures:illagers_bane>, <enchantment:minecraft:looting>,
                <enchantment:minecraft:sharpness>, <enchantment:minecraft:sweeping_edge>, <enchantment:minecraft:unbreaking>,
                <enchantment:enchantplus:sword/critical>, <enchantment:enchantplus:sword/xp_boost>],
        "mace": [<enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>, <enchantment:minecraft:bane_of_arthropods>,
                <enchantment:minecraft:breach>, <enchantment:minecraft:density>, <enchantment:nova_structures:illagers_bane>,
                <enchantment:minecraft:smite>,<enchantment:enchantplus:mace/striker>, <enchantment:enchantplus:mace/teluric_wave>,
                <enchantment:minecraft:unbreaking>, <enchantment:minecraft:wind_burst>, <enchantment:enchantplus:mace/wind_propulsion>,
                <enchantment:enchantplus:sword/xp_boost>],
        "bow": [<enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>, <enchantment:enchantplus:bow/breezing_arrow>,
                <enchantment:enchantplus:bow/eternal_frost>, <enchantment:minecraft:flame>, <enchantment:minecraft:punch>,
				<enchantment:minecraft:piercing>, <enchantment:enchantplus:bow/rebound>, <enchantment:enchantplus:bow/storm_arrow>,
                <enchantment:enchantplus:bow/explosive_arrow>, <enchantment:minecraft:infinity>, <enchantment:minecraft:power>,
                <enchantment:minecraft:multishot>, <enchantment:minecraft:quick_charge>, <enchantment:minecraft:looting>,
				<enchantment:minecraft:unbreaking>, <enchantment:enchantplus:sword/xp_boost>],
        "crossbow": [<enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>, <enchantment:enchantplus:bow/breezing_arrow>,
                    <enchantment:enchantplus:bow/eternal_frost>, <enchantment:minecraft:flame>, <enchantment:minecraft:punch>,
                    <enchantment:minecraft:piercing>, <enchantment:enchantplus:bow/rebound>, <enchantment:enchantplus:bow/storm_arrow>,
                    <enchantment:enchantplus:bow/explosive_arrow>, <enchantment:minecraft:infinity>, <enchantment:minecraft:power>,
                    <enchantment:minecraft:multishot>, <enchantment:minecraft:quick_charge>, <enchantment:minecraft:looting>,
                    <enchantment:minecraft:unbreaking>, <enchantment:enchantplus:sword/xp_boost>],
    };

    /**
     * Enchantment pools available in the end dimension (includes both breaking and enchant curses)
     */
    private static val END_ENCHANTMENT_POOLS as Enchantment[][string] = {
        "shovel": [<enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>, <enchantment:minecraft:efficiency>,
                <enchantment:enchantplus:tools/miningplus>, <enchantment:minecraft:fortune>, <enchantment:minecraft:silk_touch>,
                <enchantment:minecraft:unbreaking>, <enchantment:enchantplus:sword/xp_boost>],
        "pickaxe": [<enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>,
                    <enchantment:minecraft:efficiency>, <enchantment:enchantplus:tools/miningplus>, <enchantment:minecraft:fortune>,
                    <enchantment:minecraft:silk_touch>, <enchantment:minecraft:unbreaking>, <enchantment:enchantplus:pickaxe/vein_miner>,
                    <enchantment:enchantplus:sword/xp_boost>],
        "axe": [<enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>,
                <enchantment:minecraft:bane_of_arthropods>, <enchantment:minecraft:efficiency>, <enchantment:enchantplus:tools/miningplus>,
                <enchantment:minecraft:smite>, <enchantment:enchantplus:axe/timber>, <enchantment:minecraft:fortune>,
                <enchantment:nova_structures:illagers_bane>, <enchantment:minecraft:sharpness>, <enchantment:minecraft:silk_touch>,
                <enchantment:minecraft:unbreaking>, <enchantment:enchantplus:sword/xp_boost>],
        "hoe": [<enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>,
                <enchantment:minecraft:efficiency>, <enchantment:enchantplus:tools/miningplus>, <enchantment:enchantplus:hoe/scyther>,
                <enchantment:minecraft:fortune>, <enchantment:minecraft:silk_touch>, <enchantment:minecraft:unbreaking>,
                <enchantment:enchantplus:sword/xp_boost>],
        "helmet": [<enchantment:minecraft:binding_curse>, <enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>,
                 <enchantment:minecraft:aqua_affinity>, <enchantment:enchantplus:helmet/bright_vision>,
                <enchantment:minecraft:projectile_protection>, <enchantment:minecraft:respiration>, <enchantment:enchantplus:helmet/auto_feed>,
                <enchantment:minecraft:blast_protection>, <enchantment:minecraft:fire_protection>, <enchantment:enchantplus:armor/fury>,
                <enchantment:minecraft:protection>, <enchantment:minecraft:unbreaking>, <enchantment:enchantplus:armor/venom_protection>,
                <enchantment:enchantplus:armor/lifeplus>, <enchantment:minecraft:thorns>, <enchantment:enchantplus:helmet/voidless>],
        "chestplate": [<enchantment:minecraft:binding_curse>, <enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>,
                    <enchantment:enchantplus:chestplate/builder_arm>, <enchantment:minecraft:projectile_protection>,
                    <enchantment:minecraft:blast_protection>, <enchantment:minecraft:fire_protection>, <enchantment:enchantplus:armor/fury>,
                    <enchantment:minecraft:protection>, <enchantment:minecraft:unbreaking>, <enchantment:enchantplus:armor/venom_protection>,
                    <enchantment:enchantplus:armor/lifeplus>, <enchantment:minecraft:thorns>],
        "leggings": [<enchantment:minecraft:binding_curse>, <enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:leggings/oversize>,
                    <enchantment:enchantplus:leggings/dwarfed>, <enchantment:enchantplus:durability/curse_of_breaking>,
                    <enchantment:enchantplus:leggings/fast_swim>, <enchantment:minecraft:projectile_protection>, <enchantment:minecraft:blast_protection>,
                    <enchantment:minecraft:fire_protection>, <enchantment:enchantplus:armor/fury>, <enchantment:minecraft:protection>,
                    <enchantment:minecraft:unbreaking>, <enchantment:enchantplus:armor/venom_protection>, <enchantment:enchantplus:armor/lifeplus>,
                    <enchantment:minecraft:thorns>],
        "boots": [<enchantment:minecraft:binding_curse>, <enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>,
                 <enchantment:minecraft:depth_strider>, <enchantment:minecraft:frost_walker>,
                <enchantment:minecraft:projectile_protection>, <enchantment:enchantplus:boots/step_assist>, <enchantment:minecraft:blast_protection>,
                <enchantment:minecraft:fire_protection>, <enchantment:enchantplus:armor/fury>, <enchantment:enchantplus:boots/lava_walker>,
                <enchantment:enchantplus:armor/lifeplus>, <enchantment:minecraft:protection>, <enchantment:minecraft:unbreaking>,
                <enchantment:enchantplus:armor/venom_protection>, <enchantment:minecraft:feather_falling>, <enchantment:enchantplus:armor/lifeplus>,
                <enchantment:minecraft:thorns>],
        "horse armor": [<enchantment:enchantplus:mounted/cavalier_egis>, <enchantment:enchantplus:mounted/ethereal_leap>],
        "horseshoes": [<enchantment:minecraft:binding_curse>, <enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>,
                     <enchantment:minecraft:projectile_protection>, <enchantment:minecraft:blast_protection>,
                    <enchantment:minecraft:fire_protection>, <enchantment:minecraft:protection>, <enchantment:minecraft:unbreaking>,
                    <enchantment:enchantplus:armor/venom_protection>, <enchantment:enchantplus:armor/lifeplus>, <enchantment:minecraft:thorns>],
        "elytra": [<enchantment:minecraft:binding_curse>, <enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>,
                 <enchantment:minecraft:unbreaking>, <enchantment:enchantplus:elytra/kinetic_protection>,
                <enchantment:nova_structures:wax_wings>],
        "sword": [<enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>,
                <enchantment:minecraft:bane_of_arthropods>, <enchantment:minecraft:impaling>, <enchantment:minecraft:knockback>,
                <enchantment:minecraft:smite>, <enchantment:enchantplus:sword/attack_speed>, <enchantment:nova_structures:illagers_bane>,
                <enchantment:minecraft:looting>, <enchantment:minecraft:sharpness>, <enchantment:minecraft:sweeping_edge>,
                <enchantment:minecraft:unbreaking>, <enchantment:enchantplus:sword/critical>, <enchantment:enchantplus:sword/reach>,
                <enchantment:enchantplus:sword/xp_boost>],
        "mace": [<enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>,
                <enchantment:minecraft:bane_of_arthropods>, <enchantment:minecraft:breach>, <enchantment:minecraft:density>,
                <enchantment:nova_structures:illagers_bane>, <enchantment:minecraft:smite>, <enchantment:enchantplus:mace/striker>,
                <enchantment:enchantplus:mace/teluric_wave>, <enchantment:minecraft:unbreaking>, <enchantment:minecraft:wind_burst>,
                <enchantment:enchantplus:mace/wind_propulsion>, <enchantment:enchantplus:sword/xp_boost>],
        "bow": [<enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>,
                <enchantment:enchantplus:bow/breezing_arrow>, <enchantment:enchantplus:bow/eternal_frost>, <enchantment:minecraft:flame>,
                <enchantment:minecraft:punch>, <enchantment:minecraft:piercing>, <enchantment:enchantplus:bow/rebound>,
                <enchantment:enchantplus:bow/storm_arrow>, <enchantment:enchantplus:bow/explosive_arrow>, <enchantment:minecraft:multishot>,
				<enchantment:minecraft:quick_charge>, <enchantment:minecraft:infinity>, <enchantment:minecraft:power>,
				<enchantment:minecraft:looting>, <enchantment:minecraft:unbreaking>, <enchantment:enchantplus:sword/xp_boost>],
        "crossbow": [<enchantment:minecraft:vanishing_curse>, <enchantment:enchantplus:durability/curse_of_breaking>,
                    <enchantment:enchantplus:bow/breezing_arrow>, <enchantment:enchantplus:bow/eternal_frost>, <enchantment:minecraft:flame>,
                    <enchantment:minecraft:punch>, <enchantment:minecraft:piercing>, <enchantment:enchantplus:bow/rebound>,
                    <enchantment:enchantplus:bow/storm_arrow>, <enchantment:enchantplus:bow/explosive_arrow>, <enchantment:minecraft:multishot>,
                    <enchantment:minecraft:quick_charge>, <enchantment:minecraft:infinity>, <enchantment:minecraft:power>,
                    <enchantment:minecraft:looting>, <enchantment:minecraft:unbreaking>, <enchantment:enchantplus:sword/xp_boost>],
    };

    /**
     * Generation parameters for each dimension including count ranges and level percentages
     */
    private static val RANGES as double[string][string] =
    {
        "overworld": {"count min": 0, "count max": 4, "max level percentage": 0.20},
        "nether": {"count min": 0, "count max": 5, "max level percentage": 0.40},
        "end": {"count min": 0, "count max": 6, "max level percentage": 0.60},
    };

    /**
     * Generates random enchantment data for an item based on player context.
     * 
     * @param item_descriptor The item descriptor containing enchantable category information
     * @param loot_context The loot context containing luck, dimension, and random source
     * @return IData containing the enchantment component data structure, or empty data if item is not enchantable
     */
    public static generateRandomEnchantmentData(item_descriptor as ItemDescriptor, loot_context as WonderLootContext) as IData
    {
        if (!item_descriptor.can_receive_enchantments)
        {
            println("[WARNING]: EnchantmentComponent received " + item_descriptor.item as string + " and is not enchantable. Returned empty data.");
            return { } as IData;
        }

        var luck = 0.0 as float;
        if (loot_context.biome == "trial_chamber") { luck = 4.0 as float; }
        else { luck = loot_context.player_luck as float; }

        var enchantments = [] as Enchantment[];
        var min_enchantment_count = 0;
        var max_enchantment_count = 0;
        var max_enchantment_level = 0.2;

        // Determine which enchantment array to use based on item type and dimension.
        // Each dimension has different pools with varying difficulty and curse presence:
        // - Overworld: Basic enchantments, no dimensional curses
        // - Nether: Adds curse_of_breaking to all pools
        // - End: Adds both curse_of_breaking and curse_of_enchant
        
        if (loot_context.dimension == "overworld")
        {
            // Select enchantment pool based on item's enchantable category
            if      (item_descriptor.can_receive_shovel_enchantments)       { enchantments = OVERWORLD_ENCHANTMENT_POOLS["shovel"]; }
            else if (item_descriptor.can_receive_pickaxe_enchantments)      { enchantments = OVERWORLD_ENCHANTMENT_POOLS["pickaxe"]; }
            else if (item_descriptor.can_receive_axe_enchantments)          { enchantments = OVERWORLD_ENCHANTMENT_POOLS["axe"]; }
            else if (item_descriptor.can_receive_hoe_enchantments)          { enchantments = OVERWORLD_ENCHANTMENT_POOLS["hoe"]; }
            else if (item_descriptor.can_receive_fishing_rod_enchantments)  { enchantments = OVERWORLD_ENCHANTMENT_POOLS["fishing rod"]; }
            else if (item_descriptor.can_receive_helmet_enchantments)       { enchantments = OVERWORLD_ENCHANTMENT_POOLS["helmet"]; }
            else if (item_descriptor.can_receive_chestplate_enchantments)   { enchantments = OVERWORLD_ENCHANTMENT_POOLS["chestplate"]; }
            else if (item_descriptor.can_receive_leggings_enchantments)     { enchantments = OVERWORLD_ENCHANTMENT_POOLS["leggings"]; }
            else if (item_descriptor.can_receive_boots_enchantments)        { enchantments = OVERWORLD_ENCHANTMENT_POOLS["boots"]; }
            else if (item_descriptor.can_receive_horse_armor_enchantments)  { enchantments = OVERWORLD_ENCHANTMENT_POOLS["horse armor"]; }
            else if (item_descriptor.can_receive_horseshoes_enchantments)   { enchantments = OVERWORLD_ENCHANTMENT_POOLS["horseshoes"]; }
            else if (item_descriptor.can_receive_shield_enchantments)       { enchantments = OVERWORLD_ENCHANTMENT_POOLS["shield"]; }
            else if (item_descriptor.can_receive_sword_enchantments)        { enchantments = OVERWORLD_ENCHANTMENT_POOLS["sword"]; }
            else if (item_descriptor.can_receive_trident_enchantments)      { enchantments = OVERWORLD_ENCHANTMENT_POOLS["trident"]; }
            else if (item_descriptor.can_receive_bow_enchantments)          { enchantments = OVERWORLD_ENCHANTMENT_POOLS["bow"]; }
            else                                                            { enchantments = OVERWORLD_ENCHANTMENT_POOLS["crossbow"]; }

            // Load overworld generation parameters (0-4 enchantments, 20% max level chance)
            min_enchantment_count = RANGES["overworld"]["count min"] as int;
            max_enchantment_count = RANGES["overworld"]["count max"] as int;
            max_enchantment_level = RANGES["overworld"]["max level percentage"];
        }
        else if (loot_context.dimension == "nether")
        {
            // Nether pools include curse_of_breaking for added difficulty
            if      (item_descriptor.can_receive_shovel_enchantments)       { enchantments = NETHER_ENCHANTMENT_POOLS["shovel"]; }
            else if (item_descriptor.can_receive_pickaxe_enchantments)      { enchantments = NETHER_ENCHANTMENT_POOLS["pickaxe"]; }
            else if (item_descriptor.can_receive_axe_enchantments)          { enchantments = NETHER_ENCHANTMENT_POOLS["axe"]; }
            else if (item_descriptor.can_receive_hoe_enchantments)          { enchantments = NETHER_ENCHANTMENT_POOLS["hoe"]; }
            else if (item_descriptor.can_receive_helmet_enchantments)       { enchantments = NETHER_ENCHANTMENT_POOLS["helmet"]; }
            else if (item_descriptor.can_receive_chestplate_enchantments)   { enchantments = NETHER_ENCHANTMENT_POOLS["chestplate"]; }
            else if (item_descriptor.can_receive_leggings_enchantments)     { enchantments = NETHER_ENCHANTMENT_POOLS["leggings"]; }
            else if (item_descriptor.can_receive_boots_enchantments)        { enchantments = NETHER_ENCHANTMENT_POOLS["boots"]; }
            else if (item_descriptor.can_receive_horse_armor_enchantments)  { enchantments = NETHER_ENCHANTMENT_POOLS["horse armor"]; }
            else if (item_descriptor.can_receive_horseshoes_enchantments)   { enchantments = NETHER_ENCHANTMENT_POOLS["horseshoes"]; }
            else if (item_descriptor.can_receive_shield_enchantments)       { enchantments = NETHER_ENCHANTMENT_POOLS["shield"]; }
            else if (item_descriptor.can_receive_sword_enchantments)        { enchantments = NETHER_ENCHANTMENT_POOLS["sword"]; }
            else if (item_descriptor.can_receive_mace_enchantments)         { enchantments = NETHER_ENCHANTMENT_POOLS["mace"]; }
            else if (item_descriptor.can_receive_bow_enchantments)          { enchantments = NETHER_ENCHANTMENT_POOLS["bow"]; }
            else                                                            { enchantments = NETHER_ENCHANTMENT_POOLS["crossbow"]; }

            // Load nether generation parameters (0-5 enchantments, 40% max level chance)
            min_enchantment_count = RANGES["nether"]["count min"] as int;
            max_enchantment_count = RANGES["nether"]["count max"] as int;
            max_enchantment_level = RANGES["nether"]["max level percentage"];
        }
        else if (loot_context.dimension == "end")
        {
            // End pools include both curse_of_breaking and curse_of_enchant for maximum difficulty
            if      (item_descriptor.can_receive_shovel_enchantments)       { enchantments = END_ENCHANTMENT_POOLS["shovel"]; }
            else if (item_descriptor.can_receive_pickaxe_enchantments)      { enchantments = END_ENCHANTMENT_POOLS["pickaxe"]; }
            else if (item_descriptor.can_receive_axe_enchantments)          { enchantments = END_ENCHANTMENT_POOLS["axe"]; }
            else if (item_descriptor.can_receive_hoe_enchantments)          { enchantments = END_ENCHANTMENT_POOLS["hoe"]; }
            else if (item_descriptor.can_receive_helmet_enchantments)       { enchantments = END_ENCHANTMENT_POOLS["helmet"]; }
            else if (item_descriptor.can_receive_chestplate_enchantments)   { enchantments = END_ENCHANTMENT_POOLS["chestplate"]; }
            else if (item_descriptor.can_receive_leggings_enchantments)     { enchantments = END_ENCHANTMENT_POOLS["leggings"]; }
            else if (item_descriptor.can_receive_boots_enchantments)        { enchantments = END_ENCHANTMENT_POOLS["boots"]; }
            else if (item_descriptor.can_receive_horse_armor_enchantments)  { enchantments = END_ENCHANTMENT_POOLS["horse armor"]; }
            else if (item_descriptor.can_receive_horseshoes_enchantments)   { enchantments = END_ENCHANTMENT_POOLS["horseshoes"]; }
            else if (item_descriptor.can_receive_elytra_enchantments)       { enchantments = END_ENCHANTMENT_POOLS["elytra"]; }
            else if (item_descriptor.can_receive_sword_enchantments)        { enchantments = END_ENCHANTMENT_POOLS["sword"]; }
            else if (item_descriptor.can_receive_mace_enchantments)         { enchantments = END_ENCHANTMENT_POOLS["mace"]; }
            else if (item_descriptor.can_receive_bow_enchantments)          { enchantments = END_ENCHANTMENT_POOLS["bow"]; }
            else                                                            { enchantments = END_ENCHANTMENT_POOLS["crossbow"]; }

            // Load end generation parameters (0-6 enchantments, 60% max level chance)
            min_enchantment_count = RANGES["end"]["count min"] as int;
            max_enchantment_count = RANGES["end"]["count max"] as int;
            max_enchantment_level = RANGES["end"]["max level percentage"];
        }
        else
        {
            println("[WARNING]: EnchantmentComponent received '" + loot_context.dimension + "' invalid dimension. Returned empty data.");
            return { } as IData;
        }

        // Use probability skewing to determine how many enchantments to apply.
        // The luck factor controls the distribution shape using a power function.
        // Calculate luck factor: higher luck = lower factor = better results
        // Examples: luck +4 → factor 0.4, luck 0 → factor 1.0, luck -2 → factor 1.3
        val luck_factor = 1.0 - luck * 0.15;
        
        // Generate skewed random value using power function
        // pow(random, luck_factor) where:
        // - luck_factor < 1.0 (good luck): pushes values toward 1.0 (more enchantments)
        // - luck_factor > 1.0 (bad luck): pushes values toward 0.0 (fewer enchantments)
        // - luck_factor = 1.0 (neutral): uniform distribution (no skewing)
        var count_roll = Functions.pow(loot_context.random.nextFloat(), luck_factor);
        
        // Map the skewed random value to the enchantment count range
        // Formula: min + (roll * (max - min)) gives proportional scaling
        var enchantment_count = min_enchantment_count + Functions.round(count_roll * (max_enchantment_count - min_enchantment_count)) as int;
        
        // Clamp to valid range (defensive programming)
        if (enchantment_count < min_enchantment_count) { enchantment_count = min_enchantment_count; } 
        else if (enchantment_count > max_enchantment_count) { enchantment_count = max_enchantment_count; }

        // Use the same luck-skewed mechanism to pick individual enchantments from the pool.
        // IMPORTANT: Enchantment arrays should be ordered from worst to best, as luck
        // affects selection index (good luck picks from end, bad luck from start).
        // Create working copy of enchantments that will shrink as we make selections
        val remaining_enchantments = enchantments as List<Enchantment>;
        var selected_enchantments = { } as IData;

        // Selection loop: continue until we have enough enchantments or run out of options
        while (enchantment_count > 0 && remaining_enchantments.length > 0)
        {
            // Generate another luck-skewed random for enchantment selection
            // This ensures consistent luck effects across both count and selection
            count_roll = Functions.pow(loot_context.random.nextFloat(), luck_factor);
            
            // Calculate index into remaining enchantments array
            // High luck → high count_roll → high index (end of array = better enchantments)
            // Low luck → low count_roll → low index (start of array = worse enchantments)
            var index = Functions.round(count_roll * (remaining_enchantments.length - 1)) as int;
            
            // Defensive clamping to array bounds
            if (index < 0) { index = 0; } 
            else if (index > (remaining_enchantments.length - 1) as int) { index = (remaining_enchantments.length - 1) as int; }

            // Select the enchantment at the calculated index
            val enchantment = remaining_enchantments[index];
            
            // Remove selected enchantment to prevent duplicates
            remaining_enchantments.remove(enchantment);

            // Remove all enchantments that conflict with the selected one.
            // This prevents impossible combinations like Silk Touch + Fortune.
            val exclusive_array = enchantment.exclusiveSet;
            for exclusive_enchantment in exclusive_array { remaining_enchantments.remove(exclusive_enchantment); }
            // Note: This shrinks the pool size, affecting probability calculations
            // in subsequent iterations (fewer options = different selection chances)

            // Determine the level of the selected enchantment based on luck.
            // Formula combines dimension-specific base chance with luck scaling.
            // Level calculation: dimension base percentage + luck scaling
            // Examples for a max level 5 enchantment:
            // - Overworld (20% base), no luck: 5 * (0.2 + 0/10) = 1.0 → level 1
            // - Nether (40% base), good luck (+4): 5 * (0.4 + 4/10) = 4.0 → level 4
            // - End (60% base), bad luck (-2): 5 * (0.6 + (-2)/10) = 2.0 → level 2
            var level = (enchantment.maxLevel * (max_enchantment_level + luck / 10.0) + 0.5) as int;
            
            // Clamp level to valid range [1, maxLevel]
            if (level < 1) { level = 1; } 
            else if (level > enchantment.maxLevel) { level = enchantment.maxLevel; }

            // Add enchantment with calculated level to final selection
            selected_enchantments.merge({enchantment.registryName as string: level} as IData);
            
            // Decrement remaining count and continue loop
            enchantment_count--;
        }

        // Return the complete enchantment component in the expected format
        return {
            enchantments: 
            {
                levels: selected_enchantments
            }
        } as IData;
    }
}