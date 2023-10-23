if dev_mode = true{
	
	draw_set_font(fnt_cyber);
	
	draw_text(_xx, _yy * 1, string(game_display_name));
	draw_text(_xx, _yy * 2, "Dev_Mode: " +string(dev_mode));
	
	draw_text(_xx, _yy * 4, "Player.State: " +string(obj_player.state));
	draw_text(_xx, _yy * 5, "Player.x: " +string(obj_player.x));
	draw_text(_xx, _yy * 6, "Player.y: " +string(obj_player.y));
	draw_text(_xx, _yy * 7, "Player.D_Jump: " +string(obj_player.double_jump));
	draw_text(_xx, _yy * 8, "Player.In_Ground: " +string(obj_player.in_ground));

}else{
	
	draw_set_font(fnt_cyber);

	draw_text(_xx, _yy * 1, string(game_display_name));

}