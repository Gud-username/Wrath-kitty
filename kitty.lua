--- STEAMODDED HEADER
--- MOD_NAME: Wrath kitty
--- MOD_ID: Kitty
--- PREFIX: kitty
--- MOD_AUTHOR: [Smol Lusty joker]
--- MOD_DESCRIPTION: A mod just for you. thx for using my mod kirby!
--- LOADER_VERSION_GEQ: 1.0
--- VERSION: 1.0
--- BADGE_COLOR: 3c4368

local atlas_key = 'kitty_atlas' -- Format: PREFIX_KEY
-- See end of file for notes
local atlas_path = 'kitty_lc.png' -- Filename for the image in the asset folder
local atlas_path_hc = 'kitty_hc.png' -- Filename for the high-contrast version of the texture, if existing

local suits = {'spades'} -- Which suits to replace
local ranks = {'Jack', 'Queen', "King", "Ace"} -- Which ranks to replace

local description = 'Wrath kitty' -- English-language description, also used as default

-----------------------------------------------------------
-- You should only need to change things above this line --
-----------------------------------------------------------

SMODS.Atlas{  
    key = atlas_key..'_lc',
    px = 71,
    py = 95,
    path = atlas_path,
    prefix_config = {key = false},
}

if atlas_path_hc then
    SMODS.Atlas{  
        key = atlas_key..'_hc',
        px = 71,
        py = 95,
        path = atlas_path_hc,
        prefix_config = {key = false},
    }
end

for _, suit in ipairs(suits) do
    SMODS.DeckSkin{
        key = suit.."_skin",
        suit = suit:gsub("^%l", string.upper),
        ranks = ranks,
		display_ranks = {"Ace", "King", "Queen", "Jack"},
        lc_atlas = atlas_key..'_lc',
        hc_atlas = (atlas_path_hc and atlas_key..'_hc') or atlas_key..'_lc',
        loc_txt = {
            ['en-us'] = description
        },
        posStyle = 'deck'
    }
end
-- Notes:

-- The current version of Steamodded has a bug with prefixes in mods including `DeckSkin`s.
-- By manually including the prefix in the atlas' key, this should keep the mod functional
-- even after this bug is fixed.
