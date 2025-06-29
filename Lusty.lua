local atlas_hc = SMODS.Atlas {
	key = "skin_hc",
	path = "lusty_hc.png",
	px = 71,
	py = 95,
}

local atlas_lc = SMODS.Atlas {
	key = "skin_lc",
	path = "lusty.png",
	px = 71,
	py = 95,
}
local icon_lc = SMODS.Atlas {
	key = "icon_lc",
	path = "icon.png",
	px = 18,
	py = 18,
}

local icon_hc = SMODS.Atlas {
	key = "icon_hc",
	path = "icon_hc.png",
	px = 18,
	py = 18,
}
SMODS.DeckSkin {
	key = "Smol Lusty Joker",
	suit = "Hearts",
	loc_txt = "Smol Lusty Joker",
	palettes = {
		{
			key = 'lc',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace",},
			display_ranks = {"Ace ""King", "Queen", "Jack", "10", "9", "8", "7", "6", "5", "4", "3", "2"},
			atlas = atlas_lc.key,
			pos_style = 'deck',
			suit_icon = {
				atlas = icon_lc.key,
			},
		},
		{
			key = 'hc',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace",},
			display_ranks = {"Ace ""King", "Queen", "Jack", "10", "9", "8", "7", "6", "5", "4", "3", "2"},
			atlas = atlas_hc.key,
			pos_style = 'deck',
			colour = HEX("9734f0"),
			suit_icon = {
				atlas = icon_hc.key,
			},
		},
	},
})
SMODS.Atlas({
    key = 'modicon',
    path = 'Modicon.png',
    px = 34,
    py = 34
})
