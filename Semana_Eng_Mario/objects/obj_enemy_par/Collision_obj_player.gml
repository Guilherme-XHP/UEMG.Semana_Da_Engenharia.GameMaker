if obj_player.alive and obj_player.power_up == 0 and obj_player.timer = 60{ //Detecta se o player esta apto para morrer
	obj_player.alive = false;
	obj_player.state = "died";
	obj_player.v_spd -= 10;
}
if obj_player.power_up >= 1{ //detecta se o player tem um power up
	obj_player.power_up = 0;
	obj_player.hit = true;
}