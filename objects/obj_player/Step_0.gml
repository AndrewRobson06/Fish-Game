/*



}
*/



//player movement
if is_fishing = false{
    var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
    var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

    //check for collision, undefined, undefined, undefined not important the 2 move_speed at the end help stop jittery camera when rubbing on wall
    move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);
    
    //set walk and idle sprites

    if (_hor != 0 or _ver !=0)
        {
        if (_ver > 0) sprite_index = spr_player_walk_down;
        else if (_ver <0) sprite_index = spr_player_walk_up;
        else if (_hor > 0) sprite_index = spr_player_walk_right;
        else if (_hor < 0) sprite_index = spr_player_walk_left;
        }
    else {
	    if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
            else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
                else if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
                    else if (sprite_index== spr_player_walk_up) sprite_index = spr_player_idle_up; }

}

//enter cast
if (keyboard_check_pressed(vk_space) and can_cast = true and not_in_cast = true and global.finish_display = false){
    is_fishing = true;
    not_in_cast = false;
    sprite_index = spr_player_cast;
    alarm[0] = 26
}

//enter bag
if (keyboard_check_pressed(ord("B")) and is_fishing = false and not_in_cast = true and global.finish_display = false){
    room_goto(rm_bag)
}

//end cast
if (keyboard_check_pressed(vk_escape) and not_in_cast = false and global.catching = false and instance_exists(obj_alert) = false){
    is_fishing = false;
    not_in_cast = true;
    sprite_index = spr_player_idle_up;
    instance_destroy(obj_bobber);
}

//detect a bite
if (is_fishing = true)
{
    if (fishing_alarm > 0){
        if global.bait = "garlic"{
            fishing_alarm -= 0.032;
        }
        else{
            fishing_alarm -= 0.016;
           
        }
        show_debug_message(fishing_alarm)
        if (fishing_alarm <=0 ) {
            if (is_fishing = true){
                instance_create_layer(obj_bobber.x-1, obj_bobber.y-70, "Instances", obj_alert);
                alert_timer = 90;
                bite = true;
                if (global.bait = "garlic"){
                    global.garlic_total -=1;
                }
                
            }
     }
   }   
}
else{
    fishing_alarm = -1;
}

//get rid of alert ui
if (bite = true)
{
    if (alert_timer > 0)
        alert_timer -= 1;
        if (alert_timer <=0 ) {
            instance_destroy(obj_alert);
            alert_timer = -1;
            global.catching = true;
          
     }
   }

//return to walking if fail
if (global.fail = true){
    is_fishing = false;
    global.catching = false;
    bite = false;
    not_in_cast = true;
    fishing_alarm = 0;
    alert_timer = 0;
    global.fail = false;
    sprite_index = spr_player_idle_up;
    instance_destroy(obj_bobber);
    
}

if (global.win = true){
    global.catching = false;
    display_fish([
    {
        name: "You caught a " + global.caught_fish +"!",
        msg: "Size: " + string(global.size) + "cm  Value: " + string(global.value) + "g" + "  [Press ENTER to close]"
    }
    ])
    global.win = false;
    bite = false;
    fishing_alarm = 0;
    alert_timer = 0;
    sprite_index = spr_player_idle_up;
    instance_destroy(obj_bobber);
}

if (global.finish_display = true){ 
    is_fishing = false;
    //bite = false;
    not_in_cast = true;
    //fishing_alarm = 0;
    //alert_timer = 0;
    global.add_gold = true;
    global.finish_display = false;
    
    
}


//enter catching minigame
if (global.catching = true){

    room_goto (Room2)
    //global.catching = false

}

