function scr_player(){
	
	#region Colisao e Controles 

	script_execute(scr_keys);
	
	var _move = key_right - key_left;

	//Aceleracao X
	h_spd = h_spd + acc * _move;
	h_spd = clamp(h_spd, -spd, spd);
	
	//Gravidade
	v_spd = v_spd + global.grav;
	v_spd = clamp(v_spd, -v_spd_max, v_spd_max);
	
	if _move = 0{
		h_spd = lerp(h_spd, 0, dcc);
	}
	
	scr_collision();
	
	scr_statemachine();
	
	if h_spd != 0 {
		image_xscale = sign(h_spd);
	}
	
	if h_spd = 0{
		state = "idle"
	}else{
		state = "run";
	}
	
	#region Coyote Time
		if place_meeting(x, y + 1, obj_collision){
			double_jump = 2;
			in_ground = true;
			coyote_time = 0;
		}else{
			coyote_time++;
			state = "jump";
			if coyote_time >= coyote_time_max {
				coyote_time = 0
				in_ground = false;
			}
		}
	#endregion
	
	#region Jump

		if double_jump >= 1{
			if in_ground or double_jump >= 1{
				if key_jump and double_jump = 2{
					v_spd = 0;
					v_spd = -6;
					in_ground = false;
					state = "jump";
					double_jump -= 1;
				}else if key_jump and double_jump = 1{
					v_spd = 0;
					v_spd = -6;
					in_ground = false;
					state = "djump";
					double_jump -= 1;
				}
			}
		}if double_jump = 1{
			in_ground = false;
			state = "jump";
		}else if double_jump = 0{
			in_ground = false;
			state = "djump";
		}
	
	#endregion
	
	#region Dash 
	
		if (dash_is_dispo){
			if (key_dash && dash_timer <= 0 ){
				dash_timer = dash_durat;
			}
		}
		if(dash_is_dispo = false){
			dash_cooldown--
		} 
		if (dash_cooldown = 0){
			dash_is_dispo = true
			dash_cooldown = 90
		}
		if (dash_timer > 0){
		
			var _dash_progress = 1 - (dash_timer / dash_durat);
			var _interpolacao_spd = lerp(spd * image_xscale, dash_spd * image_xscale, _dash_progress * dash_suave);
			h_spd = _interpolacao_spd ;
			dash_timer--;
			state = "roll"
			scr_collision();
			dash_is_dispo = false;
		} 
	
		if (dash_timer <= 0){
			speed = 0;
		}
	
	#endregion
	
	#endregion

}