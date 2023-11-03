if obj_player.alive and obj_player.power_up == 0 and obj_player.timer = 60{
	obj_player.alive = false;
	obj_player.state = "died";
	obj_player.v_spd -= 10;
}
if obj_player.power_up >= 1{
	obj_player.power_up = 0;
	obj_player.hit = true;
}