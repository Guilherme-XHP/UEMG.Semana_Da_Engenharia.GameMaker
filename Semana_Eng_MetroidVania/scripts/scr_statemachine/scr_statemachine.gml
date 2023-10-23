function scr_statemachine(){
	
	#region States Animation
	
	if state = "jump"{
		if v_spd < -0.5 {
			sprite_index = spr_player_jump;
			image_index = 0;
		}else if  v_spd = 0{
			sprite_index = spr_player_jump;
			image_index = 1;
		}else if  v_spd > 0.5{
			sprite_index = spr_player_jump;
			image_index = 2;
		}
	}else if state = "idle" {
		sprite_index = spr_player_idle;
	}else if state = "run"{
		sprite_index = spr_player_run;
	}

	#endregion

}