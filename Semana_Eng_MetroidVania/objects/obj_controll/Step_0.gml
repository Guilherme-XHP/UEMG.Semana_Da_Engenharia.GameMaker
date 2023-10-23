var _cam_x = camera_get_view_x(view_camera[0]);

layer_x("par_game", _cam_x * -0.5);
layer_x("par_1", _cam_x * 0.5);
layer_x("par_2", _cam_x * 0.6);
layer_x("par_3", _cam_x * 0.7);
layer_x("par_bkg", _cam_x * 0.8);