//mesma logica do sistema de morte do player
if alive = true{
	script_execute(scr_enemy);
	mask_index = spr_goomba_col; //Muda a colisao do objeto
}else{
	mask_index = spr_goomba_col_d; 
	sprite_index = spr_goomba_idle; //Muda o sprite base do objeto
	timer--; //Sistema de timer basico
	
	if timer == 0{
		instance_destroy();
	}
}