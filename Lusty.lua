function SMODS.INIT.Colors()

    G.C.SUITS = {
        Hearts = HEX('f20000'),
        Diamonds = HEX('cb0b83'),
        Spades = HEX("4f31b9"),
        Clubs = HEX("28aa1a"),
    }

    G.C.SO_1 = {
        Hearts = HEX('f20000'),
        Diamonds = HEX('cb0b83'),
        Spades = HEX("4f31b9"),
        Clubs = HEX("28aa1a"),
    }


    local loostmode_mod = SMODS.findModByID("Loost")
    local deck_standard = SMODS.Sprite:new("cards_1", loostmode_mod.path, "LustyDeck.png", 71, 95, "asset_atli")
    local deck_hc = SMODS.Sprite:new("cards_2", loostmode_mod.path, "LustyDeck_HC.png", 71, 95, "asset_atli")
	
    deck_standard:register()
    deck_hc:register()
end
SMODS.Atlas({
    key = 'modicon',
    path = 'Modicon.png',
    px = 34,
    py = 34
})
