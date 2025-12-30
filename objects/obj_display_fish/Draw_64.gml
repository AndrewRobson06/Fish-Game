var _dx = 0;
var _dy = gui_h * 0.7;
var _boxw = gui_w;
var _boxh =  gui_h - _dy;

draw_sprite_stretched(spr_text_box, 0, _dx, _dy, _boxw, _boxh);

_dx += 40;
_dy += 16;

draw_set_font(fnt_ui2);
draw_set_color(c_yellow)

var _name = messages[current_message].name;
draw_text(_dx, _dy, _name);

_dy += 110;

draw_set_color(c_white)

draw_text_ext(_dx, _dy, draw_message, -1, _boxw - _dx * 2);

// COMMON FISH //
if (global.caught_fish = "Goldfish"){
    
    draw_sprite_stretched(spr_goldfish, 0,_dx+1500, _dy-115, 250, 250)
}

else if (global.caught_fish = "Carp"){
    
    draw_sprite_stretched(spr_carp, 0,_dx+1500, _dy-115, 250, 250)
}

else if (global.caught_fish = "Crayfish"){
    
    draw_sprite_stretched(spr_crayfish, 0,_dx+1500, _dy-92, 250, 250)
}

else if (global.caught_fish = "Brown Trout"){
    
    draw_sprite_stretched(spr_brown_trout, 0,_dx+1500, _dy-115, 250, 250)
}

else if (global.caught_fish = "Bass"){
    
    draw_sprite_stretched(spr_bass, 0,_dx+1500, _dy-115, 250, 250)
}

// UNCOMMON FISH //

else if (global.caught_fish = "Crab"){
    
    draw_sprite_stretched(spr_crab, 0,_dx+1500, _dy-115, 250, 250)
}
else if (global.caught_fish = "Salmon"){
    
    draw_sprite_stretched(spr_salmon, 0,_dx+1500, _dy-115, 250, 250)
}
else if (global.caught_fish = "Pufferfish"){
    
    draw_sprite_stretched(spr_pufferfish, 0,_dx+1500, _dy-115, 250, 250)
}

