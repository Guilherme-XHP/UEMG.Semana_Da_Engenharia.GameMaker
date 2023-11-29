//Sistema de Animacao de Morte
if alive{
	scr_player(); //Script do player - onte esta toda a logica do player
}else{
	scr_player();
	timer--; //Timer basico
	if timer == 0 {
		game_restart(); //Reinicia o jogo quando o timer acaba
	}
}

//Sistema de Power up
if hit{
	timer--; //Reutilizando o timer basico
	if timer == 0 {
		hit = false;
		timer = 60; //Tempo do timer
	}
}