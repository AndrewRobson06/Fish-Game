
draw_set_font(fnt_ui);
if (global.catch_progress = 100){
    draw_set_color(c_lime)
}

if (global.catch_progress < 100 and global.catch_progress >= 70){
    draw_set_color(c_green)
}

if (global.catch_progress <70 and global.catch_progress >=45){
    draw_set_color(c_olive);
}

if (global.catch_progress <45 and global.catch_progress >20){
    draw_set_color(c_orange);
}

if (global.catch_progress <20  and global.catch_progress >0){
    draw_set_color(c_red);
}

if (global.catch_progress = 0){
    draw_set_color(c_maroon)
}
draw_text(315, 10, string(global.catch_progress) + string("%"));
