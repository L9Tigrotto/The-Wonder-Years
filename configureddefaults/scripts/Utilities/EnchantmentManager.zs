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
 * Populates the enchantments list with basic/common beneficial enchantments
 * suitable for the overworld dimension. These are generally safe, standard
 * enchantments that improve item functionality without major risks.
 * 
 * @param enchantments The list to populate with enchantments
 * @param item The item to check compatibility against
 */
function overworldBeneficialEnchantments(enchantments as List<Enchantment>, item as IItemStack) as  void
{
    // Helmet enchantments
    if (<tag:item:minecraft:enchantable/head_armor>.contains(item)) {
        enchantments.add(<enchantment:minecraft:aqua_affinity>);
        enchantments.add(<enchantment:minecraft:respiration>);
    }
    
    // Chestplate enchantments
    if (<tag:item:minecraft:enchantable/chest_armor>.contains(item)) 
    {
        enchantments.add(<enchantment:minecraft:protection>);
        enchantments.add(<enchantment:minecraft:fire_protection>);
        enchantments.add(<enchantment:minecraft:blast_protection>);
        enchantments.add(<enchantment:minecraft:projectile_protection>);
    }
    
    // Leggings enchantments
    if (<tag:item:minecraft:enchantable/leg_armor>.contains(item)) 
    {
        enchantments.add(<enchantment:minecraft:protection>);
        enchantments.add(<enchantment:minecraft:fire_protection>);
        enchantments.add(<enchantment:enchantplus:leggings/fast_swim>);
    }
    
    // Boots enchantments
    if (<tag:item:minecraft:enchantable/foot_armor>.contains(item)) {
        enchantments.add(<enchantment:minecraft:feather_falling>);
        enchantments.add(<enchantment:minecraft:depth_strider>);
        enchantments.add(<enchantment:enchantplus:boots/agility>);
    }
    
    // Sword enchantments
    if (<tag:item:minecraft:enchantable/sword>.contains(item)) {
        enchantments.add(<enchantment:minecraft:sharpness>);
        enchantments.add(<enchantment:minecraft:knockback>);
        enchantments.add(<enchantment:minecraft:fire_aspect>);
        enchantments.add(<enchantment:minecraft:looting>);
        enchantments.add(<enchantment:minecraft:sweeping_edge>);
    }
    
    // Bow enchantments
    if (<tag:item:minecraft:enchantable/bow>.contains(item)) {
        enchantments.add(<enchantment:minecraft:power>);
        enchantments.add(<enchantment:minecraft:punch>);
        enchantments.add(<enchantment:minecraft:flame>);
        // MOVED infinity to Nether (removes resource management)
    }
    
    // Crossbow enchantments
    if (<tag:item:minecraft:enchantable/crossbow>.contains(item)) {
        enchantments.add(<enchantment:minecraft:quick_charge>);
        enchantments.add(<enchantment:minecraft:multishot>);
        enchantments.add(<enchantment:minecraft:piercing>);
    }
    
    // Trident enchantments
    if (<tag:item:minecraft:enchantable/trident>.contains(item)) {
        enchantments.add(<enchantment:minecraft:loyalty>);
        enchantments.add(<enchantment:minecraft:impaling>);
        enchantments.add(<enchantment:minecraft:channeling>);
        enchantments.add(<enchantment:minecraft:riptide>);
    }
    
    // Mining tools enchantments (pickaxe, axe, shovel, hoe)
    if (<tag:item:minecraft:enchantable/mining>.contains(item)) {
        enchantments.add(<enchantment:minecraft:efficiency>);
        enchantments.add(<enchantment:minecraft:fortune>);
    }
    
    // Fishing rod enchantments
    if (<tag:item:minecraft:enchantable/fishing>.contains(item)) {
        enchantments.add(<enchantment:minecraft:lure>);
        enchantments.add(<enchantment:minecraft:luck_of_the_sea>);
    }
    
    // Universal enchantments for durable items
    if (<tag:item:minecraft:enchantable/durability>.contains(item)) {
        enchantments.add(<enchantment:minecraft:unbreaking>);
    }
}


/**
 * Populates the enchantments list with advanced beneficial enchantments
 * suitable for the nether dimension. These are more powerful and specialized
 * enchantments that provide significant advantages.
 * 
 * @param enchantments The list to populate with enchantments
 * @param item The item to check compatibility against
 */
function netherBeneficialEnchantments(enchantments as List<Enchantment>, item as IItemStack) as void
{
    // Advanced helmet enchantments
    if (<tag:item:minecraft:enchantable/head_armor>.contains(item)) {
        enchantments.add(<enchantment:enchantplus:helmet/bright_vision>);
        enchantments.add(<enchantment:minecraft:respiration>);
    }
    
    // Advanced chestplate enchantments
    if (<tag:item:minecraft:enchantable/chest_armor>.contains(item)) {
        enchantments.add(<enchantment:minecraft:thorns>);
        enchantments.add(<enchantment:enchantplus:chestplate/builder_arm>);
    }
    
    // Advanced leggings enchantments
    if (<tag:item:minecraft:enchantable/leg_armor>.contains(item)) {
        enchantments.add(<enchantment:enchantplus:leggings/oversize>);
        enchantments.add(<enchantment:enchantplus:leggings/dwarfed>);
        enchantments.add(<enchantment:enchantplus:leggings/leaping>);
    }
    
    // Advanced boots enchantments
    if (<tag:item:minecraft:enchantable/foot_armor>.contains(item)) {
        enchantments.add(<enchantment:minecraft:soul_speed>);
        enchantments.add(<enchantment:enchantplus:boots/lava_walker>);
        enchantments.add(<enchantment:minecraft:frost_walker>);
        enchantments.add(<enchantment:minecraft:swift_sneak>);
        enchantments.add(<enchantment:enchantplus:boots/step_assist>);
    }
    
    // Advanced sword enchantments
    if (<tag:item:minecraft:enchantable/sword>.contains(item)) {
        enchantments.add(<enchantment:minecraft:smite>);
        enchantments.add(<enchantment:minecraft:bane_of_arthropods>);
        enchantments.add(<enchantment:enchantplus:sword/reach>);
        enchantments.add(<enchantment:enchantplus:sword/xp_boost>);
    }
    
    // Sharp weapon enchantments (swords and axes)
    if (<tag:item:minecraft:enchantable/sharp_weapon>.contains(item)) {
        enchantments.add(<enchantment:minecraft:smite>);
        enchantments.add(<enchantment:minecraft:bane_of_arthropods>);
    }
    
    // Mace enchantments
    if (<tag:item:minecraft:enchantable/mace>.contains(item)) {
        enchantments.add(<enchantment:minecraft:density>);
        enchantments.add(<enchantment:minecraft:wind_burst>);
    }
    
    // Advanced bow enchantments
    if (<tag:item:minecraft:enchantable/bow>.contains(item)) {
        enchantments.add(<enchantment:enchantplus:bow/accuracy_shot>);
        enchantments.add(<enchantment:enchantplus:bow/echo_shot>);
        enchantments.add(<enchantment:minecraft:infinity>);
    }
    
    // Advanced crossbow enchantments
    if (<tag:item:minecraft:enchantable/crossbow>.contains(item)) {
        enchantments.add(<enchantment:enchantplus:bow/accuracy_shot>);
        enchantments.add(<enchantment:enchantplus:bow/echo_shot>);
    }
    
    // Advanced mining enchantments
    if (<tag:item:minecraft:enchantable/mining>.contains(item)) {
        enchantments.add(<enchantment:enchantplus:tools/auto_smelt>);
        enchantments.add(<enchantment:enchantplus:tools/miningplus>);
    }
    
    // Pickaxe-specific enchantments
    if (<tag:item:minecraft:pickaxes>.contains(item)) {
        enchantments.add(<enchantment:enchantplus:pickaxe/vein_miner>);
    }
    
    // Axe-specific enchantments
    if (<tag:item:minecraft:axes>.contains(item)) {
        enchantments.add(<enchantment:enchantplus:axe/timber>);
    }
    
    // Hoe-specific enchantments
    if (<tag:item:minecraft:hoes>.contains(item)) {
        enchantments.add(<enchantment:enchantplus:hoe/scyther>);
    }
}

/**
 * Populates the enchantments list with the most powerful beneficial enchantments
 * suitable for the end dimension. These are end-game enchantments with
 * extremely powerful effects.
 * 
 * @param enchantments The list to populate with enchantments
 * @param item The item to check compatibility against
 */
function endBeneficialEnchantments(enchantments as List<Enchantment>, item as IItemStack) as void
{
    // Powerful helmet enchantments
    if (<tag:item:minecraft:enchantable/head_armor>.contains(item)) {
        enchantments.add(<enchantment:enchantplus:helmet/voidless>);
        enchantments.add(<enchantment:enchantplus:helmet/auto_feed>);
    }
    
    // Powerful armor enchantments (all armor pieces)
    if (<tag:item:minecraft:enchantable/chest_armor>.contains(item) ||
        <tag:item:minecraft:enchantable/head_armor>.contains(item) ||
        <tag:item:minecraft:enchantable/leg_armor>.contains(item) ||
        <tag:item:minecraft:enchantable/foot_armor>.contains(item)) {
        enchantments.add(<enchantment:enchantplus:armor/fury>);
        enchantments.add(<enchantment:enchantplus:armor/lifeplus>);
        enchantments.add(<enchantment:enchantplus:armor/venom_protection>);
        enchantments.add(<enchantment:minecraft:breach>);
    }
    
    // Powerful sword enchantments
    if (<tag:item:minecraft:enchantable/sword>.contains(item)) {
        enchantments.add(<enchantment:enchantplus:sword/fear>);
        enchantments.add(<enchantment:enchantplus:sword/critical>);
        enchantments.add(<enchantment:enchantplus:sword/attack_speed>);
    }
    
    // Powerful mace enchantments
    if (<tag:item:minecraft:enchantable/mace>.contains(item)) 
    {
        enchantments.add(<enchantment:enchantplus:mace/striker>);
        enchantments.add(<enchantment:enchantplus:mace/teluric_wave>);
    }
    
    // Powerful trident enchantments
    if (<tag:item:minecraft:enchantable/trident>.contains(item)) 
    {
        enchantments.add(<enchantment:enchantplus:trident/gungnir_breath>);
    }
    
    // Powerful bow enchantments
    if (<tag:item:minecraft:enchantable/bow>.contains(item)) 
    {
        enchantments.add(<enchantment:enchantplus:bow/explosive_arrow>);
        enchantments.add(<enchantment:enchantplus:bow/breezing_arrow>);
        enchantments.add(<enchantment:enchantplus:bow/eternal_frost>);
        enchantments.add(<enchantment:enchantplus:bow/rebound>);
    }
    
    // Powerful crossbow enchantments
    if (<tag:item:minecraft:enchantable/crossbow>.contains(item)) 
    {
        enchantments.add(<enchantment:enchantplus:bow/explosive_arrow>);
        enchantments.add(<enchantment:enchantplus:bow/breezing_arrow>);
        enchantments.add(<enchantment:enchantplus:bow/eternal_frost>);
        enchantments.add(<enchantment:enchantplus:bow/rebound>);
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
    if (<tag:item:minecraft:enchantable/vanishing>.contains(item)) {
        enchantments.add(<enchantment:minecraft:vanishing_curse>);
    }
    
    // Curse of Binding - Can only be applied to armor pieces and elytra
    if (<tag:item:minecraft:enchantable/equippable>.contains(item)) {
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