import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.enchantment.Enchantment;
import crafttweaker.api.util.math.RandomSource;

import stdlib.List;

/**
 * Applies random enchantments that are applicable to an item.
 * This function builds up enchantment pools from overworld -> nether -> end
 * based on the specified dimension, creating cumulative enchantment sets.
 * 
 * @param item The item to enchant
 * @param random Random source for RNG operations
 * @param dimension The dimension context ("overworld", "nether", or "end")
 * @return The enchanted item
 */
public function applyRandomApplicableEnchantments(item as IItemStack, random as RandomSource, dimension as string) as IItemStack
{
    var enchantments = new List<Enchantment>();
    var min_count = 0.0;
    var max_level = 0.0;

    // Build cumulative enchantment pools based on dimension progression
    if (dimension == "overworld") 
    { 
        overworldBeneficialEnchantments(enchantments, item); 
        overworldHarmfulEnchantments(enchantments, item);
        min_count = 0.2;
        min_count = 0.4; 
    }
    else if (dimension == "nether")
    {
        // Nether includes overworld + nether enchantments
        overworldBeneficialEnchantments(enchantments, item);
        overworldHarmfulEnchantments(enchantments, item);
        netherBeneficialEnchantments(enchantments, item);
        netherHarmfulEnchantments(enchantments, item);
        min_count = 0.4;
        min_count = 0.7;
    }
    else if (dimension == "end")
    {
        // End includes all enchantments from previous dimensions
        overworldBeneficialEnchantments(enchantments, item);
        overworldHarmfulEnchantments(enchantments, item);
        netherBeneficialEnchantments(enchantments, item);
        netherHarmfulEnchantments(enchantments, item);
        endBeneficialEnchantments(enchantments, item);
        endHarmfulEnchantments(enchantments, item);
         min_count = 0.7;
         min_count = 1.0;
    }
    else 
    { 
        println("[ERROR]: in applyRandomApplicableEnchantments recived '" + dimension + "' dimension. not supported.");
        return item;
    }

    item = applyRandomEnchantmentsFromList(item, random, enchantments, min_count, max_level);
    return item;
}

/**
 * Applies random beneficial enchantments to an item.
 * This function builds up enchantment pools from overworld -> nether -> end
 * based on the specified dimension, creating cumulative enchantment sets.
 * 
 * @param item The item to enchant
 * @param random Random source for RNG operations
 * @param dimension The dimension context ("overworld", "nether", or "end")
 * @return The enchanted item
 */
public function applyRandomBeneficialEnchantments(item as IItemStack, random as RandomSource, dimension as string) as IItemStack
{
    var enchantments = new List<Enchantment>();
    var min_count = 0.0;
    var max_level = 0.0;

    // Build cumulative enchantment pools based on dimension progression
    if (dimension == "overworld")
    { 
        overworldBeneficialEnchantments(enchantments, item);
        min_count = 0.2;
        max_level = 0.4;
    }
    else if (dimension == "nether")
    {
        // Nether includes overworld + nether enchantments
        overworldBeneficialEnchantments(enchantments, item);
        netherBeneficialEnchantments(enchantments, item);
        min_count = 0.4;
        max_level = 0.7;
    }
    else if (dimension == "end")
    {
        // End includes all enchantments from previous dimensions
        overworldBeneficialEnchantments(enchantments, item);
        netherBeneficialEnchantments(enchantments, item);
        endBeneficialEnchantments(enchantments, item);
        min_count = 0.7;
        max_level = 1.0;
    }
    else 
    { 
        println("[ERROR]: in applyRandomBeneficialEnchantments recived '" + dimension + "' dimension. not supported.");
        return item;
    }

    item = applyRandomEnchantmentsFromList(item, random, enchantments, min_count, max_level);
    return item;
}

/**
 * Applies random harmful/curse enchantments to an item.
 * Harmful enchantments become more severe in higher-tier dimensions.
 * 
 * @param item The item to enchant
 * @param random Random source for RNG operations
 * @param dimension The dimension context ("overworld", "nether", or "end")
 * @return The enchanted item
 */
public function applyRandomHarmfulEnchantments(item as IItemStack, random as RandomSource, dimension as string) as IItemStack
{
    var enchantments = new List<Enchantment>();
    var min_count = 0.0;
    var max_level = 0.0;

    // Build cumulative enchantment pools based on dimension progression
    if (dimension == "overworld")
    {
        overworldHarmfulEnchantments(enchantments, item);
        min_count = 0.2;
        max_level = 0.4;
    }
    else if (dimension == "nether")
    { 
        overworldHarmfulEnchantments(enchantments, item);
        netherHarmfulEnchantments(enchantments, item); 
        min_count = 0.4;
        max_level = 0.7;
    }
    else if (dimension == "end")
    {
        overworldHarmfulEnchantments(enchantments, item);
        netherHarmfulEnchantments(enchantments, item); 
        endHarmfulEnchantments(enchantments, item);
        min_count = 0.7;
        max_level = 1.0;
    }
    else 
    { 
        println("[ERROR]: in applyRandomHarmfulEnchantments recived '" + dimension + "' dimension. not supported.");
        return item;
    }

    item = applyRandomEnchantmentsFromList(item, random, enchantments, min_count, max_level);
    return item;
}

/**
 * Core enchantment application function that randomly selects and applies
 * enchantments from a provided list while respecting exclusivity rules.
 * 
 * @param item The item to enchant
 * @param random Random source for RNG operations
 * @param enchantments List of possible enchantments to choose from
 * @param min_reduction Minimum percentage of enchantments to apply (0.0-1.0)
 * @return The enchanted item with applied enchantments
 */
public function applyRandomEnchantmentsFromList(
    item as IItemStack, random as RandomSource,
    enchantments as List<Enchantment>,
    min_enchament_count_percentage as float, max_level_percentage as float) as IItemStack
{
    // Validate min_enchament_count_percentage parameter bounds
    if (min_enchament_count_percentage > 1.0)
    {
        println("[WARNING]: in applyRandomEnchantmentsFromList recived min_enchament_count_percentage > 1, set to 0.");
        min_enchament_count_percentage = 0;
    }

    if (min_enchament_count_percentage < 0.0)
    {
        println("[WARNING]: in applyRandomEnchantmentsFromList recived min_enchament_count_percentage < 0, set to 0.");
        min_enchament_count_percentage = 0;
    }

    // Validate max_level_percentage parameter bounds
    if (max_level_percentage > 1.0)
    {
        println("[WARNING]: in applyRandomEnchantmentsFromList recived max_level_percentage > 1, set to 0.");
        max_level_percentage = 0;
    }

    if (max_level_percentage < 0.0)
    {
        println("[WARNING]: in applyRandomEnchantmentsFromList recived max_level_percentage < 0, set to 0.");
        max_level_percentage = 0;
    }

     // Calculate how many enchantments to apply
    val length = enchantments.length as int;
    val min_length_increase = (length * min_enchament_count_percentage) as int;
    val number_of_enchantments = random.nextInt(min_length_increase, length);

    var selected_enchantments = new List<Enchantment>();
    
    // Select random enchantments while avoiding conflicts
    for k in 1 .. number_of_enchantments
    {
        val random_index = random.nextInt(0, length);
        val enchantment = enchantments[random_index];
        enchantments.remove(random_index);
        length--; // Update length after removal

        // Check for enchantment exclusivity conflicts
        val exclusive = enchantment.exclusiveSet; // Get enchantments that conflict with this one
        var not_contained = true; // Flag to track if enchantment conflicts with already selected ones
        var i = 0;

        // Check each exclusive enchantment against already selected enchantments
        while not_contained && i < exclusive.length as int
        {
            var j = 0;
            while not_contained && j < selected_enchantments.length as int
            {
                // Compare command strings to check for equals
                not_contained = exclusive[i].commandString != selected_enchantments[j].commandString;
                j++;
            }
            i++;
        }

        // Only add if no conflicts found
        if not_contained { selected_enchantments.add(enchantment); }
    }

    // Apply selected enchantments with random levels
    for enchantment in selected_enchantments
    {
        // Calculate maximum level to use and ensure it is at least level 1
        var max_level_decrease = (enchantment.maxLevel * max_level_percentage) as int;
        if (max_level_decrease < 1) { max_level_decrease = 1; }
        val level = random.nextInt(1, max_level_decrease + 1);
        
        // Apply the enchantment with the calculated level
        item = item.withEnchantment(enchantment, level);
    }
    
    return item;
}

/**
 * Applies basic beneficial enchantments suitable for early-game overworld exploration.
 * These enchantments focus on utility and quality-of-life improvements without being overpowered.
 * Safe for new players and standard gameplay progression.
 * 
 * @param enchantments The enchantment list to populate
 * @param item The item stack to check for enchantment compatibility
 */
function overworldBeneficialEnchantments(enchantments as List<Enchantment>, item as IItemStack) as void
{
    // General armor protection - applies to all armor pieces
    if (<tag:item:minecraft:enchantable/armor>.contains(item))
    {
        enchantments.add(<enchantment:minecraft:projectile_protection>);
    }

    // Helmet-specific enchantments for underwater and vision improvements
    if (<tag:item:minecraft:enchantable/head_armor>.contains(item))
    {
        enchantments.add(<enchantment:minecraft:aqua_affinity>);
        enchantments.add(<enchantment:enchantplus:helmet/bright_vision>);
        enchantments.add(<enchantment:minecraft:respiration>);
    }

    // Chestplate enchantments for building and utility
    if (<tag:item:minecraft:enchantable/chest_armor>.contains(item))
    {
        enchantments.add(<enchantment:enchantplus:chestplate/builder_arm>);
    }
    
    // Leggings enchantments for movement in water
    if (<tag:item:minecraft:enchantable/leg_armor>.contains(item))
    {
        enchantments.add(<enchantment:enchantplus:leggings/fast_swim>);
    }
    
    // Boots enchantments for terrain navigation and movement
    if (<tag:item:minecraft:enchantable/foot_armor>.contains(item))
    {
        enchantments.add(<enchantment:enchantplus:boots/step_assist>);
        enchantments.add(<enchantment:minecraft:depth_strider>);
        enchantments.add(<enchantment:minecraft:frost_walker>);
    }
    
    // Sword enchantments for crowd control and utility
    if (<tag:item:minecraft:enchantable/sword>.contains(item))
    {
        enchantments.add(<enchantment:enchantplus:sword/fear>);
        enchantments.add(<enchantment:minecraft:knockback>);
    }

    // Axe enchantments for efficient tree harvesting
    if (<tag:item:minecraft:axes>.contains(item))
    {
        enchantments.add(<enchantment:enchantplus:axe/timber>);
    }

    // Sharp weapon enchantments for specific mob types
    if (<tag:item:minecraft:enchantable/sharp_weapon>.contains(item))
    {
        enchantments.add(<enchantment:minecraft:smite>);
        enchantments.add(<enchantment:minecraft:bane_of_arthropods>);
    }
    
    // Bow enchantments for improved archery and elemental effects
    if (<tag:item:minecraft:enchantable/bow>.contains(item))
    {
        enchantments.add(<enchantment:enchantplus:bow/accuracy_shot>);
        enchantments.add(<enchantment:enchantplus:bow/rebound>);
        enchantments.add(<enchantment:enchantplus:bow/storm_arrow>);
        enchantments.add(<enchantment:enchantplus:bow/eternal_frost>);
        enchantments.add(<enchantment:minecraft:flame>);
        enchantments.add(<enchantment:minecraft:punch>);
    }
    
    // Crossbow enchantments with similar effects to bow
    if (<tag:item:minecraft:enchantable/crossbow>.contains(item))
    {
        enchantments.add(<enchantment:enchantplus:bow/accuracy_shot>);
        enchantments.add(<enchantment:enchantplus:bow/rebound>);
        enchantments.add(<enchantment:enchantplus:bow/storm_arrow>);
        enchantments.add(<enchantment:enchantplus:bow/eternal_frost>);
        enchantments.add(<enchantment:minecraft:piercing>);
    }
    
    // Trident enchantments for aquatic combat and utility
    if (<tag:item:minecraft:enchantable/trident>.contains(item))
    {
        enchantments.add(<enchantment:minecraft:channeling>);
        enchantments.add(<enchantment:minecraft:impaling>);
        enchantments.add(<enchantment:minecraft:loyalty>);
        enchantments.add(<enchantment:enchantplus:trident/gungnir_breath>);
        enchantments.add(<enchantment:minecraft:riptide>);
    }
    
    // Mining tool enchantments for resource gathering efficiency
    if (<tag:item:minecraft:enchantable/mining>.contains(item))
    {
        enchantments.add(<enchantment:enchantplus:tools/miningplus>);
        enchantments.add(<enchantment:minecraft:silk_touch>);
        enchantments.add(<enchantment:minecraft:efficiency>);
    }
    
    // Fishing rod enchantments for better fishing results
    if (<tag:item:minecraft:enchantable/fishing>.contains(item))
    {
        enchantments.add(<enchantment:minecraft:lure>);
        enchantments.add(<enchantment:minecraft:luck_of_the_sea>);
    }

    // Hoe enchantments for farming efficiency
    if (<tag:item:minecraft:hoes>.contains(item))
    {
        enchantments.add(<enchantment:enchantplus:hoe/scyther>);
    }
}

/**
 * Applies advanced beneficial enchantments suitable for mid-game nether exploration.
 * These enchantments provide significant combat and survival advantages for challenging environments.
 * Recommended for players who have progressed beyond basic overworld content.
 * 
 * @param enchantments The enchantment list to populate
 * @param item The item stack to check for enchantment compatibility
 */
function netherBeneficialEnchantments(enchantments as List<Enchantment>, item as IItemStack) as void
{
    // Advanced armor protection for all armor pieces
    if (<tag:item:minecraft:enchantable/armor>.contains(item))
    {
        enchantments.add(<enchantment:minecraft:protection>);
        enchantments.add(<enchantment:minecraft:blast_protection>);
        enchantments.add(<enchantment:minecraft:fire_protection>);
        enchantments.add(<enchantment:enchantplus:armor/fury>);
        enchantments.add(<enchantment:enchantplus:armor/venom_protection>);
    }

    // Advanced helmet enchantments for sustenance and survival
    if (<tag:item:minecraft:enchantable/head_armor>.contains(item))
    {
        enchantments.add(<enchantment:enchantplus:helmet/auto_feed>);
    }
    
    // Advanced boots enchantments for nether terrain navigation
    if (<tag:item:minecraft:enchantable/foot_armor>.contains(item))
    {
        enchantments.add(<enchantment:enchantplus:boots/lava_walker>);
        enchantments.add(<enchantment:minecraft:swift_sneak>);
        enchantments.add(<enchantment:minecraft:feather_falling>);
        enchantments.add(<enchantment:minecraft:soul_speed>);
        enchantments.add(<enchantment:enchantplus:boots/agility>);
    }
    
    // Advanced sword enchantments for improved combat effectiveness
    if (<tag:item:minecraft:enchantable/sword>.contains(item))
    {
        enchantments.add(<enchantment:minecraft:fire_aspect>);
        enchantments.add(<enchantment:enchantplus:sword/attack_speed>);
        enchantments.add(<enchantment:minecraft:sweeping_edge>);
    }
    
    // Enhanced sharp weapon enchantments for maximum damage output
    if (<tag:item:minecraft:enchantable/sharp_weapon>.contains(item))
    {
        enchantments.add(<enchantment:minecraft:sharpness>);
        enchantments.add(<enchantment:minecraft:looting>);
    }
    
    // Mace enchantments for specialized heavy weapon combat
    if (<tag:item:minecraft:enchantable/mace>.contains(item))
    {
        enchantments.add(<enchantment:enchantplus:mace/striker>);
        enchantments.add(<enchantment:enchantplus:mace/teluric_wave>);
        enchantments.add(<enchantment:nova_structures:illagers_bane>);
        enchantments.add(<enchantment:minecraft:wind_burst>);
        enchantments.add(<enchantment:minecraft:breach>);
        enchantments.add(<enchantment:minecraft:density>);
    }
    
    // Advanced bow enchantments for tactical advantages
    if (<tag:item:minecraft:enchantable/bow>.contains(item))
    {
        enchantments.add(<enchantment:enchantplus:bow/breezing_arrow>);
        enchantments.add(<enchantment:enchantplus:bow/explosive_arrow>);
        enchantments.add(<enchantment:minecraft:infinity>);
        enchantments.add(<enchantment:minecraft:power>);
    }
    
    // Advanced crossbow enchantments for rapid-fire combat
    if (<tag:item:minecraft:enchantable/crossbow>.contains(item))
    {
        enchantments.add(<enchantment:enchantplus:bow/breezing_arrow>);
        enchantments.add(<enchantment:enchantplus:bow/explosive_arrow>);
        enchantments.add(<enchantment:minecraft:multishot>);
        enchantments.add(<enchantment:minecraft:quick_charge>);
    }

    // Advanced mining enchantments for resource processing
    if (<tag:item:minecraft:enchantable/mining>.contains(item))
    {
        enchantments.add(<enchantment:enchantplus:tools/auto_smelt>);
        enchantments.add(<enchantment:minecraft:fortune>);
    }
    
    // Pickaxe-specific enchantments for advanced mining techniques
    if (<tag:item:minecraft:pickaxes>.contains(item))
    {
        enchantments.add(<enchantment:enchantplus:pickaxe/vein_miner>);
    }
    
    // Universal durability enhancement for all enchantable items
    if (<tag:item:minecraft:enchantable/durability>.contains(item))
    {
        enchantments.add(<enchantment:minecraft:unbreaking>);
    }
}

/**
 * Applies the most powerful beneficial enchantments suitable for end-game content.
 * These enchantments provide extreme advantages and are intended for the most challenging
 * content including the End dimension and post-game activities.
 * 
 * @param enchantments The enchantment list to populate
 * @param item The item stack to check for enchantment compatibility
 */
function endBeneficialEnchantments(enchantments as List<Enchantment>, item as IItemStack) as void
{
    // Elite armor enchantments for maximum protection
    if (<tag:item:minecraft:enchantable/armor>.contains(item))
    {
        enchantments.add(<enchantment:minecraft:thorns>);
        enchantments.add(<enchantment:enchantplus:armor/lifeplus>);
    }

    // Elite helmet enchantments for end-game survival
    if (<tag:item:minecraft:enchantable/head_armor>.contains(item))
    {
        enchantments.add(<enchantment:enchantplus:helmet/voidless>);
    }
    
    // Elite sword enchantments for maximum combat effectiveness
    if (<tag:item:minecraft:enchantable/sword>.contains(item))
    {
        enchantments.add(<enchantment:enchantplus:sword/reach>);
        enchantments.add(<enchantment:enchantplus:sword/xp_boost>);
        enchantments.add(<enchantment:enchantplus:sword/critical>);
    }
    
    // Elite bow enchantments for legendary archery abilities
    if (<tag:item:minecraft:enchantable/bow>.contains(item))
    {
        enchantments.add(<enchantment:enchantplus:bow/echo_shot>);
    }
    
    // Elite crossbow enchantments for devastating ranged combat
    if (<tag:item:minecraft:enchantable/crossbow>.contains(item))
    {
        enchantments.add(<enchantment:enchantplus:bow/echo_shot>);
    }
}

/**
 * Populates the enchantments list with harmful/curse enchantments
 * suitable for the overworld dimension. These are basic curses that
 * add negative effects to items.
 * 
 * @param enchantments The list to populate with enchantments
 * @param item The item to check compatibility against
 */
function overworldHarmfulEnchantments(enchantments as List<Enchantment>, item as IItemStack) as void
{
    // Curse of Vanishing - Can be applied to any enchantable item
    if (<tag:item:minecraft:enchantable/vanishing>.contains(item))
    {
        enchantments.add(<enchantment:minecraft:vanishing_curse>);
    }
    
    // Curse of Binding - Can only be applied to armor pieces and elytra
    if (<tag:item:minecraft:enchantable/equippable>.contains(item))
    {
        enchantments.add(<enchantment:minecraft:binding_curse>);
    }
}

/**
 * Populates the enchantments list with harmful/curse enchantments
 * suitable for the nether dimension. These are more severe curses
 * that significantly impact item durability.
 * 
 * @param enchantments The list to populate with enchantments
 * @param item The item to check compatibility against
 */
function netherHarmfulEnchantments(enchantments as List<Enchantment>, item as IItemStack) as void
{
    if (<tag:item:minecraft:enchantable/leg_armor>.contains(item))
    {
        enchantments.add(<enchantment:enchantplus:leggings/oversize>);
        enchantments.add(<enchantment:enchantplus:leggings/dwarfed>);
    }

    // Curse of Breaking - Applies to items with durability (makes them break faster)
    if (<tag:item:minecraft:enchantable/durability>.contains(item)) {
        enchantments.add(<enchantment:enchantplus:durability/curse_of_breaking>);
    }
}

/**
 * Populates the enchantments list with the most severe harmful/curse enchantments
 * suitable for the end dimension. These represent the worst possible curses
 * that can be applied to items.
 * 
 * @param enchantments The list to populate with enchantments
 * @param item The item to check compatibility against
 */
function endHarmfulEnchantments(enchantments as List<Enchantment>, item as IItemStack) as void
{
    // Curse of Enchant - Most severe curse, applies to items with durability
    if (<tag:item:minecraft:enchantable/durability>.contains(item)) {
        enchantments.add(<enchantment:enchantplus:durability/curse_of_enchant>);
    }
}