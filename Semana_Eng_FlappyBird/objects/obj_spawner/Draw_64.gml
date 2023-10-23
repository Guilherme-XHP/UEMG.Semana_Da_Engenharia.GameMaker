var cx = camera_get_view_x(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);

draw_set_font(fnt_comic);
draw_text(cx + cw/2, 64, string(score));