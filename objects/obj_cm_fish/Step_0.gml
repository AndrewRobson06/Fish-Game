
//remove progress if bobber and fish are not touching
if (touching = false){
    if (global.catch_progress<100 and global.catch_progress > 0){
            global.catch_progress = global.catch_progress-0.1;
    }
}


touching  = false

//if player has won the catching minigame
if (global.catch_progress = 100){
     speed = 0;
    instance_create_layer(room_width/2,room_height/2, "Instances_1", obj_alert2);
    global.win = true
    
}
// if the player has failed the catching minigame
else if (global.catch_progress = 0){
    speed = 0;
    instance_create_layer(room_width/2,room_height/2, "Instances_1", obj_alert3);
    global.fail = true
}

//return back to the main game after a win
if (global.win = true)
{
    if (alert_timer > 0)
        alert_timer -= 1;
        if (alert_timer <=0 ) {
            instance_destroy(obj_alert2);
            alert_timer = -1;
            room_goto(Room1);
     }
   }
//return back to the main game after a loss
if (global.fail = true)
{
    if (alert_timer > 0)
        alert_timer -= 1;
        if (alert_timer <=0 ) {
            instance_destroy(obj_alert3);
            alert_timer = -1;
            room_goto(Room1);
     }
   }