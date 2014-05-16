if ResourceBundle == nil then ResourceBundle = {} end
if ResourceBundle.de == nil then ResourceBundle.de = {} end

-- Welcome Messages --								-- Type '/pa' for GUI."
ResourceBundle.de["Welcome_NoSupport"] 				= PAC_COL_YELLOW.."P"..PAC_COL_WHITE.."ersonal"..PAC_COL_YELLOW.."A"..PAC_COL_WHITE.."ssistant"..PAC_COL_YELLOW.." zu Deinen Diensten!   -   (noch) keine Lokalisierung für (%s) vorhanden."
ResourceBundle.de["Welcome_Support"] 				= PAC_COL_YELLOW.."P"..PAC_COL_WHITE.."ersonal"..PAC_COL_YELLOW.."A"..PAC_COL_WHITE.."ssistant"..PAC_COL_YELLOW.." zu Deinen Diensten!"

-- PARepair --
ResourceBundle.de["PAR_FullRepair"] 				= "PARepair: Alle %s Gegenstände für %d Gold repariert."
ResourceBundle.de["PAR_PartialRepair"] 				= "PARepair: %d / %d %s Gegenstände für %d Gold repariert. (Nicht genug Gold vorhanden)"
ResourceBundle.de["PAR_NoGoldToRepair"] 			= "PARepair: Nicht genug gold um %d %s Gegenstände zu reparieren."
ResourceBundle.de["PAR_NoRepair"] 					= "PARepair: Nichts zu reparieren"

-- PABanking --
ResourceBundle.de["PAB_GoldDepositet"] 				= "PABanking: %d Gold eingelagert."
ResourceBundle.de["PAB_GoldWithdrawn"] 				= "PABanking: %d Gold abgehoben."
ResourceBundle.de["PAB_GoldWithdrawnInsufficient"] 	= "PABanking: %d / %d Gold abgehoben. (Nicht genug Gold in Truhe)"

ResourceBundle.de["PAB_ItemMovedTo"] 				= "%d x %s wurde in %s übertragen."	-- FIXME: Grammatik falsch
ResourceBundle.de["PAB_ItemNotMovedTo"] 			= "%d x %s wurde NICHT in %s übertragen."	-- FIXME: Grammatik falsch
ResourceBundle.de["PAB_ItemMovedToFailed"] 			= "FEHLER: %s konnte NICHT in %s übertragen werden."	-- FIXME: Grammatik falsch

ResourceBundle.de["PAB_NoSpaceInFor"] 				= "PABanking: Nicht genug Platz in %s für: %s"	-- FIXME: Grammatik falsch
ResourceBundle.de["PAB_NoSpaceToOpen"] 				= "PABanking: Nicht genug Platz in %s um %s zu öffnen."	-- FIXME: Grammatik falsch
ResourceBundle.de["PAB_NoDeposit"] 					= "PABanking: Nichts zum Einlagern."

ResourceBundle.de["PAB_ItemType_None"] 				= "-"
ResourceBundle.de["PAB_ItemType_Deposit"]			= "Einlagern"
ResourceBundle.de["PAB_ItemType_Withdrawal"]		= "Abheben"

ResourceBundle.de["PAB_Hireling_UseItem"] 			= "PABanking: Öffne %s."
ResourceBundle.de["PAB_Hireling_Blacksmith"] 		= "Schmiedes"
ResourceBundle.de["PAB_Hireling_Clothier"] 			= "Tuchmachers"
ResourceBundle.de["PAB_Hireling_Enchanter"] 		= "Verzauberers"
ResourceBundle.de["PAB_Hireling_Woodworker"] 		= "Holzarbeiters"

-- MainMenu --
ResourceBundle.de["MMenu_Title"] 					= "|cFFD700P|rersonal|cFFD700A|rssistant"

-- PARMenu --
ResourceBundle.de["PARMenu_Header"] 				= "|cFFD700PA R|repair"
ResourceBundle.de["PARMenu_Enable"] 				= "|cB0B0FFAktiviere automatische Reparatur|r"
ResourceBundle.de["PARMenu_Enable_T"] 				= "Soll die automatische Reparatur aktiviert werden?"
ResourceBundle.de["PARMenu_RepairEq"] 				= "Repariere ausgerüstete Gegenstände"
ResourceBundle.de["PARMenu_RepairEq_T"] 			= "Sollen ausgerüstete Gegenstände repariert werden?"
ResourceBundle.de["PARMenu_RepairEqDura"] 			= "- Haltbarkeitsschwelle in %"
ResourceBundle.de["PARMenu_RepairEqDura_T"] 		= "Repariere ausgerüstete Gegenstände nur, wenn sie genau auf oder unter der definierten Haltbarkeitsschwelle sind."
ResourceBundle.de["PARMenu_RepairBa"]				= "Repariere Gegenstände im Inventar"
ResourceBundle.de["PARMenu_RepairBa_T"] 			= "Sollen Gegenstäde die im Inventar sind repariert werden?"
ResourceBundle.de["PARMenu_RepairBaDura"] 			= "- Haltbarkeitsschwelle in %"
ResourceBundle.de["PARMenu_RepairBaDura_T"] 		= "Repariere Gegenstände im Inventar nur, wenn sie genau auf oder unter der definierten Haltbarkeitsschwelle sind."
ResourceBundle.de["PARMenu_HideNoRepair"] 			= "Blende 'Nichts zu reparieren' aus"
ResourceBundle.de["PARMenu_HideNoRepair_T"] 		= "Blendet die Meldung 'Nichts zu reparieren' aus. Angefallene Reparaturkosten werden jedoch weiterhin ausgegeben."
ResourceBundle.de["PARMenu_HideAll"] 				= "Blende alle Meldungen aus"
ResourceBundle.de["PARMenu_HideAll_T"] 				= "Ruhe-Modus: Keine Meldungen werden mehr angezeigt. Die Reparaturkosten werden auch nicht mehr ausgegeben."

-- PABMenu --
ResourceBundle.de["PABMenu_Header"] 				= "|cFFD700PA B|ranking"
ResourceBundle.de["PABMenu_Enable"] 				= "|cB0B0FFAktiviere automatisches Banking|r"
ResourceBundle.de["PABMenu_Enable_T"] 				= "(en) Enable Auto Bank Deposit and Withdrawal?"
ResourceBundle.de["PABMenu_DepGold"] 				= "Gold einlagen"
ResourceBundle.de["PABMenu_DepGold_T"] 				= "Soll automatisch Gold in die Truhe eingelagert werden?"
ResourceBundle.de["PABMenu_DepInterval"] 			= "Min. Abstand zw. Einlagerungen (Sek)"
ResourceBundle.de["PABMenu_DepInterval_T"] 			= "Mindestabstand in Sekunden zwischen zwei automatischen Einlagerungen."
ResourceBundle.de["PABMenu_DepInterval_W"] 			= "Ungültige Eingabe --> Kein Mindestabstand ziwschen EInlagerungen."
ResourceBundle.de["PABMenu_DepGoldPerc"] 			= "- Einzulagerndes Gold in %"
ResourceBundle.de["PABMenu_DepGoldPerc_T"] 			= "Maximalmenge in Prozent vom aktuellen Gold das eingelagert werden soll."
ResourceBundle.de["PABMenu_DepGoldSteps"] 			= "- Gold Transaktionen in Schritten von"
ResourceBundle.de["PABMenu_DepGoldSteps_T"] 		= "In welchen Schritten soll Gold eingelagert und abgehoben werden?"
ResourceBundle.de["PABMenu_DepGoldKeep"] 			= "Min. Gold im Inventar behalten"
ResourceBundle.de["PABMenu_DepGoldKeep_T"] 			= "Minimalmenge an Gold die immer im Inventar behalten werden soll."
ResourceBundle.de["PABMenu_DepGoldKeep_W"] 			= "Ungültige Eingabe --> Kein Gold soll im Inventar behalten werden."
ResourceBundle.de["PABMenu_WitGoldMin"] 			= "Hebe Gold ab wenn unter Minimum"
ResourceBundle.de["PABMenu_WitGoldMin_T"] 			= "Soll automatisch Gold von der Truhe abgehoben werden, wenn weniger Gold im Inventar ist wie oben als Minimum definiert wurde."
ResourceBundle.de["PABMenu_DepWitItem"] 			= "Gegenstände einlagern und abheben"
ResourceBundle.de["PABMenu_DepWitItem_T"] 			= "Sollen Gegenstände automatisch in die Truhe eingelagert bzw. von der Truhe abgehoben werden?"
ResourceBundle.de["PABMenu_OpenHireling"] 			= "- Öffne Truhen vor Einlagerungen"
ResourceBundle.de["PABMenu_OpenHireling_T"] 		= "Sollen von Sammlern zugeschickte Truhen automatisch vor der Einlagerung geöffnet werden?"
ResourceBundle.de["PABMenu_DepItemType"] 			= "Gegenstände zum Einlagern/Abheben"
ResourceBundle.de["PABMenu_DepItemType_T"] 			= "Öffnet das Untermenu um für jeden Typ von Gegenstand zu definieren ob er eingelagert, abgehoben oder ignoriert werden soll."
ResourceBundle.de["PABMenu_DepItemJunk"] 			= "Auch Trödel Gegenstände einlagern"
ResourceBundle.de["PABMenu_DepItemJunk_T"] 			= "Sollen auch als Trödel markierte Gegenstände in die Truhe eingelagert werden?"
ResourceBundle.de["PABMenu_HideNoDeposit"] 			= "Blende 'Nichts zum Einlagern' aus"
ResourceBundle.de["PABMenu_HideNoDeposit_T"] 		= "Blendet die Meldung 'Nichts zum Einlagern' aus. Eingelagerte Gegenstände werden jedoch weiterhin ausgegeben."
ResourceBundle.de["PABMenu_HideAll"] 				= "Blende alle Meldungen aus"
ResourceBundle.de["PABMenu_HideAll_T"] 				= "Ruhe-Modus: Keine Meldungen werden mehr angezeigt. Die eingelagerten/abgehobenen Gegenstände werden auch nicht mehr ausgegeben."
ResourceBundle.de["PABMenu_DepButton"] 				= "Alles einlagern"
ResourceBundle.de["PABMenu_DepButton_T"] 			= "Ändert alle Dropdown Werte zu 'Einlagern'? |cff0000(wird ein Neu laden zerwingen)|r"
ResourceBundle.de["PABMenu_DepButton_W"] 			= "Erzwingt ein Neu laden."
ResourceBundle.de["PABMenu_WitButton"] 				= "Alles abheben"
ResourceBundle.de["PABMenu_WitButton_T"] 			= "Ändert alle Dropdown Werte zu 'Abheben'? |cff0000(wird ein Neu laden zerwingen)|r"
ResourceBundle.de["PABMenu_WitButton_W"] 			= "Erzwingt ein Neu laden."
ResourceBundle.de["PABMenu_IgnButton"] 				= "Alles ignorieren"
ResourceBundle.de["PABMenu_IgnButton_T"] 			= "Ändert alle Dropdown Werte zu '-'? |cff0000(wird ein Neu laden zerwingen)|r"
ResourceBundle.de["PABMenu_IgnButton_W"] 			= "Erzwingt ein Neu laden."

-- Name Spaces --
ResourceBundle.de["NS_Bag_Equipped"]				= "ausgerüstete" -- FIXME: Grammatik falsch
ResourceBundle.de["NS_Bag_Backpack"]				= "abgelegte" -- FIXME: Grammatik falsch
ResourceBundle.de["NS_Bag_Bank"]					= "Truhe" -- FIXME: Grammatik falsch
ResourceBundle.de["NS_Bag_Unknown"]					= "unbekannt" -- FIXME: Grammatik falsch

-- Item Types --
ResourceBundle.de[ITEMTYPE_ADDITIVE] 				= "deITEMTYPE_ADDITIVE"
ResourceBundle.de[ITEMTYPE_ALCHEMY_BASE] 			= "Lösungsmittel (Alchemie)"
ResourceBundle.de[ITEMTYPE_ARMOR] 					= "Rüstung (unbekannt)"
ResourceBundle.de[ITEMTYPE_ARMOR_BOOSTER] 			= "deITEMTYPE_ARMOR_BOOSTER"
ResourceBundle.de[ITEMTYPE_ARMOR_TRAIT] 			= "Rüstungsmerkmal"
ResourceBundle.de[ITEMTYPE_AVA_REPAIR] 				= "deITEMTYPE_AVA_REPAIR"
ResourceBundle.de[ITEMTYPE_BLACKSMITHING_BOOSTER] 	= "Härter (Schmiedekunst)"
ResourceBundle.de[ITEMTYPE_BLACKSMITHING_MATERIAL] 	= "Material (Schmiedekunst)"
ResourceBundle.de[ITEMTYPE_BLACKSMITHING_RAW_MATERIAL] = "Rohmaterial (Schmiedekunst)"
ResourceBundle.de[ITEMTYPE_CLOTHIER_BOOSTER] 		= "Gerbstoff (Schneiderei)"
ResourceBundle.de[ITEMTYPE_CLOTHIER_MATERIAL] 		= "Material (Schneiderei)"
ResourceBundle.de[ITEMTYPE_CLOTHIER_RAW_MATERIAL] 	= "Rohmaterial (Schneiderei)"
ResourceBundle.de[ITEMTYPE_COLLECTIBLE] 			= "deITEMTYPE_COLLECTIBLE"
ResourceBundle.de[ITEMTYPE_CONTAINER] 				= "Behälter"
ResourceBundle.de[ITEMTYPE_COSTUME] 				= "deITEMTYPE_COSTUME"
ResourceBundle.de[ITEMTYPE_DISGUISE] 				= "deITEMTYPE_DISGUISE"
ResourceBundle.de[ITEMTYPE_DRINK] 					= "deITEMTYPE_DRINK"
ResourceBundle.de[ITEMTYPE_ENCHANTING_RUNE] 		= "Runenstein (Verzaubern)"
ResourceBundle.de[ITEMTYPE_ENCHANTMENT_BOOSTER] 	= "deITEMTYPE_ENCHANTMENT_BOOSTER"
ResourceBundle.de[ITEMTYPE_FLAVORING] 				= "deITEMTYPE_FLAVORING"
ResourceBundle.de[ITEMTYPE_FOOD] 					= "deITEMTYPE_FOOD"
ResourceBundle.de[ITEMTYPE_GLYPH_ARMOR] 			= "deITEMTYPE_GLYPH_ARMOR"
ResourceBundle.de[ITEMTYPE_GLYPH_JEWELRY] 			= "deITEMTYPE_GLYPH_JEWELRY"
ResourceBundle.de[ITEMTYPE_GLYPH_WEAPON] 			= "Waffenglyphe"
ResourceBundle.de[ITEMTYPE_INGREDIENT] 				= "Material (Versorgen)"
ResourceBundle.de[ITEMTYPE_LOCKPICK] 				= "deITEMTYPE_LOCKPICK"
ResourceBundle.de[ITEMTYPE_LURE] 					= "deITEMTYPE_LURE"
ResourceBundle.de[ITEMTYPE_NONE] 					= "deITEMTYPE_NONE"
ResourceBundle.de[ITEMTYPE_PLUG] 					= "deITEMTYPE_PLUG"
ResourceBundle.de[ITEMTYPE_POISON] 					= "deITEMTYPE_POISON"
ResourceBundle.de[ITEMTYPE_POTION] 					= "Trank"
ResourceBundle.de[ITEMTYPE_RAW_MATERIAL] 			= "deITEMTYPE_RAW_MATERIAL"
ResourceBundle.de[ITEMTYPE_REAGENT] 				= "Reagenz (Alchemie)"
ResourceBundle.de[ITEMTYPE_RECIPE] 					= "deITEMTYPE_RECIPE"
ResourceBundle.de[ITEMTYPE_SCROLL] 					= "deITEMTYPE_SCROLL"
ResourceBundle.de[ITEMTYPE_SIEGE] 					= "deITEMTYPE_SIEGE"
ResourceBundle.de[ITEMTYPE_SOUL_GEM] 				= "Seelenstein"
ResourceBundle.de[ITEMTYPE_SPICE] 					= "deITEMTYPE_SPICE"
ResourceBundle.de[ITEMTYPE_STYLE_MATERIAL] 			= "Stilmaterial"
ResourceBundle.de[ITEMTYPE_TABARD] 					= "deITEMTYPE_TABARD"
ResourceBundle.de[ITEMTYPE_TOOL] 					= "Werkzeug"
ResourceBundle.de[ITEMTYPE_TRASH]					= "deITEMTYPE_TRASH"
ResourceBundle.de[ITEMTYPE_TROPHY] 					= "Trophäe"
ResourceBundle.de[ITEMTYPE_WEAPON] 					= "deITEMTYPE_WEAPON"
ResourceBundle.de[ITEMTYPE_WEAPON_BOOSTER] 			= "deITEMTYPE_WEAPON_BOOSTER"
ResourceBundle.de[ITEMTYPE_WEAPON_TRAIT] 			= "Waffenmerkmal"
ResourceBundle.de[ITEMTYPE_WOODWORKING_BOOSTER] 	= "Harz (Schreinerei)"
ResourceBundle.de[ITEMTYPE_WOODWORKING_MATERIAL] 	= "Material (Schreinerei)"
ResourceBundle.de[ITEMTYPE_WOODWORKING_RAW_MATERIAL] = "Rohmaterial (Schreinerei)"