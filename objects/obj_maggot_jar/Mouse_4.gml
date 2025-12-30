if (global.total_gold >= 350 and global.maggot_total < 9995){
    global.total_gold -= 350;
    global.maggot_total += 5;
    purchased = true;
    bg_alarm = 2;
}

else{
    show_debug_message("too poor")
}
