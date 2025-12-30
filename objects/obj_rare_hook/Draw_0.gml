draw_self()

draw_set_font(fnt_shop)
draw_set_color(c_white)

if (hovering = true){
    draw_text_ext_transformed(246, 12, "This hook is made to increase the odds of catching rare fish while also reducing the odds for uncommon fish and significantly for common fish. Allows for ultra rare fish to be caught.",
    30, 300, 0.5, 0.5, 0)
    if (purchased = false){
            draw_text_transformed(246, 145, "Cost: 10,000g", 0.5, 0.5, 0)
    }
    else{
        draw_text_transformed(246, 145, "You already own this", 0.5, 0.5, 0)
    }

}

if (purchased = true){
    image_blend = c_black;
}


