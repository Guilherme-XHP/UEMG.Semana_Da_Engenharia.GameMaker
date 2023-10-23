var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);

//x
layer_x("par_1", _cam_x * 0.5);
layer_x("par_2", _cam_x * 0.6);
layer_x("par_3", _cam_x * 0.7);
layer_x("par_bkg", _cam_x * 0.8);

//y
layer_y("par_1", _cam_y / 75);
layer_y("par_2", _cam_y / 76);
layer_y("par_3", _cam_y / 77);
layer_y("par_bkg", _cam_y / 78);

if (current < array_length(keys_dev)){
  if keyboard_check_pressed(vk_anykey) {
    if keyboard_check_pressed(keys_dev[current]) {
      current++;
    } else {
      current = 0;
    }
  }
} else {
	if dev_mode = false{dev_mode = true}
	else if dev_mode = true{dev_mode = false}
	current = 0;
}