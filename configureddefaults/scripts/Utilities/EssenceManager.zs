import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.math.RandomSource;

import stdlib.List;

/**
 * Adds essences to loot drops with probability-based selection
 * The essence type depends on the dimension, with different probability distributions
 * 
 * @param loot - The loot list to add essences to
 * @param random - Random source for probability calculations
 * @param dimension - The dimension where the loot is being generated ("overworld", "nether", "end")
 */
public function addRandomEssence(loot as List<IItemStack>, random as RandomSource, dimension as string) as void
{
	// Validate dimension
	if (dimension != "overworld" && dimension != "nether" && dimension != "end")
	{
		println("[ERROR]: in addEssenceWithProbability recived '" + dimension + "' dimension. not supported.");
		return;
	}

	// Early exit if the random roll fails the base drop chance
	if (random.nextFloat() > 0.75) { return; }

	// Initialize dimension-specific probabilities
	var overworld_probability = 0.0 as float;
	var nether_probability = 0.0 as float;
	var end_probability = 0.0 as float;

	// Initialize essence pools for each dimension
	var overworld_essences = [] as IItemStack[];
	var nether_essences = [] as IItemStack[];
	var end_essences = [] as IItemStack[];

	// Set up dimension-specific probability distributions and essence pools
	if (dimension == "overworld" || dimension == "nether" || dimension == "end")
	{
		overworld_essences = overworldEssences();
		overworld_probability = 1.0;
	}
	if (dimension == "nether" || dimension == "end")
	{
		nether_essences = netherEssences();
		overworld_probability = 0.35;
		nether_probability = 0.65;
	}
	if (dimension == "end")
	{
		end_essences = endEssences();
		overworld_probability = 0.2;
		nether_probability = 0.2;
		end_probability = 0.6;
	}

	// Select essence pool based on cumulative probabilities
	val dimension_selector = random.nextFloat();
	var essence_pool = [] as IItemStack[];
	if (dimension_selector <= overworld_probability) { essence_pool = overworld_essences; }
	else if (dimension_selector <= (overworld_probability + nether_probability)) { essence_pool = nether_essences; }
	else { essence_pool = end_essences; }

	// Select and add random essence from the chosen pool
	val essence_index = random.nextInt(0, essence_pool.length as int);
	val essence = essence_pool[essence_index];
	loot.add(essence);
}

/**
 * Returns an array of overworld-themed essences
 * These are generally more common/basic enchantment essences
 */
function overworldEssences() as IItemStack[]
{
	val essences = [
		<item:betterenchanting:essence_of_arthropods>,
		<item:betterenchanting:essence_of_channeling>,
		<item:betterenchanting:essence_of_impaling>,
		<item:betterenchanting:essence_of_knockback>,
		<item:betterenchanting:essence_of_smite>,
		<item:betterenchanting:essence_of_ice>,
		<item:betterenchanting:essence_of_loyalty>,
		<item:betterenchanting:essence_of_lure>,
		<item:betterenchanting:essence_of_projectile_protection>,
		<item:betterenchanting:essence_of_respiration>,
		<item:betterenchanting:essence_of_riptide>,
		<item:betterenchanting:essence_of_sea_luck>,
		<item:betterenchanting:essence_of_efficiency>,
		<item:betterenchanting:essence_of_piercing>,
		<item:betterenchanting:essence_of_sea>,
		<item:betterenchanting:essence_of_fear>,
		<item:betterenchanting:essence_of_foraging>,
		<item:betterenchanting:essence_of_sight>,
		<item:betterenchanting:essence_of_building>,
		<item:betterenchanting:essence_of_fire>,
		<item:betterenchanting:essence_of_punch>
	];

	return essences;
}

/**
 * Returns an array of nether-themed essences
 * These include more powerful and combat-oriented enchantments
 */
function netherEssences() as IItemStack[]
{
	val essences = [
		<item:betterenchanting:essence_of_blast_protection>,
		<item:betterenchanting:essence_of_feather>,
		<item:betterenchanting:essence_of_fire_protection>,
		<item:betterenchanting:essence_of_multishot>,
		<item:betterenchanting:essence_of_sneak_1>,
		<item:betterenchanting:essence_of_sneak_2>,
		<item:betterenchanting:essence_of_sneak_3>,
		<item:betterenchanting:soul_essence_1>,
		<item:betterenchanting:soul_essence_2>,
		<item:betterenchanting:soul_essence_3>,
		<item:betterenchanting:essence_of_sweeping>,
		<item:betterenchanting:essence_of_poison_protection>,
		<item:betterenchanting:essence_of_quick_charge>,
		<item:betterenchanting:essence_of_density>,
		<item:betterenchanting:essence_of_sharpness>,
		<item:betterenchanting:essence_of_breach>,
		<item:betterenchanting:essence_of_fortune>,
		<item:betterenchanting:essence_of_looting>,
		<item:betterenchanting:essence_of_arrows>,
		<item:betterenchanting:essence_of_combat>,
		<item:betterenchanting:essence_of_mining>,
		<item:betterenchanting:essence_of_power>,
		<item:betterenchanting:essence_of_silk_touch>,
		<item:betterenchanting:essence_of_wind>,
		<item:betterenchanting:essence_of_unbreaking>,
		<item:betterenchanting:essence_of_protection>
	];

	return essences;
}

/**
 * Returns an array of end-themed essences and items
 * These are the rarest and most powerful essences, plus some vanilla end items
 */
function endEssences() as IItemStack[]
{
	val essences = [
		<item:betterenchanting:essence_of_thorn>,
		<item:betterenchanting:essence_of_experience>,
		<item:betterenchanting:essence_of_health>,
		<item:betterenchanting:essence_of_wings>,
		<item:betterenchanting:essence_of_vampirism>
	];

	return essences;
}