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
	}else if state = "djump"{
		if v_spd < -.1 {
			sprite_index = spr_player_djump;
		}else if  v_spd > 0.5{
			sprite_index = spr_player_djump;
			image_index = 5;
		}
	}else if state = "idle" {
		sprite_index = spr_player_idle;
	}else if state = "run"{
		sprite_index = spr_player_run;
	}else if state = "hurt"{
		sprite_index = spr_player_hurt;
	}else if state = "roll"{
		sprite_index = spr_player_roll;
	}else if state = "push"{
		sprite_index = spr_player_push;
	}else if state = "land"{
		sprite_index = spr_player_land;
	}

	#endregion

}