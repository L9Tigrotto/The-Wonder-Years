# The Wonder Years Changelog Version 1.0.7

## TODO

- Fix mining+ enchantment.
- Respawning animals mod.
- Move curse removal to smiting table
- Add an enchantment remove recipe (with 1 tnt).
- Make quests not team shared.
- Lower the chanch of dinding high tier equipment in nether and end (so luck is required).

## 📋 General Updates

*List administrative changes, modpack-wide modifications, and other general updates.*

- Fixed crash on chenge dimension (through portal or command).

- Known bug: tierable items crafted in the crafting terminal with `shift + left click` will be tierless. Waiting for Tom's Simple Storage response on bug report.
- Known bug: equipment comparison is not currently working with tiered items. Waiting for Equipment Compare response on bug report.
- Known bug: Anvil repair cost is currently free and is limited to a maximum of 63 `repair_cost` in metadata. Waiting for Better Enchanting response on bug report.

- Rewrote pot loot chests (now no more drop disabled essences).
- Fixed tipped arrow not having effects in some loot chests.
- Fixed only 1 variant of goat horn gets generated in pillager outpost.

- Added variants to quest's tasks.

## ⚙️ Settings Changed

*List all configuration changes organized by mod.*

**Equipment compare:**

- Disabled strict more because items with different tier are treated as separate items.

**Dynamic tooltip:**

- Changed default keybind to `left shift`.

**Fabrishot:**

- Removed separated hotkey for screenshots (`F2` only).

**FTB Quests:**

- Questbook is no more dropped on death.
- Made trofers rewards per player and not per team.

**Immersive melodies:**

- Lowered the music volume just a bit.
- Decreased the mob spawn rate with an instrument.

---

## ❌ Mods Removed

*List all mods that were removed with reasons.*

- **Trinkets**: Crash when change dimension.
- **Accessories Compatibility Layer**: Crash when change dimension.
- **Weather Settings**: Back to the vanilla raining system.

---

## ➕ Mods Added

*List all newly added mods with reasons.*

- **Trinkets Compat Layer for Accessories**: Replace Accessories Compatibility Layer.
- **FTB Filter System**: Allow to ask any item in a specific tag in quests tasks.
- **FTB XMod Compat**: Allow to ask any item in a specific tag in quests tasks.

---

## ⬆️ Mods Updated

*List all mods that were updated with their version changes.*

- **Fabric**: `0.16.14` → `v0.17.02`
