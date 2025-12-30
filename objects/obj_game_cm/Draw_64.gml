var _dx = 0;
var _dy = 0;

if (global.catching = false){
    draw_set_font(fnt_gold)
    draw_set_color(c_black)
    draw_sprite_stretched(spr_gold, 0, _dx+1400, _dy, 500, 300)
    draw_sprite_stretched(spr_bag, 0, x+1200, y+10, 175, 175)

    draw_text(_dx+1440, _dy+117, string(global.total_gold) +"g")
    
    if (global.hook = "none"){
        draw_sprite_stretched(spr_selected, 0, _dx+1650, _dy+230, 100, 100)
    }
    else if (global.hook = "uc"){
        draw_sprite_stretched(spr_selected_uc, 0, _dx+1650, _dy+230, 100, 100)
    }
     else if (global.hook = "rare"){
        draw_sprite_stretched(spr_selected_r, 0, _dx+1650, _dy+230, 100, 100)
    }
     else if (global.hook = "ur"){
        draw_sprite_stretched(spr_selected_ur, 0, _dx+1650, _dy+230, 100, 100)
    }
    

    
    if (global.bait = "none"){
        draw_sprite_stretched(spr_selected, 0, _dx+1770, _dy+230, 100, 100)
    }
    else if (global.bait = "bloodworms"){
        draw_sprite_stretched(spr_selected_bw, 0, _dx+1770, _dy+230, 100, 100)
    if (global.bloodworm_total <9){
        draw_text_transformed(_dx+1810, _dy+330, string(global.bloodworm_total), 0.7, 0.7, 0)
    }
        else if (global.bloodworm_total <100){
            draw_text_transformed(_dx+1800, _dy+330, string(global.bloodworm_total), 0.7, 0.7, 0)
        }
        else if (global.bloodworm_total > 999){
            draw_text_transformed(_dx+1785, _dy+330, string(global.bloodworm_total), 0.7, 0.7, 0)
        }
        
    }
    else if (global.bait = "maggots"){
        draw_sprite_stretched(spr_selected_m, 0, _dx+1770, _dy+230, 100, 100)
            if (global.maggot_total <9){
        draw_text_transformed(_dx+1810, _dy+330, string(global.maggot_total), 0.7, 0.7, 0)
    }
        else if (global.maggot_total <100){
            draw_text_transformed(_dx+1800, _dy+330, string(global.maggot_total), 0.7, 0.7, 0)
        }
        else if (global.maggot_total > 999){
            draw_text_transformed(_dx+1785, _dy+330, string(global.maggot_total), 0.7, 0.7, 0)
        }
    }
    else if (global.bait = "garlic"){
        draw_sprite_stretched(spr_selected_g, 0, _dx+1770, _dy+230, 100, 100)
            if (global.garlic_total <9){
        draw_text_transformed(_dx+1810, _dy+330, string(global.garlic_total), 0.7, 0.7, 0)
    }
        else if (global.garlic_total <100){
            draw_text_transformed(_dx+1800, _dy+330, string(global.garlic_total), 0.7, 0.7, 0)
        }
        else if (global.garlic_total > 999){
            draw_text_transformed(_dx+1785, _dy+330, string(global.garlic_total), 0.7, 0.7, 0)
        }
    }
}


