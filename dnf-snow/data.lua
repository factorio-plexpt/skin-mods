DNF_SNOW = require("__CharacterModHelper__.common")("dnf-snow")

local char_name = "dnf-snow-mage-skin"

-- Enable verbose logging? (Change the value of default if you don't have the mod!)
-- NOTE: This will set logging of IRobot (which is using the output routines from
--       the CharacterModHelper), but not logging initiated by CharacterModHelper!
local LOGGING_DEFAULT = false
DNF_SNOW.is_debug = mods["_debug"] and true or LOGGING_DEFAULT
DNF_SNOW.show("DNF_SNOW.is_debug", DNF_SNOW.is_debug)

-- Share image path by adding it to the global table (also used in animations.lua)
DNF_SNOW.IMG_PATH = DNF_SNOW.modRoot.."/images/"



------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
--                  Properties of character and character-corpse                  --
--  Put these in tables so we can easily apply the changes to the new prototypes  --
--  and keep track of what properties to skip when we copy properties from the    --
--  default to the new prototype, to keep changes made by other mods intact.      --
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
DNF_SNOW.protos = {}



------------------------------------------------------------------------------------
--   We can add data for the new prototypes to the global table we already have   --
------------------------------------------------------------------------------------
-- "miniMAXIme" expects that characters have the string "skin" (case insensitive)
-- somewhere in their name.
DNF_SNOW.protos.character                 = { name = char_name }
DNF_SNOW.protos.corpse                    = { name = char_name.."-corpse" }


require("my_character")

-- Create prototypes (CharModHelper is a global table provided by that mod)
CharModHelper.create_prototypes(DNF_SNOW.protos)
