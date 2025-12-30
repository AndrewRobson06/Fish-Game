draw_self()

draw_set_font(fnt_shop)
draw_set_color(c_white)

if (hovering = true){
    draw_text_ext_transformed(246, 12, "Strong and pungent, this stuff stings your nose just by smelling it but the fish go crazy for it. Makes fish bite faster. ",
    30, 300, 0.5, 0.5, 0)
    draw_text_transformed(246, 145, "Cost: 450g   You own: " + string(global.garlic_total), 0.5, 0.5, 0)


}



