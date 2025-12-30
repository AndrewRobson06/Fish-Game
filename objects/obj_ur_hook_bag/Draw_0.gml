if (global.has_ur_hook = false){
    image_blend = c_black;
}
else{
    image_blend = c_white;
}

draw_self()



draw_set_font(fnt_shop)
draw_set_color(c_white)

if (hovering = true){
    if (global.has_ur_hook = false){
        draw_text_ext_transformed(246, 12, "You dont own this. Buy it at the shop.", 30, 300, 0.5, 0.5, 0)
    }
    
    if (global.has_ur_hook= true){
                draw_text_ext_transformed(246, 12, "An Exceptional hook to increase the odds for ultra rare fish while removing common fish from the pool. odds for uncommon fish also decreased and rare fish odds increased by a fair bit also. Worth the money.",
    30, 300, 0.5, 0.5, 0)
        if (global.hook = "ur"){
            draw_set_color(c_yellow)
            draw_text_transformed(246, 145, "Equipped", 0.5, 0.5, 0)
        }
        else{
            draw_text_transformed(246, 145, "Not Equipped", 0.5, 0.5, 0)
        }
        
    }
    

}

