if (global.total_gold >= 10000 and purchased = false){
    purchased = true
    global.total_gold -= 10000;
    global.has_rare_hook = true;
    bg_alarm = 2;
}
else if (purchased = true){
    show_debug_message("you bought this already")
}
else{
    show_debug_message("too poor")
}
