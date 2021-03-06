local PAC = PersonalAssistant.Constants
-- =================================================================================================================
-- == MENU/PANEL TEXTS == --
-- -----------------------------------------------------------------------------------------------------------------
-- PARepair Menu --
SafeAddString(SI_PA_MENU_REPAIR_DESCRIPTION, "PARepair repariert deine getragene Ausrüstung und lädt Waffen für dich wieder auf, sei es beim Händler oder unterwegs.", 1)

SafeAddString(SI_PA_MENU_REPAIR_ENABLE, table.concat({PAC.COLORS.LIGHT_BLUE, "Automatische Reparatur getragener Ausrüstung"}), 1)

SafeAddString(SI_PA_MENU_REPAIR_GOLD_HEADER, table.concat({" ", PAC.ICONS.CURRENCY[CURT_MONEY].NORMAL, "  ", "Reparatur mit ", GetCurrencyName(CURT_MONEY)}), 1)
SafeAddString(SI_PA_MENU_REPAIR_GOLD_ENABLE, table.concat({"Repariere Ausrüstung mit ", GetCurrencyName(CURT_MONEY), "?"}), 1)
SafeAddString(SI_PA_MENU_REPAIR_GOLD_ENABLE_T, "Wenn ein Händler besucht wird, werden getragene Ausrüstungen automatisch repariert sofern deren Haltbarkeit genau auf oder unter dem definierten Schwellenwert liegt", 1)
SafeAddString(SI_PA_MENU_REPAIR_GOLD_DURABILITY, "Haltbarkeitsschwelle in %", 1)
SafeAddString(SI_PA_MENU_REPAIR_GOLD_DURABILITY_T, "Repariere getragene Ausrüstung nur wenn deren Haltbarkeit genau auf oder unter dem definierten Schwellenwert liegt", 1)

SafeAddString(SI_PA_MENU_REPAIR_REPAIRKIT_HEADER, table.concat({" ", PAC.ICONS.ITEMS.REPAIRKIT.NORMAL, "  ", "Reparatur mit ", GetString(SI_PA_MENU_BANKING_INDIVIDUAL_REPAIRKIT)}), 1)
SafeAddString(SI_PA_MENU_REPAIR_REPAIRKIT_ENABLE, table.concat({"Repariere Ausrüstung mit ", GetString(SI_PA_MENU_BANKING_INDIVIDUAL_REPAIRKIT), "?"}), 1)
SafeAddString(SI_PA_MENU_REPAIR_REPAIRKIT_ENABLE_T, "Unterwegs werden getragenen Ausrüstungen automatisch repariert wenn deren Haltbarkeit genau auf oder unter dem definierten Schwellenwert liegt", 1)
SafeAddString(SI_PA_MENU_REPAIR_REPAIRKIT_DURABILITY, "Schwellenwert der Haltbarkeit in %", 1)
SafeAddString(SI_PA_MENU_REPAIR_REPAIRKIT_DURABILITY_T, "Repariere getragene Gegenstände nur wenn deren Haltbarkeit genau auf oder unter dem definierten Schwellenwert liegt", 1)
--SafeAddString(SI_PA_MENU_REPAIR_REPAIRKIT_CROWN_ENABLE, "tbd", 1)
--SafeAddString(SI_PA_MENU_REPAIR_REPAIRKIT_CROWN_ENABLE_T, "tbd", 1)
--SafeAddString(SI_PA_MENU_REPAIR_REPAIRKIT_CROWN_DURABILITY, "tbd", 1)
--SafeAddString(SI_PA_MENU_REPAIR_REPAIRKIT_CROWN_DURABILITY_T, "tbd", 1)
SafeAddString(SI_PA_MENU_REPAIR_REPAIRKIT_LOW_KIT_WARNING, "Warne wenn Reparaturmat. ausgehen", 1)
SafeAddString(SI_PA_MENU_REPAIR_REPAIRKIT_LOW_KIT_WARNING_T, table.concat({"Zeige eine Warnung im Chatfenster an wenn dir die ", GetString(SI_PA_MENU_BANKING_INDIVIDUAL_REPAIRKIT), " ausgehen. Wenn du keine mehr hast wird maximal alle 10 Minuten eine Warnung angezeigt."}), 1)
SafeAddString(SI_PA_MENU_REPAIR_REPAIRKIT_LOW_KIT_THRESHOLD, "Schwellenwert für Reparaturmat.", 1)
SafeAddString(SI_PA_MENU_REPAIR_REPAIRKIT_LOW_KIT_THRESHOLD_T, table.concat({"Wenn die Anzahl verbleibender ", GetString(SI_PA_MENU_BANKING_INDIVIDUAL_REPAIRKIT), " auf oder unter diesen Schwellenwert fällt, ird eine Meldung im Chat ausgegeben"}), 1)

SafeAddString(SI_PA_MENU_REPAIR_RECHARGE_HEADER, table.concat({" ", PAC.ICONS.ITEMS.SOULGEM.NORMAL, "  ", "Waffen mit ", zo_strformat(GetString("SI_PA_ITEMTYPE", ITEMTYPE_SOUL_GEM), 2), "n aufladen"}), 1)
SafeAddString(SI_PA_MENU_REPAIR_RECHARGE_ENABLE, table.concat({"Getragene Waffen mit ", zo_strformat(GetString("SI_PA_ITEMTYPE", ITEMTYPE_SOUL_GEM), 2), "n aufladen?"}), 1)
SafeAddString(SI_PA_MENU_REPAIR_RECHARGE_ENABLE_T, "Getragene Waffen aufladen wenn deren Aufladung komplett aufgebraucht ist. Es werden zuerst Kronen-Seelensteine verwendet und erst danach reguläre Seelensteine.", 1)
--SafeAddString(SI_PA_MENU_REPAIR_RECHARGE_CHATMODE, "tbd", 1)
--SafeAddString(SI_PA_MENU_REPAIR_RECHARGE_CHATMODE_T, "tbd", 1)
SafeAddString(SI_PA_MENU_REPAIR_RECHARGE_LOW_GEM_WARNING, table.concat({"Warne wenn ", zo_strformat(GetString("SI_PA_ITEMTYPE", ITEMTYPE_SOUL_GEM), 2), " ausgehen"}), 1)
SafeAddString(SI_PA_MENU_REPAIR_RECHARGE_LOW_GEM_WARNING_T, table.concat({"Zeige eine Warnung im Chatfenster an wenn dir die ", zo_strformat(GetString("SI_PA_ITEMTYPE", ITEMTYPE_SOUL_GEM), 2), " ausgehen. Wenn du keine mehr hast wird maximal alle 10 Minuten eine Warnung angezeigt."}), 1)
SafeAddString(SI_PA_MENU_REPAIR_RECHARGE_LOW_GEM_THRESHOLD, table.concat({"Schwellenwert für ", GetString("SI_ITEMTYPE", ITEMTYPE_SOUL_GEM)}), 1)
SafeAddString(SI_PA_MENU_REPAIR_RECHARGE_LOW_GEM_THRESHOLD_T, table.concat({"Wenn die Anzahl verbleibender ", zo_strformat(GetString("SI_PA_ITEMTYPE", ITEMTYPE_SOUL_GEM), 2), " auf oder unter diesen Schwellenwert fällt, wird eine Meldung im Chat ausgegeben"}), 1)

-- =================================================================================================================
-- == CHAT OUTPUTS == --
-- -----------------------------------------------------------------------------------------------------------------
-- PARepair --
SafeAddString(SI_PA_CHAT_REPAIR_SUMMARY_FULL, table.concat({PAC.COLORED_TEXTS.PAR, "Repariere getragene Ausrüstung für ", PAC.COLORS.RED, "- %d ", PAC.ICONS.CURRENCY[CURT_MONEY].SMALL}), 1)
SafeAddString(SI_PA_CHAT_REPAIR_SUMMARY_PARTIAL, table.concat({PAC.COLORED_TEXTS.PAR, "Repariere getragene Ausrüstung für ", PAC.COLORS.RED, "- %d ", PAC.ICONS.CURRENCY[CURT_MONEY].SMALL, PAC.COLORS.DEFAULT, " (%d ", PAC.ICONS.CURRENCY[CURT_MONEY].SMALL, " fehlend)"}), 1)

SafeAddString(SI_PA_CHAT_REPAIR_REPAIRKIT_REPAIRED, table.concat({PAC.COLORED_TEXTS.PAR, "Repariere %s ", PAC.COLORS.WHITE, "(%d%%)", PAC.COLORS.DEFAULT, " mit %s"}), 1)