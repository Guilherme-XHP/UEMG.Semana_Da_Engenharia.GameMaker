function scr_enemy(){
	
	//Reutiloizado do player
	v_spd = v_spd + global.grav;
	v_spd = clamp(v_spd, -v_spd_max, v_spd_max);
	
	//Sistema basico de movimentacao
	h_spd = spd * dir;
	
	//define a direcao que o sprite esta virado
	// 1 = Direita 
	//-1 = Esquerda
	if h_spd != 0{
		image_xscale = sign(h_spd); //calculo para definir a direcao do sprite
	}
	
	scr_collision(); //Colisao
	
	//Sistema basico para caso o obeto colida com uma parede, ele muda sua direcao automaticamente
	if place_meeting(x + h_spd, y, obj_collision){
		dir = dir * -1;		
	}
	
}