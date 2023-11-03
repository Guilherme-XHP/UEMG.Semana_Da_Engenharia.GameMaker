if alive{
	scr_player();
}else{
	scr_player();
	timer--;
	if timer == 0 {
		game_restart();
	}
}

if hit{
	timer--;
	if timer == 0 {
		hit = false;
		timer = 60;
	}
}