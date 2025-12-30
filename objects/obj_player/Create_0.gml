move_speed = 2;

tilemap = layer_tilemap_get_id("Tiles_Col");

is_fishing = false;

can_cast = false;

not_in_cast = true;

fishing_alarm = 0;

alert_timer = 0;

bite = false;

global.catching = false;

ui_spawned = false;

global.fail = false;
global.win = false;

global.add_gold = false;

global.finish_display = false;

global.caught_fish = "";
global.size = 0;
global.value = 0;

global.has_uc_hook = false;
global.has_rare_hook = false;
global.has_ur_hook = false;
global.bloodworm_total = 1;
global.maggot_total = 1;
global.garlic_total = 1;

global.hook = "none";
global.bait = "none";



/* for testing
display_fish([
    {
        name: "You caught a " + global.caught_fish +"!",
        msg: "Size: " + string(global.size) + "cm  Value: " + string(global.value) + "g" + "  [Press ENTER to close]"
    }
    ])
 */
