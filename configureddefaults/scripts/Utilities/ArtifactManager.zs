import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.math.RandomSource;

import stdlib.List;

public function addRandomArtifact(loot as List<IItemStack>, random as RandomSource, dimension as string) as void
{
    if (dimension != "overworld" && dimension != "nether" && dimension != "end")
	{
		println("[ERROR]: in addRandomArtifact recived '" + dimension + "' dimension. not supported.");
		return;
	}

	if (random.nextFloat() > 0.50) { return; }

	var overworld_probability = 0.0 as float;
	var nether_probability = 0.0 as float;
	var end_probability = 0.0 as float;

	var overworld_artifacts = [] as IItemStack[];
	var nether_artifacts = [] as IItemStack[];
	var end_artifacts = [] as IItemStack[];

	if (dimension == "overworld" || dimension == "nether" || dimension == "end")
	{
		overworld_artifacts = overworldArtifacts();
		overworld_probability = 1.0;
	}
	if (dimension == "nether" || dimension == "end")
	{
		nether_artifacts = netherArtifacts();
		overworld_probability = 0.35;
		nether_probability = 0.65;
	}
	if (dimension == "end")
	{
		end_artifacts = endArtifacts();
		overworld_probability = 0.2;
		nether_probability = 0.2;
		end_probability = 0.6;
	}

	val dimension_selector = random.nextFloat();
	var artifact_pool = [] as IItemStack[];
	if (dimension_selector <= overworld_probability) { artifact_pool = overworld_artifacts; }
	else if (dimension_selector <= (overworld_probability + nether_probability)) { artifact_pool = nether_artifacts; }
	else { artifact_pool = end_artifacts; }

	val artifact_index = random.nextInt(0, artifact_pool.length as int);
	val artifact = artifact_pool[artifact_index];
	loot.add(artifact);
}

function overworldArtifacts() as IItemStack[]
{
	val essences = [
		<item:artifacts:umbrella>,
        <item:artifacts:plastic_drinking_hat>,
        <item:artifacts:snorkel>,
        <item:artifacts:cowboy_hat>,
        <item:artifacts:anglers_hat>,
        <item:artifacts:panic_necklace>,
        <item:artifacts:charm_of_sinking>,
        <item:artifacts:charm_of_shrinking>,
        <item:artifacts:cloud_in_a_bottle>,
        <item:artifacts:universal_attractor>,
        <item:artifacts:helium_flamingo>,
        <item:artifacts:pocket_piston>,
        <item:artifacts:onion_ring>,
        <item:artifacts:kitty_slippers>,
        <item:artifacts:running_shoes>,
        <item:artifacts:flippers>,
        <item:artifacts:whoopee_cushion>
	];

	return essences;
}

function netherArtifacts() as IItemStack[]
{
	val essences = [
        <item:artifacts:everlasting_beef>,
        <item:artifacts:anglers_hat>,
        <item:artifacts:superstitious_hat>,
        <item:artifacts:lucky_scarf>,
        <item:artifacts:scarf_of_invisibility>,
        <item:artifacts:shock_pendant>,
        <item:artifacts:flame_pendant>,
        <item:artifacts:thorn_pendant>,
        <item:artifacts:obsidian_skull>,
        <item:artifacts:fire_gauntlet>,
        <item:artifacts:aqua_dashers>,
        <item:artifacts:steadfast_spikes>,
        <item:artifacts:rooted_boots>,
        <item:artifacts:crystal_heart>,
        <item:artifacts:whoopee_cushion>
	];

	return essences;
}

function endArtifacts() as IItemStack[]
{
	val essences = [
        <item:artifacts:cross_necklace>,
        <item:artifacts:antidote_vessel>,
        <item:artifacts:chorus_totem>,
        <item:artifacts:warp_drive>,
        <item:artifacts:power_glove>,
        <item:artifacts:golden_hook>,
        <item:artifacts:whoopee_cushion>
	];

	return essences;
}