
draw_self()

draw_set_font(fnt_shop)
draw_set_color(c_white)

if (hovering = true){
    draw_text_ext_transformed(246, 12, "A large jar filled with wriggling maggots. Pretty disgusting but larger fish will be more likely to eat these.",
    30, 300, 0.5, 0.5, 0)
        if (global.bait = "maggots"){
            draw_set_color(c_yellow)
            draw_text_transformed(246, 145, "Equipped  You own: " + string(global.maggot_total), 0.5, 0.5, 0)
        }
        else{
            draw_text_transformed(246, 145, "Not Equipped  You own: " + string(global.maggot_total), 0.5, 0.5, 0)
        }
        
    }