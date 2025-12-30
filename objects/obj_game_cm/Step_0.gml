if (global.add_gold = true){
    global.total_gold = global.total_gold + global.value;
    //show_debug_message("you got")
    //show_debug_message(global.value)
    //show_debug_message("with a size of")
    //show_debug_message(global.size)
    //show_debug_message("total gold")
    //show_debug_message(total_gold)
    global.value = 0;
    global.size = 0;
    global.add_gold = false;
}