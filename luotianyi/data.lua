-- Make this a global variable so you have to load the file just once. Also,
-- make the name unique (e.g. "MIKU" or the initials of your mod, "MBS") so
-- other mods won't touch it.
local name = "luotianyi"

local character = require("__CharacterModHelper__.common")(name)

IMG_PATH_CREEPER = character.modRoot .. "/images/"
--local my_character = require("my_character")
local character_creator = require("character_creator")

character.new_characters = {}

character.new_characters[name .. "-skin"] = character_creator.create(IMG_PATH_CREEPER, name .. "-skin")


-- Create prototypes
for name, prototypes in pairs(character.new_characters) do
    CharModHelper.create_prototypes(prototypes)
end
