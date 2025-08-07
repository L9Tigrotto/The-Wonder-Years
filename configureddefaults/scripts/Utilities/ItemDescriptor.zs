#priority 100

import crafttweaker.api.item.IItemStack;

/**
 * ItemDescriptor Class
 * 
 * A wrapper class that provides boolean properties to determine if an item
 * belongs to various tierable and enchantable categories. This class caches
 * tag lookup results during construction to provide efficient O(1) access
 * to item classification information.
 * 
 * The class eliminates repetitive tag checking throughout the codebase by
 * pre-computing all category memberships during instantiation.
 * 
 * Example usage:
 *   val descriptor = new ItemDescriptor(<item:minecraft:diamond_sword>);
 *   if (descriptor.can_receive_sword_enchantments) { ... }
 *   if (descriptor.can_tier_as_melee_weapon) { ... }
 *   if (descriptor.is_trimmable) { ... }
 */
public class ItemDescriptor
{
    /**
     * The wrapped ItemStack instance that this descriptor represents
     */
    public val item as IItemStack : get;

    // ========================================
    // Tierable Category Properties
    // ========================================
    
    /**
     * Returns true if this item can be tiered as armor through the tiering system.
     */
    public val can_tier_as_armor as bool : get;
    
    /**
     * Returns true if this item can be tiered as a tool through the tiering system.
     */
    public val can_tier_as_tool as bool : get;
    
    /**
     * Returns true if this item can be tiered as elytra through the tiering system.
     */
    public val can_tier_as_elytra as bool : get;
    
    /**
     * Returns true if this item can be tiered as a fishing rod through the tiering system.
     */
    public val can_tier_as_fishing_rod as bool : get;
    
    /**
     * Returns true if this item can be tiered as a melee weapon through the tiering system.
     */
    public val can_tier_as_melee_weapon as bool : get;
    
    /**
     * Returns true if this item can be tiered as a ranged weapon through the tiering system.
     */
    public val can_tier_as_ranged_weapon as bool : get;
    
    /**
     * Returns true if this item can be tiered as a shield through the tiering system.
     */
    public val can_tier_as_shield as bool : get;

    // ========================================
    // Enchantable Category Properties
    // ========================================

    /**
     * Returns true if this item can receive shovel enchantments.
     */
    public val can_receive_shovel_enchantments as bool : get;
    
    /**
     * Returns true if this item can receive pickaxe enchantments.
     */
    public val can_receive_pickaxe_enchantments as bool : get;
    
    /**
     * Returns true if this item can receive axe enchantments.
     */
    public val can_receive_axe_enchantments as bool : get;
    
    /**
     * Returns true if this item can receive hoe enchantments.
     */
    public val can_receive_hoe_enchantments as bool : get;
    
    /**
     * Returns true if this item can receive fishing rod enchantments.
     */
    public val can_receive_fishing_rod_enchantments as bool : get;
    
    /**
     * Returns true if this item can receive helmet enchantments.
     */
    public val can_receive_helmet_enchantments as bool : get;
    
    /**
     * Returns true if this item can receive chestplate enchantments.
     */
    public val can_receive_chestplate_enchantments as bool : get;
    
    /**
     * Returns true if this item can receive leggings enchantments.
     */
    public val can_receive_leggings_enchantments as bool : get;
    
    /**
     * Returns true if this item can receive boots enchantments.
     */
    public val can_receive_boots_enchantments as bool : get;

    /**
     * Returns true if this item can receive horse armor enchantments.
     */
    public val can_receive_horse_armor_enchantments as bool : get;
    
    /**
     * Returns true if this item can receive horseshoes enchantments.
     */
    public val can_receive_horseshoes_enchantments as bool : get;
    
    /**
     * Returns true if this item can receive shield enchantments.
     */
    public val can_receive_shield_enchantments as bool : get;
    
    /**
     * Returns true if this item can receive sword enchantments.
     */
    public val can_receive_sword_enchantments as bool : get;
    
    /**
     * Returns true if this item can receive trident enchantments.
     */
    public val can_receive_trident_enchantments as bool : get;
    
    /**
     * Returns true if this item can receive bow enchantments.
     */
    public val can_receive_bow_enchantments as bool : get;
    
    /**
     * Returns true if this item can receive crossbow enchantments.
     */
    public val can_receive_crossbow_enchantments as bool : get;
    
    /**
     * Returns true if this item can receive mace enchantments.
     */
    public val can_receive_mace_enchantments as bool : get;
    
    /**
     * Returns true if this item can receive elytra enchantments.
     */
    public val can_receive_elytra_enchantments as bool : get;

    // ========================================
    // Trimmable Category Properties
    // ========================================

    /**
     * Returns true if this item can receive armor trims.
     */
    public val can_apply_trims as bool : get;

    /**
     * Returns true if this item can apply banner.
     */
    public val can_apply_banner as bool : get;

    /**
     * Returns true if this item can be tiered through any tiering category.
     */
    public val can_be_tiered as bool : get;
    
    /**
     * Returns true if this item can receive enchantments from any enchantment category.
     */
    public val can_receive_enchantments as bool : get;

    /**
     * Constructor - Creates a new ItemDescriptor for the given ItemStack.
     * Performs one-time tag lookups to cache all category memberships for
     * efficient access during the descriptor's lifetime.
     * 
     * @param item_stack The ItemStack to wrap and analyze
     */
    public this(item_stack as IItemStack)
	{
        // Store the wrapped item reference
		this.item = item_stack;

        // Optimized tierable category lookups (each item belongs to exactly one category)
        var found_tier_category = false;
        
        this.can_tier_as_armor = !found_tier_category && <tag:item:the_wonder_years:tierable/armor>.contains(item_stack);
        found_tier_category = found_tier_category || this.can_tier_as_armor;
        
        this.can_tier_as_tool = !found_tier_category && <tag:item:the_wonder_years:tierable/tools>.contains(item_stack);
        found_tier_category = found_tier_category || this.can_tier_as_tool;
        
        this.can_tier_as_elytra = !found_tier_category && <tag:item:the_wonder_years:tierable/elytra>.contains(item_stack);
        found_tier_category = found_tier_category || this.can_tier_as_elytra;
        
        this.can_tier_as_fishing_rod = !found_tier_category && <tag:item:the_wonder_years:tierable/fishing_rod>.contains(item_stack);
        found_tier_category = found_tier_category || this.can_tier_as_fishing_rod;
        
        this.can_tier_as_melee_weapon = !found_tier_category && <tag:item:the_wonder_years:tierable/melee_weapon>.contains(item_stack);
        found_tier_category = found_tier_category || this.can_tier_as_melee_weapon;
        
        this.can_tier_as_ranged_weapon = !found_tier_category && <tag:item:the_wonder_years:tierable/ranged_weapon>.contains(item_stack);
        found_tier_category = found_tier_category || this.can_tier_as_ranged_weapon;
        
        this.can_tier_as_shield = !found_tier_category && <tag:item:the_wonder_years:tierable/shield>.contains(item_stack);
        found_tier_category = found_tier_category || this.can_tier_as_shield;

        this.can_be_tiered = found_tier_category;
        
        // Optimized enchantable category lookups (each item belongs to exactly one category)
        var found_enchant_category = false;
        
        this.can_receive_shovel_enchantments = !found_enchant_category && <tag:item:the_wonder_years:enchantable/shovel>.contains(item_stack);
        found_enchant_category = found_enchant_category || this.can_receive_shovel_enchantments;
        
        this.can_receive_pickaxe_enchantments = !found_enchant_category && <tag:item:the_wonder_years:enchantable/pickaxe>.contains(item_stack);
        found_enchant_category = found_enchant_category || this.can_receive_pickaxe_enchantments;
        
        this.can_receive_axe_enchantments = !found_enchant_category && <tag:item:the_wonder_years:enchantable/axe>.contains(item_stack);
        found_enchant_category = found_enchant_category || this.can_receive_axe_enchantments;
        
        this.can_receive_hoe_enchantments = !found_enchant_category && <tag:item:the_wonder_years:enchantable/hoe>.contains(item_stack);
        found_enchant_category = found_enchant_category || this.can_receive_hoe_enchantments;
        
        this.can_receive_fishing_rod_enchantments = !found_enchant_category && <tag:item:the_wonder_years:enchantable/fishing_rod>.contains(item_stack);
        found_enchant_category = found_enchant_category || this.can_receive_fishing_rod_enchantments;
        
        this.can_receive_helmet_enchantments = !found_enchant_category && <tag:item:the_wonder_years:enchantable/helmet>.contains(item_stack);
        found_enchant_category = found_enchant_category || this.can_receive_helmet_enchantments;
        
        this.can_receive_chestplate_enchantments = !found_enchant_category && <tag:item:the_wonder_years:enchantable/chestplate>.contains(item_stack);
        found_enchant_category = found_enchant_category || this.can_receive_chestplate_enchantments;
        
        this.can_receive_leggings_enchantments = !found_enchant_category && <tag:item:the_wonder_years:enchantable/leggings>.contains(item_stack);
        found_enchant_category = found_enchant_category || this.can_receive_leggings_enchantments;
        
        this.can_receive_boots_enchantments = !found_enchant_category && <tag:item:the_wonder_years:enchantable/boots>.contains(item_stack);
        found_enchant_category = found_enchant_category || this.can_receive_boots_enchantments;
        
        this.can_receive_horse_armor_enchantments = !found_enchant_category && <tag:item:the_wonder_years:enchantable/horse_armor>.contains(item_stack);
        found_enchant_category = found_enchant_category || this.can_receive_horse_armor_enchantments;
        
        this.can_receive_horseshoes_enchantments = !found_enchant_category && <tag:item:the_wonder_years:enchantable/horseshoes>.contains(item_stack);
        found_enchant_category = found_enchant_category || this.can_receive_horseshoes_enchantments;

        this.can_receive_shield_enchantments = !found_enchant_category && <tag:item:the_wonder_years:enchantable/shield>.contains(item_stack);
        found_enchant_category = found_enchant_category || this.can_receive_shield_enchantments;
        
        this.can_receive_sword_enchantments = !found_enchant_category && <tag:item:the_wonder_years:enchantable/sword>.contains(item_stack);
        found_enchant_category = found_enchant_category || this.can_receive_sword_enchantments;
        
        this.can_receive_trident_enchantments = !found_enchant_category && <tag:item:the_wonder_years:enchantable/trident>.contains(item_stack);
        found_enchant_category = found_enchant_category || this.can_receive_trident_enchantments;
        
        this.can_receive_bow_enchantments = !found_enchant_category && <tag:item:the_wonder_years:enchantable/bow>.contains(item_stack);
        found_enchant_category = found_enchant_category || this.can_receive_bow_enchantments;
        
        this.can_receive_crossbow_enchantments = !found_enchant_category && <tag:item:the_wonder_years:enchantable/crossbow>.contains(item_stack);
        found_enchant_category = found_enchant_category || this.can_receive_crossbow_enchantments;
        
        this.can_receive_mace_enchantments = !found_enchant_category && <tag:item:the_wonder_years:enchantable/mace>.contains(item_stack);
        found_enchant_category = found_enchant_category || this.can_receive_mace_enchantments;
        
        this.can_receive_elytra_enchantments = !found_enchant_category && <tag:item:the_wonder_years:enchantable/elytra>.contains(item_stack);
        found_enchant_category = found_enchant_category || this.can_receive_elytra_enchantments;

        this.can_receive_enchantments = found_enchant_category;

        // Check additional item capabilities (independent of tier/enchant categories)
        this.can_apply_trims = <tag:item:the_wonder_years:applicable/trims>.contains(item_stack);
        this.can_apply_banner = <tag:item:the_wonder_years:applicable/banner>.contains(item_stack);
	}
}