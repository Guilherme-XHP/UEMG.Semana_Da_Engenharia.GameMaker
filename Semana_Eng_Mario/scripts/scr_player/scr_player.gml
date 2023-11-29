function scr_player(){
	
	//Variaveis de botoes do jogo
	key_left = keyboard_check(vk_left)
	key_right = keyboard_check(vk_right)
	key_jump = keyboard_check_pressed(ord("C"))
	key_action = keyboard_check_pressed(ord("Z"))
	
	//Inicializador do movimento
	var _move = key_right - key_left;

	//Aceleracao X
	h_spd = h_spd + acc * _move;
	h_spd = clamp(h_spd, -spd, spd);
	
	//Gravidade
	v_spd = v_spd + global.grav;
	v_spd = clamp(v_spd, -v_spd_max, v_spd_max);
	
	//Desaceleracao
	if _move = 0{
		h_spd = lerp(h_spd, 0, dcc);
	}

	//Dar colisao cado o player estaja vivo
	if alive{
		scr_collision();
	}else{
		if place_meeting(x, y + v_spd, obj_collision){
		}
		y += v_spd;
	}

	
	#region State Machine / Animacoes do player
	
	if power_up = 0{
		if state = "jump"{
			sprite_index = spr_player_jump;
		}else if state = "run" {
			sprite_index = spr_player_walk;
		}else if state = "idle" {
			sprite_index = spr_player_idle;
		}else if state = "died"{
			sprite_index = spr_player_died;
		}
	}else if power_up = 1 {
			if state = "jump"{
			sprite_index = spr_player_jump_g;
		}else if state = "run" {
			sprite_index = spr_player_walk_g;
		}else if state = "idle" {
			sprite_index = spr_player_idle_g;
		}
	} 
	
	#endregion
	
	#region Controle Anim / Controle da animacao base
	
	if h_spd != 0 {
		image_xscale = sign(h_spd);
	}
	
	if alive{
		if h_spd = 0{
			state = "idle"
		}else{
			state = "run";
		}
	}
	
	//Mascara de Colisao
	if power_up = 0{
		mask_index = spr_player_col_p;
	}else if power_up >= 1{
		mask_index = spr_player_col_g;
	}
	
	#endregion
	
	#region Coyote Time
		if alive{
			if place_meeting(x, y + 1, obj_collision){
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
		}
	#endregion
	
	#region Jump / todo codigo de pulo
	
		if alive{
			if in_ground{
				if key_jump{
					v_spd = 0;
					v_spd = -6.8;
					in_ground = false;
					state = "jump";
				}
			}else{
				in_ground = false;
				state = "jump";
			}
		}
	
	#endregion
	
	#region Kill Enemy / sistema que caso o player pule em cima do inimigo, o mesmo sera destruido
	
	if !in_ground and v_spd > 0{
		var _collision_enemy = instance_place(x,y + 1, obj_enemy_par);
		if _collision_enemy{
			v_spd = 0;
			v_spd = -5;
			_collision_enemy.id.alive = false;
		}
	}
			
	#endregion
	
}