draw_self()

draw_set_font(fnt_shop)
draw_set_color(c_white)

if (hovering = true){
    draw_text_ext_transformed(246, 12, "An Exceptional hook to increase the odds for ultra rare fish while removing common fish from the pool. odds for uncommon fish also decreased and rare fish odds increased by a fair bit also. Worth the money.",
    30, 300, 0.5, 0.5, 0)
    if (purchased = false){
            draw_text_transformed(246, 145, "Cost: 250,000g", 0.5, 0.5, 0)
    }
    else{
        draw_text_transformed(246, 145, "You already own this", 0.5, 0.5, 0)
    }

}

if (purchased = true){
    image_blend = c_black;
}


