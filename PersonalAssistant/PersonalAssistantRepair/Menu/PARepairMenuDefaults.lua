-- Local instances of Global tables --
local PA = PersonalAssistant

-- ---------------------------------------------------------------------------------------------------------------------

local PARepairMenuDefaults = {
    autoRepairEnabled = true,

    -- ---------------------------------------------

    RepairEquipped = {
        repairWithGold = true,
        repairWithGoldDurabilityThreshold = 75,

        repairWithRepairKit = false,
        repairWithRepairKitThreshold = 10,

        repairWithCrownRepairKit = false,
        repairWithCrownRepairKitThreshold = 10,

        lowRepairKitWarning = true,
        lowRepairKitThreshold = 10,
    },

    -- ---------------------------------------------

    RechargeWeapons = {
        useSoulGems = false,
        lowSoulGemWarning = true,
        lowSoulGemThreshold = 10,
    },

    -- ---------------------------------------------

    silentMode = false,
}

-- ---------------------------------------------------------------------------------------------------------------------
-- Export
PA.MenuDefaults = PA.MenuDefaults or {}
PA.MenuDefaults.PARepair = PARepairMenuDefaults