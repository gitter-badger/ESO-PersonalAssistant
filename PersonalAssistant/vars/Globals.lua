-- PersonalAssistant - Prepare all Global Tables
PersonalAssistant = {}
PersonalAssistant.SavedVars = {}
PersonalAssistant.MenuFunctions = {}
PersonalAssistant.MenuHelper = {}

-- ---------------------------------------------------------------------------------------------------------------------

PersonalAssistant.Constants = {
    ADDON_VERSION = "2.0.1",

    GENERAL = {
        MAX_PROFILES = 5,
        NO_PROFILE_SELECTED_ID = 6
    },

    COLORS = {
        DEFAULT = "|cFFFF00",
        WHITE = "|cFFFFFF",
        LIGHT_BLUE = "|cB0B0FF",
        GOLD = "|cC5C29E", -- TODO: not used
        GREEN = "|c00FF00",
        YELLOW = "|cFFD700", -- TODO: not used
        ORANGE_RED = "|cFF7400",
        ORANGE = "|cFFA500",
        RED = "|cFF0000",
    },

    COLORED_TEXTS = {
        PA = table.concat({"|cFFD700", "P", "|cFFFFFF", "ersonal", "|cFFD700", "A", "|cFFFFFF", "ssistant", "|r"}),
        PAG = table.concat({"|cFFD700", "PA G", "|cFFFFFF", "eneral: ", "|r"}),
        PAB = table.concat({"|cFFD700", "PA B", "|cFFFFFF", "anking: ", "|r"}),
        PAR = table.concat({"|cFFD700", "PA R", "|cFFFFFF", "epair: ", "|r"}),
        PAL = table.concat({"|cFFD700", "PA L", "|cFFFFFF", "oot: ", "|r"}),
        PAM = table.concat({"|cFFD700", "PA M", "|cFFFFFF", "ail: ", "|r"}),
        PAJ = table.concat({"|cFFD700", "PA J", "|cFFFFFF", "unk: ", "|r"}),
    },

    ICONS = {
        CURRENCY = {
            [CURT_MONEY] = {
                SMALL = "|t16:16:/esoui/art/currency/currency_gold.dds|t",
                NORMAL = "|t32:32:/esoui/art/currency/currency_gold_32.dds|t",
            },
            [CURT_ALLIANCE_POINTS] = {
                SMALL = "|t16:16:/esoui/art/currency/alliancepoints.dds|t",
                NORMAL = "|t32:32:/esoui/art/currency/alliancepoints_32.dds|t"
            },
            [CURT_TELVAR_STONES] = {
                SMALL = "|t16:16:/esoui/art/currency/currency_telvar.dds|t",
                NORMAL = "|t32:32:/esoui/art/currency/currency_telvar_32.dds|t",
            },
            [CURT_WRIT_VOUCHERS] = {
                SMALL = "|160:16:/esoui/art/currency/currency_writvoucher.dds|t",
                NORMAL = "|t32:32:/esoui/art/currency/currency_writvoucher_64.dds|t" -- currently no 32x32 version available
            }
        },
        CRAFTBAG = {
            BLACKSMITHING = {
                LARGE = "|t48:48:/esoui/art/inventory/inventory_tabicon_craftbag_blacksmithing_up.dds|t",
            },
            CLOTHING = {
                LARGE = "|t48:48:/esoui/art/inventory/inventory_tabicon_craftbag_clothing_up.dds|t",
            },
            WOODWORKING = {
                LARGE = "|t48:48:/esoui/art/inventory/inventory_tabicon_craftbag_woodworking_up.dds|t",
            },
            JEWELCRAFTING = {
                LARGE = "|t48:48:/esoui/art/inventory/inventory_tabicon_craftbag_jewelrycrafting_up.dds|t",
            },
            ALCHEMY = {
                LARGE = "|t48:48:/esoui/art/inventory/inventory_tabicon_craftbag_alchemy_up.dds|t",
            },
            ENCHANTING = {
                LARGE = "|t48:48:/esoui/art/inventory/inventory_tabicon_craftbag_enchanting_up.dds|t",
            },
            PROVISIONING = {
                LARGE = "|t48:48:/esoui/art/inventory/inventory_tabicon_craftbag_provisioning_up.dds|t",
            },
            STYLEMATERIALS = {
                LARGE = "|t48:48:/esoui/art/inventory/inventory_tabicon_craftbag_stylematerial_up.dds|t",
            },
            TRAITITEMS = {
                LARGE = "|t48:48:/esoui/art/inventory/inventory_tabicon_craftbag_itemtrait_up.dds|t",
            },
            FURNISHING = {
                LARGE = "|t48:48:/esoui/art/crafting/provisioner_indexicon_furnishings_up.dds|t",
            },
            COLLECTIBLES = {
                NORMAL = "|t32:32:/esoui/art/collections/collections_tabicon_collectibles_up.dds|t",
            },
            MISCELLANEOUS = {
                NORMAL = "|t32:32:/esoui/art/inventory/inventory_tabicon_misc_up.dds|t",
            },
            JUNK = {
                NORMAL = "|t32:32:/esoui/art/inventory/inventory_tabicon_junk_up.dds|t",
                LARGE = "|t48:48:/esoui/art/inventory/inventory_tabicon_junk_up.dds|t",
            },
            WEAPON = {
                LARGE = "|t48:48:/esoui/art/inventory/inventory_tabicon_weapons_up.dds|t",
                NORMAL = "|t32:32:/esoui/art/inventory/inventory_tabicon_weapons_up.dds|t",
            },
            ARMOR = {
                LARGE = "|t48:48:/esoui/art/inventory/inventory_tabicon_armor_up.dds|t",
                NORMAL = "|t32:32:/esoui/art/inventory/inventory_tabicon_armor_up.dds|t",
            },
            JEWELRY = {
                LARGE = "|t48:48:/esoui/art/crafting/jewelry_tabicon_icon_up.dds|t",
                NORMAL = "|t32:32:/esoui/art/crafting/jewelry_tabicon_icon_up.dds|t",
            }
        },
        ITEMS = {
            FOOD = {
                NORMAL = "|t32:32:/esoui/art/icons/crafting_bowl_002.dds|t"
            },
            GENERIC_HELP = {
                NORMAL = "|t32:32:/esoui/art/menubar/menubar_help_up.dds|t"
            },
            GLYPH_ARMOR_HEALTH = {
                NORMAL = "|t32:32:/esoui/art/icons/enchantment_armor_healthboost.dds|t"
            },
            LOCKPICK = {
                NORMAL = "|t32:32:/esoui/art/icons/lockpick.dds|t"
            },
            MASTER_WRIT = {
                NORMAL = "|t32:32:/esoui/art/icons/master_writ_woodworking.dds|t"
            },
            MOTIF = {
                NORMAL = "|t32:32:/esoui/art/icons/quest_book_001.dds|t"
            },
            ORNATE = { -- TODO: not used
                SMALL = "|t16:16:/esoui/art/inventory/inventory_trait_ornate_icon.dds|t",
                NORMAL = "|t32:32:/esoui/art/inventory/inventory_trait_ornate_icon.dds|t"
            },
            POISON = { -- TODO: not used
                NORMAL = "|t32:32:/esoui/art/icons/crafting_poison_001_red_005.dds|t"
            },
            POTION = {
                NORMAL = "|t32:32:/esoui/art/icons/consumable_potion_001_type_005.dds|t"
            },
            RECIPE = {
                NORMAL = "|t32:32:/esoui/art/icons/quest_scroll_001.dds|t"
            },
            REPAIRKIT = {
                NORMAL = "|t32:32:/esoui/art/icons/quest_crate_001.dds|t"
            },
            REPAIRKIT_CROWN = { -- TODO: not used
                NORMAL = "|t32:32:/esoui/art/icons/store_repairkit_002.dds|t"
            },
            SOULGEM = {
                SMALL = "|t20:20:/esoui/art/icons/soulgem_006_filled.dds|t",
                NORMAL = "|t32:32:/esoui/art/icons/soulgem_006_filled.dds|t",
            },
            SOULGEM_CROWN = { -- TODO: not used
                NORMAL = "|t32:32:/esoui/art/icons/store_soulgem_001.dds|t",
            },
            SOULGEM_EMPTY = { -- TODO: not used
                NORMAL = "|t32:32:/esoui/art/icons/soulgem_006_empty.dds|t",
            },
            STOLEN = {
                SMALL = "|t16:16:/esoui/art/inventory/inventory_stolenitem_icon.dds|t",
                NORMAL = "|t32:32:/esoui/art/inventory/inventory_stolenitem_icon.dds|t"
            },
            TROPHY = {
                NORMAL = "|t32:32:/esoui/art/icons/quest_daedricembers.dds|t",
            },
        },
        OTHERS = {
            HOME = {
                NORMAL = "|t32:32:/esoui/art/guild/tabicon_home_up.dds|t"
            }
        }
    },

    BANKING = {
        BLACKSMITHING = {
            ITEMTYPE_BLACKSMITHING_RAW_MATERIAL,
            ITEMTYPE_BLACKSMITHING_MATERIAL,
            ITEMTYPE_BLACKSMITHING_BOOSTER
        },
        CLOTHING = {
            ITEMTYPE_CLOTHIER_RAW_MATERIAL,
            ITEMTYPE_CLOTHIER_MATERIAL,
            ITEMTYPE_CLOTHIER_BOOSTER
        },
        WOODWORKING = {
            ITEMTYPE_WOODWORKING_RAW_MATERIAL,
            ITEMTYPE_WOODWORKING_MATERIAL,
            ITEMTYPE_WOODWORKING_BOOSTER
        },
        JEWELCRAFTING = {
            ITEMTYPE_JEWELRYCRAFTING_RAW_MATERIAL,
            ITEMTYPE_JEWELRYCRAFTING_MATERIAL,
            ITEMTYPE_JEWELRYCRAFTING_BOOSTER
        },
        ALCHEMY = {
            ITEMTYPE_REAGENT,
            ITEMTYPE_POISON_BASE,
            ITEMTYPE_POTION_BASE
        },
        ENCHANTING = {
            ITEMTYPE_ENCHANTING_RUNE_ASPECT,
            ITEMTYPE_ENCHANTING_RUNE_ESSENCE,
            ITEMTYPE_ENCHANTING_RUNE_POTENCY
        },
        PROVISIONING = {
            ITEMTYPE_INGREDIENT,
            ITEMTYPE_LURE
        },
        STYLEMATERIALS = {
            ITEMTYPE_RAW_MATERIAL,
            ITEMTYPE_STYLE_MATERIAL
        },
        TRAITITEMS = {
            ITEMTYPE_ARMOR_TRAIT,
            ITEMTYPE_WEAPON_TRAIT
        },
        FURNISHING = {
            ITEMTYPE_FURNISHING_MATERIAL
        }
    },

    BANKING_ADVANCED = {
        REGULAR = {
            MOTIF = {
                ITEMTYPE_RACIAL_STYLE_MOTIF,                 -- 8
            },
            RECIPE = {
                ITEMTYPE_RECIPE,                            -- 29
            },
            WRITS = {
                ITEMTYPE_MASTER_WRIT,                        -- 60
            },
            GLYPHS = {
                ITEMTYPE_GLYPH_ARMOR,                       -- 21
                ITEMTYPE_GLYPH_JEWELRY,                     -- 26
                ITEMTYPE_GLYPH_WEAPON,                      -- 20
            },
            LIQUIDS = {
                ITEMTYPE_POTION,                            -- 7
                ITEMTYPE_POISON,                            -- 30
            },
            FOOD_DRINKS = {
                ITEMTYPE_FOOD,                              -- 4
                ITEMTYPE_DRINK,                             -- 12
                ITEMTYPE_FISH,                              -- 54
            },
        },
        SPECIALIZED = {
            TROPHIES = {
                SPECIALIZED_ITEMTYPE_TROPHY_TREASURE_MAP ,  -- 100
                SPECIALIZED_ITEMTYPE_TROPHY_SURVEY_REPORT,  -- 101
                SPECIALIZED_ITEMTYPE_TROPHY_KEY_FRAGMENT,   -- 102
                SPECIALIZED_ITEMTYPE_TROPHY_RECIPE_FRAGMENT,    -- 104
                SPECIALIZED_ITEMTYPE_TROPHY_COLLECTIBLE_FRAGMENT,   -- 109
                -- TODO:  check:
                -- SPECIALIZED_ITEMTYPE_TROPHY_KEY    -- 107
            },
        }
    },

    BANKING_INDIVIDUAL = {
        LOCKPICK = {
            30357,  -- [Lockpick]
        },
        SOUL_GEM = {
            33265,  -- [Soul Gem (Empty)]
            33271,  -- [Soul Gem]
            61080,  -- [Crown Soul Gem]
        },
        REPAIR_KIT = {
            44879,  -- [Grand Repair Kit]
            61079,  -- [Crown Repair Kit]
        },
        GENERIC = {
            -- Generic container where any itemID can just be added and it will work out of the box
            -- remember to also update PABankingMenuDefaults: Crafting.Individual.ItemIds (generic section)
        }
    },

    MOVE = {
        IGNORE = 0,
        DEPOSIT = 1,
        WITHDRAW = 2
    },

    STACKING = {
        FULL = 0, -- 0: Full depositing/withdrawal / create new stacks
        INCOMPLETE = 1, -- 1: Fill only incomplete stacks
    },

    OPERATOR = {
        NONE = 0,
        EQUAL = 1,
--        LESSTHAN = 2,
        LESSTHANOREQUAL = 3,
--        GREATERTHAN = 4,
        GREATERTHANOREQUAL = 5
    },

    ITEM_QUALITY = {
        DISABLED = -1,
    }
}