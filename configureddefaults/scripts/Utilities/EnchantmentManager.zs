import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.enchantment.Enchantment;
import crafttweaker.api.util.math.RandomSource;

import stdlib.List;

public function applyRandomApplicableEnchantments(item as IItemStack, random as RandomSource, dimension as string) as IItemStack
{
    var enchantments = new List<Enchantment>();
    var min_reduction = 0.0;

    if (dimension == "overworld") { overworldBeneficialEnchantments(enchantments, item); min_reduction = 0.2; }
    else if (dimension == "nether")
    { 
        overworldBeneficialEnchantments(enchantments, item);
        netherBeneficialEnchantments(enchantments, item); min_reduction = 0.4;
    }
    else if (dimension == "end")
    {
        overworldBeneficialEnchantments(enchantments, item);
        netherBeneficialEnchantments(enchantments, item);
        endBeneficialEnchantments(enchantments, item); min_reduction = 0.7;
    }
    else 
    { 
        println("[ERROR]: in applyRandomBeneficialEnchantments recived '" + dimension + "' dimension. not supported.");
        return item;
    }

    item = applyRandomEnchantmentsFromList(item, random, enchantments, min_reduction);
    return item;
}

public function applyRandomBeneficialEnchantments(item as IItemStack, random as RandomSource, dimension as string) as IItemStack
{
    var enchantments = new List<Enchantment>();
    var min_reduction = 0.0;

    if (dimension == "overworld") { overworldBeneficialEnchantments(enchantments, item); min_reduction = 0.2; }
    else if (dimension == "nether")  { netherBeneficialEnchantments(enchantments, item); min_reduction = 0.4; }
    else if (dimension == "end") { endBeneficialEnchantments(enchantments, item); min_reduction = 0.7; }
    else 
    { 
        println("[ERROR]: in applyRandomBeneficialEnchantments recived '" + dimension + "' dimension. not supported.");
        return item;
    }

    item = applyRandomEnchantmentsFromList(item, random, enchantments, min_reduction);
    return item;
}

public function applyRandomHarmfulEnchantments(item as IItemStack, random as RandomSource, dimension as string) as IItemStack
{
    var enchantments = new List<Enchantment>();
    var min_reduction = 0.0;

    if (dimension == "overworld") { overworldHarmfulEnchantments(enchantments, item); min_reduction = 0.2; }
    else if (dimension == "nether")  { netherHarmfulEnchantments(enchantments, item); min_reduction = 0.4; }
    else if (dimension == "end") { endHarmfulEnchantments(enchantments, item); min_reduction = 0.7; }
    else 
    { 
        println("[ERROR]: in applyRandomHarmfulEnchantments recived '" + dimension + "' dimension. not supported.");
        return item;
    }

    item = applyRandomEnchantmentsFromList(item, random, enchantments, min_reduction);
    return item;
}

public function applyRandomEnchantmentsFromList(item as IItemStack, random as RandomSource, enchantments as List<Enchantment>, min_reduction as float) as IItemStack
{
    if (min_reduction > 1.0)
    {
        println("[WARNING]: in applyRandomEnchantmentsFromList recived min_reduction > 1, set to 0.");
        min_reduction = 0;
    }

    if (min_reduction < 0.0)
    {
        println("[WARNING]: in applyRandomEnchantmentsFromList recived min_reduction < 0, set to 0.");
        min_reduction = 0;
    }

    val length = enchantments.length as int;
    val length_reduction = (length * min_reduction) as int;
    val number_of_enchantments = random.nextInt(length_reduction, length);

    for i in 1 .. number_of_enchantments
    {
        val random_index = random.nextInt(0, length);
        val enchantment = enchantments[random_index];
        enchantments.remove(random_index);

        if (!enchantment.canEnchant(item)) { continue; }

        val max_level = enchantment.maxLevel + 1;
        var level_reduction = (max_level * min_reduction) as int;
        if (level_reduction < 1) { level_reduction = 1; }
        val level = random.nextInt(level_reduction, max_level);

        item = item.withEnchantment(enchantment, level);
        length--;
    }
    
    return item;
}

function overworldBeneficialEnchantments(enchantments as List<Enchantment>, item as IItemStack) as  void
{
    // Helmet enchantments
    if (<tag:item:minecraft:enchantable/head_armor>.contains(item)) {
        enchantments.add(<enchantment:minecraft:aqua_affinity>);
        enchantments.add(<enchantment:minecraft:respiration>);
        enchantments.add(<enchantment:enchantplus:helmet/auto_feed>);
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
        enchantments.add(<enchantment:enchantplus:boots/step_assist>);
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
        enchantments.add(<enchantment:minecraft:infinity>);
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

function endBeneficialEnchantments(enchantments as List<Enchantment>, item as IItemStack) as void
{
    var enchantments = new List<Enchantment>();
    
    // Powerful helmet enchantments
    if (<tag:item:minecraft:enchantable/head_armor>.contains(item)) {
        enchantments.add(<enchantment:enchantplus:helmet/voidless>);
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

function netherHarmfulEnchantments(enchantments as List<Enchantment>, item as IItemStack) as void
{
    // Curse of Breaking - Applies to items with durability (makes them break faster)
    if (<tag:item:minecraft:enchantable/durability>.contains(item)) {
        enchantments.add(<enchantment:enchantplus:durability/curse_of_breaking>);
    }
}

function endHarmfulEnchantments(enchantments as List<Enchantment>, item as IItemStack) as void
{
    // Curse of Enchant - Most severe curse, applies to items with durability
    if (<tag:item:minecraft:enchantable/durability>.contains(item)) {
        enchantments.add(<enchantment:enchantplus:durability/curse_of_enchant>);
    }
}