image_angle += 1; 

//increase the amount lost if urchin is touching bobber
if (touching = true and global.catch_progress > 0 and global.catch_progress < 100){
    global.catch_progress -= 0.2;
}

touching = false;

//freeze if game is won or lost
if (global.catch_progress = 100){
     speed = 0;

}
else if (global.catch_progress = 0){
    speed = 0;
}

