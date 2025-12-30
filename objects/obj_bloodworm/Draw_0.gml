draw_self()

draw_set_font(fnt_shop)
draw_set_color(c_white)

if (hovering = true){
    draw_text_ext_transformed(246, 12, "Dark red worms which will attract more valuable fish. Got to spend money to make money.",
    30, 300, 0.5, 0.5, 0)
    draw_text_transformed(246, 145, "Cost: 750g   You own: " + string(global.bloodworm_total), 0.5, 0.5, 0)


}



