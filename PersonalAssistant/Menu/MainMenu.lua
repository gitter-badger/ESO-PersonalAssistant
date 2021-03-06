-- Local instances of Global tables --
local PA = PersonalAssistant
local PAC = PA.Constants
local PAMenuHelper = PA.MenuHelper
local PAMenuFunctions = PA.MenuFunctions
local PAMenuDefaults = PA.MenuDefaults

local LAM2 = LibStub("LibAddonMenu-2.0")

local PAGeneralPanelData = {
    type = "panel",
    name = "PersonalAssistant",
    displayName = GetString(SI_PA_MENU_TITLE),
    author = "Klingo",
    version = PAC.ADDON_VERSION,
    website = "http://www.esoui.com/downloads/info381-PersonalAssistant",
    slashCommand = "/pa",
    registerForRefresh = true,
    registerForDefaults = true,
}

local PAGeneralOptionsTable = setmetatable({}, { __index = table })

-- ---------------------------------------------------------------------------------------------------------------------

local function createPAGeneralMenu()
    PAGeneralOptionsTable:insert({
        type = "header",
        name = GetString(SI_PA_MENU_GENERAL_HEADER)
    })

    PAGeneralOptionsTable:insert({
        type = "description",
        text = GetString(SI_PA_MENU_GENERAL_DESCRIPTION),
    })

    PAGeneralOptionsTable:insert({
        type = "dropdown",
        name = GetString(SI_PA_MENU_GENERAL_ACTIVE_PROFILE),
        tooltip = GetString(SI_PA_MENU_GENERAL_ACTIVE_PROFILE_T),
        choices = PAMenuHelper.getProfileList(),
        choicesValues = PAMenuHelper.getProfileListValues(),
        width = "half",
        getFunc = PAMenuFunctions.PAGeneral.getActiveProfile,
        setFunc = PAMenuFunctions.PAGeneral.setActiveProfile,
        reference = "PERSONALASSISTANT_PROFILEDROPDOWN",
    })

    PAGeneralOptionsTable:insert({
        type = "editbox",
        name = GetString(SI_PA_MENU_GENERAL_ACTIVE_PROFILE_RENAME),
        width = "half",
        getFunc = PAMenuFunctions.PAGeneral.getActiveProfileRename,
        setFunc = PAMenuFunctions.PAGeneral.setActiveProfileRename,
        disabled = PAMenuFunctions.PAGeneral.isNoProfileSelected,
    })

    PAGeneralOptionsTable:insert({
        type = "checkbox",
        name = GetString(SI_PA_MENU_GENERAL_SHOW_WELCOME),
        getFunc = PAMenuFunctions.PAGeneral.getWelcomeMessageSetting,
        setFunc = PAMenuFunctions.PAGeneral.setWelcomeMessageSetting,
        disabled = PAMenuFunctions.PAGeneral.isNoProfileSelected,
        default = PAMenuDefaults.PAGeneral.welcomeMessage,
    })

    local houseId = GetHousingPrimaryHouse()
    if houseId then
        PAGeneralOptionsTable:insert({
            type = "divider",
            alpha = 0.5,
        })

        PAGeneralOptionsTable:insert({
            type = "button",
            name = GetString(SI_PA_MENU_GENERAL_TELEPORT_PRIMARY_HOUSE),
            width = "half",
            func = PAMenuFunctions.PAGeneral.teleportToPrimaryHouse,
            disabled = PAMenuFunctions.PAGeneral.isTeleportToPrimaryHouseDisabled,
            isDangerous = true,
            warning = GetString(SI_PA_MENU_GENERAL_TELEPORT_PRIMARY_HOUSE_W),
        })
    end

--    PAGeneralOptionsTable:insert({
--        type = "button",
--        name = "English",
--        func = function() SetCVar("language.2", "en") end,
--        isDangerous = true,
--        warning = "The Game language will be changed to English!",
--    })
--
--    PAGeneralOptionsTable:insert({
--        type = "button",
--        name = "German",
--        func = function() SetCVar("language.2", "de") end,
--        isDangerous = true,
--        warning = "The Game language will be changed to German!",
--    })
--
--    PAGeneralOptionsTable:insert({
--        type = "button",
--        name = "French",
--        func = function() SetCVar("language.2", "fr") end,
--        isDangerous = true,
--        warning = "The Game language will be changed to French!",
--    })

end

-- =================================================================================================================

local function createOptions()
    -- Create and register the General Menu
    createPAGeneralMenu()
    LAM2:RegisterAddonPanel("PersonalAssistantAddonOptions", PAGeneralPanelData)
    LAM2:RegisterOptionControls("PersonalAssistantAddonOptions", PAGeneralOptionsTable)
end

-- Export
PA.MainMenu = {
    createOptions = createOptions
}
