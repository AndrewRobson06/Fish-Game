
//create bobber
if (is_fishing = true){
    sprite_index = spr_player_cast_idle;
    instance_create_layer(obj_player.x+1, obj_player.y-24, "Instances",obj_bobber);
    fishing_alarm = irandom(10);
    fishing_alarm = fishing_alarm+3;
}
