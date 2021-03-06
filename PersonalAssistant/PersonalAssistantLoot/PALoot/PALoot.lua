-- Local instances of Global tables --
local PA = PersonalAssistant
local PAC = PA.Constants
local PAL = PA.Loot
local PAHF = PA.HelperFunctions

-- ---------------------------------------------------------------------------------------------------------------------

local TraitIndexFromItemTraitType = {
    [ITEM_TRAIT_TYPE_WEAPON_POWERED] = 1,       -- 1
    [ITEM_TRAIT_TYPE_WEAPON_CHARGED] = 2,       -- 2
    [ITEM_TRAIT_TYPE_WEAPON_PRECISE] = 3,       -- 3
    [ITEM_TRAIT_TYPE_WEAPON_INFUSED] = 4,       -- 4
    [ITEM_TRAIT_TYPE_WEAPON_DEFENDING] = 5,     -- 5
    [ITEM_TRAIT_TYPE_WEAPON_TRAINING] = 6,      -- 6
    [ITEM_TRAIT_TYPE_WEAPON_SHARPENED] = 7,     -- 7
    [ITEM_TRAIT_TYPE_WEAPON_DECISIVE] = 8,      -- 8
    [ITEM_TRAIT_TYPE_WEAPON_WEIGHTED] = 8,      -- 8
    [ITEM_TRAIT_TYPE_WEAPON_NIRNHONED] = 9,     -- 26
    [ITEM_TRAIT_TYPE_WEAPON_INTRICATE] = nil,   -- 9
    [ITEM_TRAIT_TYPE_WEAPON_ORNATE] = nil,      -- 10

    [ITEM_TRAIT_TYPE_ARMOR_STURDY] = 1,         -- 11
    [ITEM_TRAIT_TYPE_ARMOR_IMPENETRABLE] = 2,   -- 12
    [ITEM_TRAIT_TYPE_ARMOR_REINFORCED] = 3,     -- 13
    [ITEM_TRAIT_TYPE_ARMOR_WELL_FITTED] = 4,    -- 14
    [ITEM_TRAIT_TYPE_ARMOR_TRAINING] = 5,       -- 15
    [ITEM_TRAIT_TYPE_ARMOR_INFUSED] = 6,        -- 16
    [ITEM_TRAIT_TYPE_ARMOR_EXPLORATION] = 7,    -- 17
    [ITEM_TRAIT_TYPE_ARMOR_PROSPEROUS] = 7,     -- 17
    [ITEM_TRAIT_TYPE_ARMOR_DIVINES] = 8,        -- 18
    [ITEM_TRAIT_TYPE_ARMOR_NIRNHONED] = 9,      -- 25
    [ITEM_TRAIT_TYPE_ARMOR_INTRICATE] = nil,    -- 20
    [ITEM_TRAIT_TYPE_ARMOR_ORNATE] = nil,       -- 19

    [ITEM_TRAIT_TYPE_JEWELRY_ARCANE] = 1,       -- 22
    [ITEM_TRAIT_TYPE_JEWELRY_HEALTHY] = 2,      -- 21
    [ITEM_TRAIT_TYPE_JEWELRY_ROBUST] = 3,       -- 23
    [ITEM_TRAIT_TYPE_JEWELRY_TRIUNE] = 4,       -- 30
    [ITEM_TRAIT_TYPE_JEWELRY_INFUSED] = 5,      -- 33
    [ITEM_TRAIT_TYPE_JEWELRY_PROTECTIVE] = 6,   -- 32
    [ITEM_TRAIT_TYPE_JEWELRY_SWIFT] = 7,        -- 28
    [ITEM_TRAIT_TYPE_JEWELRY_HARMONY] = 8,      -- 29
    [ITEM_TRAIT_TYPE_JEWELRY_BLOODTHIRSTY] = 9, -- 31
    [ITEM_TRAIT_TYPE_JEWELRY_INTRICATE] = nil,  -- 27
    [ITEM_TRAIT_TYPE_JEWELRY_ORNATE] = nil,     -- 24
}

local ResearchLineIndexFromType = {
    [CRAFTING_TYPE_CLOTHIER] = {
        ARMOR = {
            -- add +7 for "Medium" armor (instead of "Light")
            [EQUIP_TYPE_CHEST] = 1,             -- 3
            [EQUIP_TYPE_FEET] = 2,              -- 10
            [EQUIP_TYPE_HAND] = 3,              -- 13
            [EQUIP_TYPE_HEAD] = 4,              -- 1
            [EQUIP_TYPE_LEGS] = 5,              -- 9
            [EQUIP_TYPE_SHOULDERS] = 6,         -- 4
            [EQUIP_TYPE_WAIST] = 7,             -- 8
        },
    },
    [CRAFTING_TYPE_WOODWORKING] = {
        WEAPON = {
            [WEAPONTYPE_BOW] = 1,               -- 8
            [WEAPONTYPE_FIRE_STAFF] = 2,        -- 12
            [WEAPONTYPE_FROST_STAFF] = 3,       -- 13
            [WEAPONTYPE_LIGHTNING_STAFF] = 4,   -- 15
            [WEAPONTYPE_HEALING_STAFF] = 5,     -- 9
            [WEAPONTYPE_SHIELD] = 6,            -- 7
        }
    },
    [CRAFTING_TYPE_BLACKSMITHING] = {
        WEAPON = {
            [WEAPONTYPE_AXE] = 1,               -- 1
            [WEAPONTYPE_HAMMER] = 2,            -- 2
            [WEAPONTYPE_SWORD] = 3,             -- 3
            [WEAPONTYPE_TWO_HANDED_AXE] = 4,    -- 5
            [WEAPONTYPE_TWO_HANDED_HAMMER] = 5, -- 6
            [WEAPONTYPE_TWO_HANDED_SWORD] = 6,  -- 4
            [WEAPONTYPE_DAGGER] = 7,            -- 11
        },
        ARMOR = {
            [EQUIP_TYPE_CHEST] = 8,             -- 3
            [EQUIP_TYPE_FEET] = 9,              -- 10
            [EQUIP_TYPE_HAND] = 10,             -- 13
            [EQUIP_TYPE_HEAD] = 11,             -- 1
            [EQUIP_TYPE_LEGS] = 12,             -- 9
            [EQUIP_TYPE_SHOULDERS] = 13,        -- 4
            [EQUIP_TYPE_WAIST] = 14,            -- 8
        }
    },
    [CRAFTING_TYPE_JEWELRYCRAFTING] = {
        ARMOR = {
            [EQUIP_TYPE_NECK] = 1,              -- 2
            [EQUIP_TYPE_RING] = 2,              -- 12
        },
    },
}

local WoodworkingWeaponTypes = {
    [WEAPONTYPE_BOW] = true,
    [WEAPONTYPE_FIRE_STAFF] = true,
    [WEAPONTYPE_FROST_STAFF] = true,
    [WEAPONTYPE_HEALING_STAFF] = true,
    [WEAPONTYPE_LIGHTNING_STAFF] = true,
    [WEAPONTYPE_SHIELD] = true,
}

local BlacksmithingWeaponTypes = {
    [WEAPONTYPE_AXE] = true,
    [WEAPONTYPE_DAGGER] = true,
    [WEAPONTYPE_HAMMER] = true,
    [WEAPONTYPE_SWORD] = true,
    [WEAPONTYPE_TWO_HANDED_AXE] = true,
    [WEAPONTYPE_TWO_HANDED_HAMMER] = true,
    [WEAPONTYPE_TWO_HANDED_SWORD] = true,
}

local JewelcraftingEquipTypes = {
    [EQUIP_TYPE_RING] = true,
    [EQUIP_TYPE_NECK] = true,
}

local function GetCraftingTypeAndResearchLineIndexFromItemLink(itemLink)
    local itemType = GetItemLinkItemType(itemLink)
    -- Apparel
    if itemType == ITEMTYPE_ARMOR then
        -- check equipType to distinguish Jewelry from other Apparel
        local equipType = GetItemLinkEquipType(itemLink)
        if JewelcraftingEquipTypes[equipType] then
            return CRAFTING_TYPE_JEWELRYCRAFTING, ResearchLineIndexFromType[CRAFTING_TYPE_JEWELRYCRAFTING].ARMOR[equipType]
        else
            -- check armorType to distinguish Light/Medium/Heavy Armor
            local armorType = GetItemLinkArmorType(itemLink)
            if armorType == ARMORTYPE_LIGHT then
                return CRAFTING_TYPE_CLOTHIER, ResearchLineIndexFromType[CRAFTING_TYPE_CLOTHIER].ARMOR[equipType]
            elseif armorType == ARMORTYPE_MEDIUM then
                return CRAFTING_TYPE_CLOTHIER, ResearchLineIndexFromType[CRAFTING_TYPE_CLOTHIER].ARMOR[equipType] + 7
            elseif armorType == ARMORTYPE_HEAVY then
                return CRAFTING_TYPE_BLACKSMITHING, ResearchLineIndexFromType[CRAFTING_TYPE_BLACKSMITHING].ARMOR[equipType]
            end
        end
        -- Weapon
    elseif itemType == ITEMTYPE_WEAPON then
        -- check weaponType to distinguish between Blacksmithing and Woodworking
        local weaponType = GetItemLinkWeaponType(itemLink)
        if BlacksmithingWeaponTypes[weaponType] then
            return CRAFTING_TYPE_BLACKSMITHING, ResearchLineIndexFromType[CRAFTING_TYPE_BLACKSMITHING].WEAPON[weaponType]
        elseif WoodworkingWeaponTypes[weaponType] then
            return CRAFTING_TYPE_WOODWORKING, ResearchLineIndexFromType[CRAFTING_TYPE_WOODWORKING].WEAPON[weaponType]
        end
    end
    -- if no match found, return nil
    return nil
end


-- init with current numUsedSlots
local _prevUsedSlots = GetNumBagUsedSlots(BAG_BACKPACK)
local _inventoryCountPattern = GetString(SI_PA_PATTERN_INVENTORY_COUNT)

-- ---------------------------------------------------------------------------------------------------------------------

local function isTraitBeingResearched(itemLink)
    local craftingSkillType, researchLineIndex = GetCraftingTypeAndResearchLineIndexFromItemLink(itemLink)
    local traitType = GetItemLinkTraitInfo(itemLink)
    local traitIndex = TraitIndexFromItemTraitType[traitType]

    -- try to get remaining research time
    local duration = GetSmithingResearchLineTraitTimes(craftingSkillType, researchLineIndex, traitIndex)

    -- either the duration is returned (being researched); or nil (not being researched)
    return duration ~= nil
end

local function OnInventorySingleSlotUpdate(eventCode, bagId, slotIndex, isNewItem, itemSoundCategory, inventoryUpdateReason, stackCountChange)
   if PAHF.hasActiveProfile() then
       local PALootSavedVars = PAL.SavedVars
        local usedSlots = GetNumBagUsedSlots(BAG_BACKPACK)

        -- check if addon is enabled
        if PALootSavedVars.enabled then
            local itemType = GetItemType(bagId, slotIndex)
            local itemLink = GetItemLink(bagId, slotIndex, LINK_STYLE_BRACKETS)
            local itemFilterType = GetItemFilterTypeInfo(bagId, slotIndex)

            -- Recipes
            if itemType == ITEMTYPE_RECIPE then
                if PALootSavedVars.LootRecipes.unknownRecipeMsg then
                    local isRecipeKnown = IsItemLinkRecipeKnown(itemLink)
                    if not isRecipeKnown then
                        PAL.println(SI_PA_CHAT_LOOT_RECIPE_UNKNOWN, itemLink)
                    else
                        -- Recipe is already known; do nothing for now
                        PAHF.debugln("known recipe looted: %s", itemLink)
                    end
                end

            -- Motifs
            elseif itemType == ITEMTYPE_RACIAL_STYLE_MOTIF then
                if PALootSavedVars.LootMotifs.unknownMotifMsg then
                    local isBook = IsItemLinkBook(itemLink)
                    if isBook then
                        local isKnown= IsItemLinkBookKnown(itemLink)
                        if not isKnown then
                            PAL.println(SI_PA_CHAT_LOOT_MOTIF_UNKNOWN, itemLink)
                        else
                            -- Motif is already known; do nothing for now
                            PAHF.debugln("known mnotif looted: %s", itemLink)
                        end
                    end
                end

            -- Apparel & Weapons
            elseif itemFilterType == ITEMFILTERTYPE_ARMOR or itemFilterType == ITEMFILTERTYPE_WEAPONS then
                if PALootSavedVars.LootApparelWeapons.unknownTraitMsg then
                    local canBeResearched = CanItemLinkBeTraitResearched(itemLink)
    --                local isBeingResearched = isTraitBeingResearched(itemLink)
                    if canBeResearched then
                        local traitType, traitDescription = GetItemLinkTraitInfo(itemLink)
                        local traitName = GetString("SI_ITEMTRAITTYPE", traitType)
                        PAL.println(SI_PA_CHAT_LOOT_TRAIT_UNKNOWN, itemLink, traitName)
                    else
                        -- Trait already researched
                        PAHF.debugln("item with known trait looted: %s", itemLink)
                    end
                end
            end

            -- after all itemTypes are checked, see how much space is left in bag (only if usedSlots has increased)
            if usedSlots > _prevUsedSlots and PALootSavedVars.lowInventorySpaceWarning then
                local freeSlots = GetNumBagFreeSlots(BAG_BACKPACK)
                local formatted = zo_strformat(_inventoryCountPattern, freeSlots)
                local lowInventorySpaceThreshold = PALootSavedVars.lowInventorySpaceThreshold

                if freeSlots == 0 then
                    -- if no free slots, have a orange-red message
                    PAL.println(formatted, PAC.COLORS.ORANGE_RED, PAC.COLORS.ORANGE_RED)
                elseif freeSlots <= lowInventorySpaceThreshold then
                    if freeSlots <= 5 then
                        -- if at or below 5 free slots, have a orange message
                        PAL.println(formatted, PAC.COLORS.ORANGE, PAC.COLORS.ORANGE)
                    else
                        -- in all other cases, have a yellow message
                        PAL.println(formatted, PAC.COLORS.DEFAULT, PAC.COLORS.DEFAULT)
                    end
                end
            end
        end

       -- update the stored number of previously used slots
       _prevUsedSlots = usedSlots end
end


local function UpdateNumBagUsedSlots(eventCode)
    -- update the number of used stacks in case player does stack all items in backpack (or if items are sold)
    -- this is done 100ms after event was triggered (during test it took ~30ms until the value from GetNumBagUsedSlots
    -- was correct)
    zo_callLater(function()
        _prevUsedSlots = GetNumBagUsedSlots(BAG_BACKPACK)
    end, 100)
end


-- ---------------------------------------------------------------------------------------------------------------------
-- Export
PA.Loot = PA.Loot or {}
PA.Loot.TraitIndexFromItemTraitType = TraitIndexFromItemTraitType
PA.Loot.isTraitBeingResearched = isTraitBeingResearched
PA.Loot.OnInventorySingleSlotUpdate = OnInventorySingleSlotUpdate
PA.Loot.UpdateNumBagUsedSlots = UpdateNumBagUsedSlots
