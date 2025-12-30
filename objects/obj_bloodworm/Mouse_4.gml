if (global.total_gold >= 750 and global.bloodworm_total < 9995){
    global.total_gold -= 750;
    global.bloodworm_total += 5;
    purchased = true;
    bg_alarm = 2;
}

else{
    show_debug_message("too poor")
}
