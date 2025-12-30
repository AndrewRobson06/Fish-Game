display_mouse_set(display_get_width() / 2, display_get_height() / 2);

global.catch_progress = 15;

global.caught_fish = "";

fish_caught = false;

fishID = irandom(100);
fish_rarity = irandom(100); //common fish 65% uc fish 24% rare fish 10% ur fish 1%
ultra_rare_allow = irandom(100)
rarity = ""

if (global.hook = "none"){
    if (fish_rarity > 90){
        fish_rarity = 90
    }
}
if (global.hook = "uc"){
    fish_rarity += 15;
    if (fish_rarity > 90){
        fish_rarity = 90;
    }
}
else if (global.hook = "rare"){
    fish_rarity += 30;
    if(fish_rarity > 99){
        if (ultra_rare_allow = 100){
            fish_rarity = 100;
        }
        else {
            fish_rarity = 99;
        }
    }
}
else if (global.hook = "ur"){
    fish_rarity += 65;
}

if (fish_rarity <= 65){
    rarity = "common"
}
else if (fish_rarity > 65 and fish_rarity <= 89){
    rarity = "uc";
}
else if (fish_rarity > 89 and fish_rarity <= 99){
    rarity = "rare"
}
else if (fish_rarity > 99){
    rarity = "ur"
}
show_debug_message("rarity")
show_debug_message(fish_rarity)
show_debug_message("ur allow")
show_debug_message(ultra_rare_allow)

size_mult = random_range(1,2);

if (global.bait = "maggots"){
    size_mult += 0.3
    global.maggot_total -= 1
    if (global.maggot_total <= 0){
    global.bait = "none"
}
}

val_mult = size_mult;

if (global.bait = "bloodworms"){
    val_mult += 0.3
    global.bloodworm_total -= 1
    if (global.bloodworm_total <= 0){
    global.bait = "none"
}

    
}

if (global.garlic_total <= 0){
    global.bait = "none"
}

global.size = 0;

global.value = 0;

global.win = false;

global.fail = false;

alert_timer = 90;

speed = 1;
direction = irandom_range(0, 360)

touching = false;

image_xscale = 2
image_yscale = 2


//decide which fish is caught

while (global.caught_fish = "" and global.catching = true){
    
    if (rarity = "common"){
        if (fishID <=35){
    
            global.caught_fish = "Goldfish";//goldfish
            global.value = round(10*val_mult);     
            global.size = round(5*size_mult);
            speed = 0.8
            break;
        }
        else if(fishID > 35 and fishID <= 50){
            global.caught_fish = "Carp";
            global.value = round(13*val_mult);
            global.size = round(32*size_mult);
            break;

        }
        else if (fishID > 50 and fishID <= 75){ 
            global.caught_fish = "Crayfish";
            global.value = round(17*val_mult);
            global.size = round(10*size_mult);
            break;

        } 
        else if (fishID > 75 and fishID <= 95){
            global.caught_fish = "Brown Trout";
            global.value = round(22*val_mult);
            global.size = round(22*size_mult);
            speed = 1.2; 
            break;

        }
        else if (fishID > 95 and fishID <= 100){
            global.caught_fish = "Bass";
            global.value = round(30*val_mult);
            global.size = round(29*size_mult); 
            speed = 1.5;
            break;

        }
    }
    else if (rarity = "uc"){
        if (fishID <999999){
    
            global.caught_fish = "Goldfish";//goldfish
            global.value = round(10*val_mult);     
            global.size = round(5*size_mult);
            show_debug_message("PLACEHOLDER");
            break;
        }
    }
    else if (rarity = "rare"){
        if (fishID <999999){
    
            global.caught_fish = "Goldfish";//goldfish
            global.value = round(10*val_mult);     
            global.size = round(5*size_mult);
            show_debug_message("PLACEHOLDER");
            break;
        }
    }
    else if (rarity = "ur"){
        if (fishID <999999){
    
            global.caught_fish = "Goldfish";//goldfish
            global.value = round(10*val_mult);     
            global.size = round(5*size_mult);
            show_debug_message("PLACEHOLDER");
            break;
        }
    }
}


show_debug_message(global.caught_fish);
show_debug_message(global.value);
show_debug_message(global.size);
show_debug_message(speed);

