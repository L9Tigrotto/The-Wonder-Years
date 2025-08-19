# The Wonder Years Changelog Version 1.0.7

## TODO

- Fix mining+ enchantment.
- Add an enchantment remove recipe (with 1 tnt).
- Make quests not team shared.

## 📋 General Updates

*List administrative changes, modpack-wide modifications, and other general updates.*

- Fixed crash on change dimension (through portal or command).

- Known bug: tierable items crafted in the crafting terminal with `shift + left click` will be tierless. Waiting for Tom's Simple Storage response on bug report.
- Known bug: equipment comparison is not currently working with tiered items. Waiting for Equipment Compare response on bug report.
- Known bug: Anvil repair cost is currently free and is limited to a maximum of 63 `repair_cost` in metadata. Waiting for Better Enchanting response on bug report.

- Rewrote pot loot chests (now no longer drop disabled essences).
- Fixed tipped arrow not having effects in some loot chests.
- Fixed only 1 variant of goat horn gets generated in pillager outpost.
- Changed item tier distribution to be equal to the overworld one. In the Nether common and uncommon tiers are discarded. In the End common, uncommon and rare tiers are discarded.

- Added variants to quest's tasks.

## ⚙️ Settings Changed

*List all configuration changes organized by mod.*

**Dynamic tooltip:**

- Changed default keybind to `left shift`.

**Fabrishot:**

- Removed separated hotkey for screenshots (`F2` only).

**FTB Quests:**

- Questbook is no longer dropped on death.
- Made trofers rewards per player and not per team.

**Immersive melodies:**

- Lowered the music volume just a bit.
- Decreased the mob spawn rate with an instrument.

---

## ❌ Mods Removed

*List all mods that were removed with reasons.*

- **Trinkets**: Crash when changing dimension.
- **Accessories Compatibility Layer**: Crash when changing dimension.
- **Weather Settings**: Back to the vanilla raining system.

---

## ➕ Mods Added

*List all newly added mods with reasons.*

- **Trinkets Compat Layer for Accessories**: Replaces Accessories Compatibility Layer.
- **FTB Filter System**: Allow asking for any item in a specific tag in quests tasks.
- **FTB XMod Compat**: Allow asking for any item in a specific tag in quests tasks.
- **Respawning Animals**: Animals will now vanish and appear again wherever you go. Animals that have e.g. been bred or tamed will of course stay with you!

---

## ⬆️ Mods Updated

*List all mods that were updated with their version changes.*

- **Fabric**: `v0.16.14` → `v0.17.02`
- **Storage Drawers**: `v13.9.2` → `v13.10.0`
- **Tectonic**: `v3.0.7` → `v3.0.10`
- **DashLoader**: `v5.0.0` → `v5.1.0`
- **Underlay**: `v0.9.5` → `v0.9.6`
- **Archievements Optimizer**: `v2.0.0` → `v2.1.0`
- **FTB Chunks**: `v2101.1.9` → `v2101.1.10`
- **Fabric Language Kotlin**: `v1.13.4` → `v1.13.5`
