local TPZ         = {}
local TPZInv      = exports.tpz_inventory:getInventoryAPI() -- To get and use the Inventory API functions.

TriggerEvent("getTPZCore", function(cb) TPZ = cb end) -- To get the Core Functions.
