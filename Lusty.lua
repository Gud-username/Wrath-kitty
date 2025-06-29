ranks = {"2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"}
SMODS.Atlas {
    key = 'hearts_1',
    path = "lusty.png",
    atlas_table = 'ASSET_ATLAS',
    px = 71,
    py = 95,
    disable_mipmap = true,
}
SMODS.Atlas {
    key = 'hearts_2',
    path = "lusty_hc.png",
    atlas_table = 'ASSET_ATLAS',
    px = 71,
    py = 95,
    disable_mipmap = true,
    
SMODS.DeckSkin({
    key = 'lusty_hearts',
    suit = "Hearts",
    ranks = ranks,
    lc_atlas = 'vocalatro_hearts_1',
    hc_atlas = "vocalatro_hearts_2",
    posStyle = 'collab',
    loc_txt = {
        ["en-us"] = "Smol lusty",
    }
})
