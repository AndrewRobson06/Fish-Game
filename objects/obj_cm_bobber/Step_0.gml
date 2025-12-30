/*   ARROW KEY CONTROLS
if (global.catch_progress > 0 and global.catch_progress <100){
    var _hor = keyboard_check(vk_right) - keyboard_check(vk_left);
    var _ver = keyboard_check(vk_down) - keyboard_check(vk_up);

    move_and_collide(_hor * move_speed, _ver * move_speed, obj_cm_wall, undefined, undefined, undefined, move_speed, move_speed);
}
 */

// MOUSE CONTROLS
if (global.catch_progress > 0 and global.catch_progress <100){
    x = mouse_x;
    y = mouse_y;
}
