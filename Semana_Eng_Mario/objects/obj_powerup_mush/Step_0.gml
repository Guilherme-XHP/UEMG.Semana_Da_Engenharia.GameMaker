//sistema de gravidade reutilizado do player
v_spd = v_spd + global.grav;
v_spd = clamp(v_spd, -v_spd_max, v_spd_max);
	
//sistema de movimentacao reutilizado do inimigo
h_spd = spd * dir;
	
scr_collision(); //Colisao
	
//Sistema reunilizado do inimigo
if place_meeting(x + h_spd, y, obj_collision){
	dir = dir * -1;		
}
	
