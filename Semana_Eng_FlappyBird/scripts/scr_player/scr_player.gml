function scr_player(){
	
	key_jump = keyboard_check_pressed(vk_space);
	
	v_spd = v_spd + grav;
	
	//Y
	if place_meeting(x, y + v_spd, obj_wall){
		while !place_meeting(x, y + sign(v_spd), obj_wall){
			y += sign(v_spd);
		}
		game_restart();
	}
	y += v_spd;
	
	//Y
	if place_meeting(x, y + v_spd, obj_wall_1){
		while !place_meeting(x, y + sign(v_spd), obj_wall_1){
			y += sign(v_spd);
		}
		v_spd = 0;
	}
	y += v_spd;
	
	
	if key_jump {
		v_spd = -8;
	}

}