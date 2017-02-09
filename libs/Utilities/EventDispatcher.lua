--
-- Created by IntelliJ IDEA.
-- User: Klingo
-- Date: 09.02.2017
-- Time: 20:31
--

PAED = {}

--  Acts as a dispatcher between PARepair and PAJunk that both depend on [EVENT_OPEN_STORE]
function PAED.EventOpenStore()
    -- first execute PAJunk (to sell junk and get gold)
    PAJ.OnShopOpen()

    -- only then execute PARepair (to spend gold for repairs)
    PAR.OnShopOpen()
end