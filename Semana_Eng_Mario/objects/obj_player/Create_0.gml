state = ""; // Controle De Animacao

power_up = 0;

//0 = Pequeno
//1 = Grange
//2 = Flor de Fogo (Desafio)

//Variaveis Padroes
spd = 3; // Valocidade
acc = .4; // Aceleracao
dcc = 1; //Desaceleracao
h_spd = 0; // Velocidade Horizontal
v_spd = 0; // Velocidade Vertical
v_spd_max = 8; // Valocidade Vertical Maxima

//Variaveis Extras
coyote_time = 0; 
coyote_time_max = 10;
in_ground = false;

//Morte Do Player
alive = true;
hit = false;
timer = 60;