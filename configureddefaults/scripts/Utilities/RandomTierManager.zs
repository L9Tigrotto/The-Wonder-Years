import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.math.RandomSource;

/**
 * Main function to apply a random tier to an item based on its type and the current dimension.
 * Different item types have different numbers of tier variants available.
 */
public function applyRandomTier(item as IItemStack, random as RandomSource, dimension as string) as IItemStack
{
    // Check item type and apply appropriate tier with specific variant count
    if (isArmor(item)) { return itemWithTier(item, random, dimension, "armor", 4); }
    if (isElytra(item)) { return itemWithTier(item, random, dimension, "elytra", 2); }
    if (isMaleeWeapon(item)) { return itemWithTier(item, random, dimension, "melee", 4); }
    if (isRangedWeapon(item)) { return itemWithTier(item, random, dimension, "ranged", 4); }
    if (isShield(item)) { return itemWithTier(item, random, dimension, "shield", 4); }
    if (isFishingRod(item)) { return itemWithTier(item, random, dimension, "fishing", 2); }
    if (isTool(item)) { return itemWithTier(item, random, dimension, "tool", 4); }

    // Return unchanged item if it doesn't match any supported category
    println("[WARNING] in applyRandomTier recived an un-tierable item.");
    return item;
}

// ============================================================================
// ITEM TYPE DETECTION FUNCTIONS
// ============================================================================

function isArmor(item as IItemStack) as bool{ return <tag:item:c:armors>.contains(item); }
function isElytra(item as IItemStack) as bool { return item.descriptionId == "item:minecraft:elytra"; }
function isMaleeWeapon(item as IItemStack) as bool { return <tag:item:c:tools/melee_weapon>.contains(item); }
function isRangedWeapon(item as IItemStack) as bool { return <tag:item:c:tools/ranged_weapons>.contains(item); }
function isShield(item as IItemStack) as bool { return <tag:item:c:tools/shields>.contains(item); }
function isFishingRod(item as IItemStack) as bool { return <tag:item:c:tools/fishing_rod>.contains(item); }
function isTool(item as IItemStack) as bool { return <tag:item:c:tools>.contains(item); }

// ============================================================================
// TIER APPLICATION FUNCTION
// ============================================================================

/**
 * Applies a tiered component to an item with a randomly selected tier and variant.
 * The tier follows the format: "tiered:{tier}_{item_type}_{variant}"
 */
function itemWithTier(item as IItemStack, random as RandomSource, dimension as string, item_type as string, item_variants as int) as IItemStack
{
    // Get a random tier based on dimension-specific probabilities or return original item if tier selection failed
    val random_tier = pickRandomTier(random, dimension);
    if (random_tier == "error") { return item; }

    // Generate random variant number (1-based indexing)
    val random_variant = random.nextInt(1, item_variants + 1);

    // Apply the tiered component with the generated tier string
    return item.withJsonComponent(
        <componenttype:tiered:tier>, 
        {
            durable_factor: -1.0, 
            operation: 0, 
            tier: "tiered:" + random_tier + "_" + item_type + "_" + random_variant
        }
    );
}

// ============================================================================
// TIER PROBABILITY SYSTEM
// ============================================================================

/**
 * Selects a random tier based on dimension-specific probability distributions.
 * Higher-tier dimensions (Nether, End) have better odds for rare items.
 * Uses cumulative probability ranges for weighted random selection.
 */
function pickRandomTier(random as RandomSource, dimension as string) as string
{
    // Available tier names in ascending rarity order
    val tiers = [
        "common",
        "uncommon",
        "rare",
        "epic",
        "legendary",
        "unique"
    ] as string[];

    var ranges = [] as float[];

    // Set cumulative probability ranges based on dimension
    // Values represent the upper bound for each tier (cumulative percentages)
    if (dimension == "overworld")
    {
        ranges = [
            45,     // 45% chance for common
            75,     // 30% chance for uncommon (75-45)
            90,     // 15% chance for rare (90-75)
            97,     // 7% chance for epic (97-90)
            99.5,   // 2.5% chance for legendary (99.5-97)
            100     // 0.5% chance for unique (100-99.5)
        ] as float[];
    }
    else if (dimension == "nether")
    {
        ranges = [
            25,     // 25% chance for common
            50,     // 25% chance for uncommon
            75,     // 25% chance for rare
            90,     // 15% chance for epic
            97,     // 7% chance for legendary
            100     // 3% chance for unique
        ] as float[];
    }
    else if (dimension == "end")
    {
        ranges = [
            10,     // 10% chance for common
            25,     // 15% chance for uncommon
            50,     // 25% chance for rare
            75,     // 25% chance for epic
            90,     // 15% chance for legendary
            100     // 10% chance for unique
        ] as float[];
    }
    else 
    { 
        println("[ERROR]: in pickRandomTier recived '" + dimension + "' dimension. not supported.");
        return "error";
    }

    // Validate that we have exactly 6 probability ranges (one per tier)
    if (ranges.length != 6) 
    {
        println("[ERROR]: in pickRandomTier the length of the ranges is not 6.");
        return "error";
    }

    // Generate random value between 0-100 for probability check
    val value = random.nextFloat() * 100;

    // Find the first range that contains our random value
    // This implements weighted random selection using cumulative probabilities
    for i in 0 .. 5 { if (value <= ranges[i]) { return tiers[i]; } }
    return "error";
}