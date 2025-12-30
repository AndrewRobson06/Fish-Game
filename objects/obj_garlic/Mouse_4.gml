if (global.total_gold >= 450 and global.garlic_total < 9995){
    global.total_gold -= 450;
    global.garlic_total += 5;
    purchased = true;
    bg_alarm = 2;
}

else{
    show_debug_message("too poor")
}
