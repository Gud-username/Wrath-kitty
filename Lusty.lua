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
SMODS.DeckSkin {
	key = "example",
	suit = "Hearts",
	loc_txt = "Example",
	palettes = {
		{
			key = 'lc',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = atlas_lc.key,
			pos_style = 'deck',
			suit_icon = {
				atlas = icon_lc.key,
			},
		},
		{
			key = 'hc',
			ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace",},
			display_ranks = {"King", "Queen", "Jack"},
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
    path = 'Icon/Icon.png',
    px = 34,
    py = 34
})
