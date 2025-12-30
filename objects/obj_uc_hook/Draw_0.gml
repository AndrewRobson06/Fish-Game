draw_self()

draw_set_font(fnt_shop)
draw_set_color(c_white)

if (hovering = true){
    draw_text_ext_transformed(246, 12, "A hook specially designed to increase the odds of catching uncommon fish while slightly lowering the odds for common fish. It also very slightly inceases the odds for rare fish, Yahoo!",
    30, 300, 0.5, 0.5, 0)
    if (purchased = false){
            draw_text_transformed(246, 145, "Cost: 1,500g", 0.5, 0.5, 0)
    }
    else{
        draw_text_transformed(246, 145, "You already own this", 0.5, 0.5, 0)
    }

}

if (purchased = true){
    image_blend = c_black;
}


