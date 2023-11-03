function scr_enemy(){
	
	v_spd = v_spd + global.grav;
	v_spd = clamp(v_spd, -v_spd_max, v_spd_max);
	
	h_spd = spd * dir;
	
	if h_spd != 0{
		image_xscale = sign(h_spd);
	}
	
	scr_collision();
	
	if place_meeting(x + h_spd, y, obj_collision){
		dir = dir * -1;		
	}
	
}