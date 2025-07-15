import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.enchantment.Enchantment;
import crafttweaker.api.util.math.RandomSource;


public function applyRandomBeneficialEnchantments(item as IItemStack, random as RandomSource, dimension as string, min as int, max as int) as IItemStack
{
    var enchantments = [] as Enchantment[];
    var levels = [] as int[];

    if (dimension == "overworld") { enchantments = overworldBeneficialEnchantments(item); }
    else if (dimension == "nether")  { enchantments = netherBeneficialEnchantments(item); }
    else if (dimension == "end") { enchantments = endBeneficialEnchantments(item); }
    else 
    { 
        println("[ERROR]: in applyRandomBeneficialEnchantments recived '" + dimension + "' dimension. not supported.");
        return item;
    }

    val length = enchantments.length as int;
    if (max > length) { max = length; }
    if (min > max) { min = max; }

    var number_of_enchantments = random.nextInt(min, max);
    for i in 0 .. number_of_enchantments
    {
        val enchantment = enchantments[i];
        val max_level = enchantment.maxLevel;
        levels[i] = random.nextInt(1, max_level);
    }

    return item;
}

public function applyRandomHarmfulEnchantments(item as IItemStack, random as RandomSource, dimension as string, min as int, max as int) as IItemStack
{
    var enchantments = [] as Enchantment[];
    var levels = [] as int[];

    if (dimension == "overworld") { enchantments = overworldHarmfulEnchantments(item); }
    else if (dimension == "nether")  { enchantments = netherHarmfulEnchantments(item); }
    else if (dimension == "end") { enchantments = endHarmfulEnchantments(item); }
    else 
    { 
        println("[ERROR]: in applyRandomBeneficialEnchantments recived '" + dimension + "' dimension. not supported.");
        return item;
    }

    val length = enchantments.length as int;
    if (max > length) { max = length; }
    if (min > max) { min = max; }

    var number_of_enchantments = random.nextInt(min, max);
    for i in 0 .. number_of_enchantments
    {
        val enchantment = enchantments[i];
        val max_level = enchantment.maxLevel;
        levels[i] = random.nextInt(1, max_level);
    }

    return item;
}

function applyRandomEnchantments(item as IItemStack, enchantments as Enchantment[], levels as int[]) as IItemStack
{
    if (enchantments.length != levels.length)
    {
        println("[ERROR]: in applyRandomEnchantment enchantments and levels length does not match.");
        return item;
    }

    for i in 0 .. enchantments.length
    {
        item = item.withEnchantment(enchantments[i], levels[i]);
    }
    
    return item;
}

function overworldBeneficialEnchantments(item as IItemStack) as Enchantment[]
{
    var enchantments = [] as Enchantment[];
    var index = 0;
    
    // Helmet enchantments
    if (<tag:item:minecraft:enchantable/head_armor>.contains(item)) {
        enchantments[index++] = <enchantment:minecraft:aqua_affinity>;
        enchantments[index++] = <enchantment:minecraft:respiration>;
        enchantments[index++] = <enchantment:enchantplus:helmet/auto_feed>;
    }
    
    // Chestplate enchantments
    if (<tag:item:minecraft:enchantable/chest_armor>.contains(item)) {
        enchantments[index++] = <enchantment:minecraft:protection>;
        enchantments[index++] = <enchantment:minecraft:fire_protection>;
        enchantments[index++] = <enchantment:minecraft:blast_protection>;
        enchantments[index++] = <enchantment:minecraft:projectile_protection>;
    }
    
    // Leggings enchantments
    if (<tag:item:minecraft:enchantable/leg_armor>.contains(item)) {
        enchantments[index++] = <enchantment:minecraft:protection>;
        enchantments[index++] = <enchantment:minecraft:fire_protection>;
        enchantments[index++] = <enchantment:enchantplus:leggings/fast_swim>;
    }
    
    // Boots enchantments
    if (<tag:item:minecraft:enchantable/foot_armor>.contains(item)) {
        enchantments[index++] = <enchantment:minecraft:feather_falling>;
        enchantments[index++] = <enchantment:minecraft:depth_strider>;
        enchantments[index++] = <enchantment:enchantplus:boots/step_assist>;
        enchantments[index++] = <enchantment:enchantplus:boots/agility>;
    }
    
    // Sword enchantments
    if (<tag:item:minecraft:enchantable/sword>.contains(item)) {
        enchantments[index++] = <enchantment:minecraft:sharpness>;
        enchantments[index++] = <enchantment:minecraft:knockback>;
        enchantments[index++] = <enchantment:minecraft:fire_aspect>;
        enchantments[index++] = <enchantment:minecraft:looting>;
        enchantments[index++] = <enchantment:minecraft:sweeping_edge>;
    }
    
    // Bow enchantments
    if (<tag:item:minecraft:enchantable/bow>.contains(item)) {
        enchantments[index++] = <enchantment:minecraft:power>;
        enchantments[index++] = <enchantment:minecraft:punch>;
        enchantments[index++] = <enchantment:minecraft:flame>;
        enchantments[index++] = <enchantment:minecraft:infinity>;
    }
    
    // Crossbow enchantments
    if (<tag:item:minecraft:enchantable/crossbow>.contains(item)) {
        enchantments[index++] = <enchantment:minecraft:quick_charge>;
        enchantments[index++] = <enchantment:minecraft:multishot>;
        enchantments[index++] = <enchantment:minecraft:piercing>;
    }
    
    // Trident enchantments
    if (<tag:item:minecraft:enchantable/trident>.contains(item)) {
        enchantments[index++] = <enchantment:minecraft:loyalty>;
        enchantments[index++] = <enchantment:minecraft:impaling>;
        enchantments[index++] = <enchantment:minecraft:channeling>;
        enchantments[index++] = <enchantment:minecraft:riptide>;
    }
    
    // Mining tools enchantments (pickaxe, axe, shovel, hoe)
    if (<tag:item:minecraft:enchantable/mining>.contains(item)) {
        enchantments[index++] = <enchantment:minecraft:efficiency>;
        enchantments[index++] = <enchantment:minecraft:fortune>;
    }
    
    // Fishing rod enchantments
    if (<tag:item:minecraft:enchantable/fishing>.contains(item)) {
        enchantments[index++] = <enchantment:minecraft:lure>;
        enchantments[index++] = <enchantment:minecraft:luck_of_the_sea>;
    }
    
    // Universal enchantments for durable items
    if (<tag:item:minecraft:enchantable/durability>.contains(item)) {
        enchantments[index++] = <enchantment:minecraft:unbreaking>;
        enchantments[index++] = <enchantment:minecraft:mending>;
    }
    
    return enchantments;
}

function netherBeneficialEnchantments(item as IItemStack) as Enchantment[]
{
    var enchantments = [] as Enchantment[];
    var index = 0;
    
    // Advanced helmet enchantments
    if (<tag:item:minecraft:enchantable/head_armor>.contains(item)) {
        enchantments[index++] = <enchantment:enchantplus:helmet/bright_vision>;
        enchantments[index++] = <enchantment:minecraft:respiration>;
    }
    
    // Advanced chestplate enchantments
    if (<tag:item:minecraft:enchantable/chest_armor>.contains(item)) {
        enchantments[index++] = <enchantment:minecraft:thorns>;
        enchantments[index++] = <enchantment:enchantplus:chestplate/builder_arm>;
        enchantments[index++] = <enchantment:enchantplus:chestplate/magnet>;
    }
    
    // Advanced leggings enchantments
    if (<tag:item:minecraft:enchantable/leg_armor>.contains(item)) {
        enchantments[index++] = <enchantment:enchantplus:leggings/oversize>;
        enchantments[index++] = <enchantment:enchantplus:leggings/dwarfed>;
        enchantments[index++] = <enchantment:enchantplus:leggings/leaping>;
    }
    
    // Advanced boots enchantments
    if (<tag:item:minecraft:enchantable/foot_armor>.contains(item)) {
        enchantments[index++] = <enchantment:minecraft:soul_speed>;
        enchantments[index++] = <enchantment:enchantplus:boots/lava_walker>;
        enchantments[index++] = <enchantment:minecraft:frost_walker>;
        enchantments[index++] = <enchantment:minecraft:swift_sneak>;
    }
    
    // Advanced sword enchantments
    if (<tag:item:minecraft:enchantable/sword>.contains(item)) {
        enchantments[index++] = <enchantment:minecraft:smite>;
        enchantments[index++] = <enchantment:minecraft:bane_of_arthropods>;
        enchantments[index++] = <enchantment:enchantplus:sword/reach>;
        enchantments[index++] = <enchantment:enchantplus:sword/xp_boost>;
        enchantments[index++] = <enchantment:enchantplus:sword/life_steal>;
        enchantments[index++] = <enchantment:enchantplus:sword/poison_aspect>;
    }
    
    // Sharp weapon enchantments (swords and axes)
    if (<tag:item:minecraft:enchantable/sharp_weapon>.contains(item)) {
        enchantments[index++] = <enchantment:enchantplus:axe/timber>; // For axes
        enchantments[index++] = <enchantment:minecraft:smite>;
        enchantments[index++] = <enchantment:minecraft:bane_of_arthropods>;
    }
    
    // Mace enchantments
    if (<tag:item:minecraft:enchantable/mace>.contains(item)) {
        enchantments[index++] = <enchantment:minecraft:density>;
        enchantments[index++] = <enchantment:minecraft:wind_burst>;
    }
    
    // Advanced bow enchantments
    if (<tag:item:minecraft:enchantable/bow>.contains(item)) {
        enchantments[index++] = <enchantment:enchantplus:bow/accuracy_shot>;
        enchantments[index++] = <enchantment:enchantplus:bow/echo_shot>;
        enchantments[index++] = <enchantment:enchantplus:bow/storm_arrow>;
    }
    
    // Advanced crossbow enchantments
    if (<tag:item:minecraft:enchantable/crossbow>.contains(item)) {
        enchantments[index++] = <enchantment:enchantplus:bow/accuracy_shot>;
        enchantments[index++] = <enchantment:enchantplus:bow/echo_shot>;
        enchantments[index++] = <enchantment:enchantplus:bow/storm_arrow>;
    }
    
    // Advanced mining enchantments
    if (<tag:item:minecraft:enchantable/mining>.contains(item)) {
        enchantments[index++] = <enchantment:enchantplus:pickaxe/vein_miner>; // For pickaxes
        enchantments[index++] = <enchantment:enchantplus:tools/auto_smelt>;
        enchantments[index++] = <enchantment:enchantplus:tools/miningplus>;
        enchantments[index++] = <enchantment:enchantplus:hoe/harvest>; // For hoes
        enchantments[index++] = <enchantment:enchantplus:hoe/scyther>; // For hoes
    }
    
    // Universal intermediate enchantment
    if (<tag:item:minecraft:enchantable/durability>.contains(item)) {
        enchantments[index++] = <enchantment:enchantplus:midas_touch>;
    }
    
    return enchantments;
}

function endBeneficialEnchantments(item as IItemStack) as Enchantment[]
{
    var enchantments = [] as Enchantment[];
    var index = 0;
    
    // Powerful helmet enchantments
    if (<tag:item:minecraft:enchantable/head_armor>.contains(item)) {
        enchantments[index++] = <enchantment:enchantplus:helmet/voidless>;
    }
    
    // Powerful armor enchantments (all armor pieces)
    if (<tag:item:minecraft:enchantable/chest_armor>.contains(item) ||
        <tag:item:minecraft:enchantable/head_armor>.contains(item) ||
        <tag:item:minecraft:enchantable/leg_armor>.contains(item) ||
        <tag:item:minecraft:enchantable/foot_armor>.contains(item)) {
        enchantments[index++] = <enchantment:enchantplus:armor/fury>;
        enchantments[index++] = <enchantment:enchantplus:armor/lifeplus>;
        enchantments[index++] = <enchantment:enchantplus:armor/venom_protection>;
        enchantments[index++] = <enchantment:minecraft:breach>;
    }
    
    // Elytra enchantments (part of equippable)
    if (<tag:item:minecraft:enchantable/equippable>.contains(item)) {
        // Check if it's specifically elytra by item description ID
        if (item.descriptionId == "item.minecraft.elytra") {
            enchantments[index++] = <enchantment:enchantplus:elytra/armored>;
            enchantments[index++] = <enchantment:enchantplus:elytra/kinetic_protection>;
        }
    }
    
    // Powerful sword enchantments
    if (<tag:item:minecraft:enchantable/sword>.contains(item)) {
        enchantments[index++] = <enchantment:enchantplus:sword/fear>;
        enchantments[index++] = <enchantment:enchantplus:sword/pull>;
        enchantments[index++] = <enchantment:enchantplus:sword/dimensional_hit>;
        enchantments[index++] = <enchantment:enchantplus:sword/death_touch>;
        enchantments[index++] = <enchantment:enchantplus:sword/runic_despair>;
        enchantments[index++] = <enchantment:enchantplus:sword/tears_of_asflors>;
        enchantments[index++] = <enchantment:enchantplus:sword/last_hope>;
        enchantments[index++] = <enchantment:enchantplus:sword/critical>;
        enchantments[index++] = <enchantment:enchantplus:sword/attack_speed>;
    }
    
    // Powerful mace enchantments
    if (<tag:item:minecraft:enchantable/mace>.contains(item)) {
        enchantments[index++] = <enchantment:enchantplus:mace/striker>;
        enchantments[index++] = <enchantment:enchantplus:mace/wind_propulsion>;
        enchantments[index++] = <enchantment:enchantplus:mace/teluric_wave>;
    }
    
    // Powerful trident enchantments
    if (<tag:item:minecraft:enchantable/trident>.contains(item)) {
        enchantments[index++] = <enchantment:enchantplus:trident/gungnir_breath>;
    }
    
    // Powerful bow enchantments
    if (<tag:item:minecraft:enchantable/bow>.contains(item)) {
        enchantments[index++] = <enchantment:enchantplus:bow/explosive_arrow>;
        enchantments[index++] = <enchantment:enchantplus:bow/breezing_arrow>;
        enchantments[index++] = <enchantment:enchantplus:bow/eternal_frost>;
        enchantments[index++] = <enchantment:enchantplus:bow/rebound>;
    }
    
    // Powerful crossbow enchantments
    if (<tag:item:minecraft:enchantable/crossbow>.contains(item)) {
        enchantments[index++] = <enchantment:enchantplus:bow/explosive_arrow>;
        enchantments[index++] = <enchantment:enchantplus:bow/breezing_arrow>;
        enchantments[index++] = <enchantment:enchantplus:bow/eternal_frost>;
        enchantments[index++] = <enchantment:enchantplus:bow/rebound>;
    }
    
    // Powerful mining enchantments
    if (<tag:item:minecraft:enchantable/mining>.contains(item)) {
        // Check if it's specifically a pickaxe using the pickaxes tag
        if (<tag:item:minecraft:pickaxes>.contains(item)) {
            enchantments[index++] = <enchantment:enchantplus:pickaxe/spawner_touch>;
            enchantments[index++] = <enchantment:enchantplus:pickaxe/bedrock_breaker>;
        }
    }
    
    // End-game enchantments for all durable items
    if (<tag:item:minecraft:enchantable/durability>.contains(item)) {
        // Mounted/Special enchantments
        enchantments[index++] = <enchantment:enchantplus:mounted/cavalier_egis>;
        enchantments[index++] = <enchantment:enchantplus:mounted/velocity>;
        enchantments[index++] = <enchantment:enchantplus:mounted/ethereal_leap>;
        enchantments[index++] = <enchantment:enchantplus:mounted/steel_fang>;
        
        // Boss/Structure enchantments (most powerful)
        enchantments[index++] = <enchantment:nova_structures:boss_behaviour>;
        enchantments[index++] = <enchantment:nova_structures:wax_wings>;
        enchantments[index++] = <enchantment:nova_structures:illagers_bane>;
        enchantments[index++] = <enchantment:nova_structures:shulker_boss>;
        enchantments[index++] = <enchantment:nova_structures:shulker_miniboss>;
        enchantments[index++] = <enchantment:nova_structures:gravity>;
        
        // Preservation enchantment for end-game
        enchantments[index++] = <enchantment:bagofholding:preservation>;
    }
    
    return enchantments;
}

function overworldHarmfulEnchantments(item as IItemStack) as Enchantment[]
{
    var enchantments = [] as Enchantment[];
    var index = 0;
    
    // Curse of Vanishing - Can be applied to any enchantable item
    if (<tag:item:minecraft:enchantable/vanishing>.contains(item)) {
        enchantments[index++] = <enchantment:minecraft:vanishing_curse>;
    }
    
    // Curse of Binding - Can only be applied to armor pieces and elytra
    if (<tag:item:minecraft:enchantable/equippable>.contains(item)) {
        enchantments[index++] = <enchantment:minecraft:binding_curse>;
    }
    
    return enchantments;
}

function netherHarmfulEnchantments(item as IItemStack) as Enchantment[]
{
    var enchantments = [] as Enchantment[];
    var index = 0;
    
    // Curse of Breaking - Applies to items with durability (makes them break faster)
    if (<tag:item:minecraft:enchantable/durability>.contains(item)) {
        enchantments[index++] = <enchantment:enchantplus:durability/curse_of_breaking>;
    }
    
    return enchantments;
}

function endHarmfulEnchantments(item as IItemStack) as Enchantment[]
{
    var enchantments = [] as Enchantment[];
    var index = 0;
    
    // Curse of Enchant - Most severe curse, applies to items with durability
    if (<tag:item:minecraft:enchantable/durability>.contains(item)) {
        enchantments[index++] = <enchantment:enchantplus:durability/curse_of_enchant>;
    }
    
    return enchantments;
}