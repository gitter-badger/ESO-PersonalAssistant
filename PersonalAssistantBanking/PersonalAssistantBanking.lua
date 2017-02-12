-- Addon: PersonalAssistant.Banking
-- Developer: Klingo

PAB = {}
PAB.AddonName = "PersonalAssistantBanking"
PAB.AddonVersion = "1.0"

-- init default values
function PAB.initDefaults()
    -- initialize the multi-profile structure
    PAB.Banking_Defaults = {}
    -- -----------------------------------------------------
    -- default values for PABanking
    for profileNo = 1, PAG_MAX_PROFILES do
        PAB.Banking_Defaults[profileNo] = {
            ItemTypes = {},
            ItemTypesAdvanced = {}
        }
        PAB.Banking_Defaults[profileNo].enabled = true
        PAB.Banking_Defaults[profileNo].gold = true
        PAB.Banking_Defaults[profileNo].goldDepositInterval = 300
        PAB.Banking_Defaults[profileNo].goldDepositPercentage = 100
        PAB.Banking_Defaults[profileNo].goldTransactionStep = "1"
        PAB.Banking_Defaults[profileNo].goldMinToKeep = 250
        PAB.Banking_Defaults[profileNo].goldWithdraw = false
        PAB.Banking_Defaults[profileNo].goldLastDeposit = 0
        PAB.Banking_Defaults[profileNo].items = false
        PAB.Banking_Defaults[profileNo].itemsDepStackType = PAB_STACKING_FULL
        PAB.Banking_Defaults[profileNo].itemsWitStackType = PAB_STACKING_FULL
        PAB.Banking_Defaults[profileNo].itemsTimerInterval = 300
        PAB.Banking_Defaults[profileNo].itemsJunkSetting = PAC_ITEMTYPE_IGNORE
        PAB.Banking_Defaults[profileNo].hideNoDepositMsg = false
        PAB.Banking_Defaults[profileNo].hideAllMsg = false

        -- default values for ItemTypes (only prepare defaults for enabled itemTypes)
        -- deposit=true, withdrawal=false
        for i = 1, #PAItemTypes do
            if PAItemTypes[i] ~= "" then
                PAB.Banking_Defaults[profileNo].ItemTypes[PAItemTypes[i]] = 0
            end
        end

        -- default values for advanced ItemTypes
        for itemTypeAdvancedNo = 0, #PAItemTypesAdvanced do	-- amount of advanced item types
            PAB.Banking_Defaults[profileNo].ItemTypesAdvanced[itemTypeAdvancedNo] = {
                Key = {},
                Value = {}
            }
        end
        PAB.Banking_Defaults[profileNo].ItemTypesAdvanced[0].Key = PAC_OPERATOR_NONE		-- 0 = Lockpick
        PAB.Banking_Defaults[profileNo].ItemTypesAdvanced[0].Value = 100					-- 0 = Lockpick
    end
end


-- init saved variables and register Addon
function PAB.initAddon(eventCode, addOnName)
    if addOnName ~= PAB.AddonName then
        return
    end

    -- addon load started - unregister event
    PAEM.UnregisterForEvent(PAB.AddonName, EVENT_ADD_ON_LOADED)
	
	-- initialize the default values
	PAB.initDefaults()

    -- gets values from SavedVars, or initialises with default values
    PA.savedVars.Banking = ZO_SavedVars:NewAccountWide("PersonalAssistantBanking_SavedVariables", 1, "Banking", PAB.Banking_Defaults)

    -- register PABanking
    PAEM.RegisterForEvent(PAB.AddonName, EVENT_OPEN_BANK, PAB.OnBankOpen)
    PAEM.RegisterForEvent(PAB.AddonName, EVENT_CLOSE_BANK, PAB.OnBankClose)
end

PAEM.RegisterForEvent(PAB.AddonName, EVENT_ADD_ON_LOADED, PAB.initAddon)