    if (dest_alarm > 0){
        dest_alarm -= 0.016;
        if (dest_alarm <=0 ) {
                instance_destroy()
            }
     }
else{
    dest_alarm = -1;
}