if alive = true{
	script_execute(scr_enemy);
	mask_index = spr_goomba_col;
}else{
	mask_index = spr_goomba_col_d;
	sprite_index = spr_goomba_idle;
	timer--;
	
	if timer == 0{
		instance_destroy();
	}
}