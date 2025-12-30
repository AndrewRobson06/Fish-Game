if (global.has_rare_hook = false){
    image_blend = c_black;
}
else{
    image_blend = c_white;
}

draw_self()

draw_set_font(fnt_shop)
draw_set_color(c_white)

if (hovering = true){
    if (global.has_rare_hook = false){
        draw_text_ext_transformed(246, 12, "You dont own this. Buy it at the shop.", 30, 300, 0.5, 0.5, 0)
    }
    
    if (global.has_rare_hook= true){
                draw_text_ext_transformed(246, 12, "This hook is made to increase the odds of catching rare fish while also reducing the odds for uncommon fish and significantly for common fish. Allows for ultra rare fish to be caught.",
    30, 300, 0.5, 0.5, 0)
        if (global.hook = "rare"){
            draw_set_color(c_yellow)
            draw_text_transformed(246, 145, "Equipped", 0.5, 0.5, 0)
        }
        else{
            draw_text_transformed(246, 145, "Not Equipped", 0.5, 0.5, 0)
        }
        
    }
    

}

