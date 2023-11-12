function scr_keys(){
	
	key_jump = keyboard_check_pressed(ord("Z"));
	key_left = keyboard_check(vk_left);
	key_right = keyboard_check(vk_right);
	key_dash = keyboard_check_direct(ord("X"))
	key_punch = keyboard_check_pressed(ord("C"))
	key_norun = keyboard_check_direct(vk_shift);

}