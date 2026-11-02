----------------
---- LAYERS ----
----------------

hl.config({
    layers = {
        allow_new_top_layers_over_existing_fullscreen = true, -- Set to false to make newly mapped top layers render below existing covering fullscreen window
    },
})

hl.layer_rule({
    name = "blur-waybar",
    match = { namespace = "^waybar$" },
    blur = true,
})

hl.layer_rule({
    name = "blur-wofi",
    match = { namespace = "^wofi$" },
    blur = true,
})
