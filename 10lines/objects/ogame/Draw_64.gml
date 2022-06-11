draw_set_font(fntTypewriter);
if (y == 0){
	next_letter = choose("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z")};
draw_rectangle_color(0, 0, display_get_gui_width(), display_get_gui_height(), make_color_rgb(255 * clamp((y++ - 5) / 40, 0, 1), 255 * clamp((y - 5) / 40, 0, 1), 255 * clamp((y - 5) / 40, 0, 1)), make_color_rgb(255 * clamp((y - 5) / 40, 0, 1), 255 * clamp((y - 5) / 40, 0, 1), 255 * clamp((y - 5) / 40, 0, 1)), make_color_rgb(255 * clamp((y - 5) / 40, 0, 1), 255 * clamp((y - 5) / 40, 0, 1), 255 * clamp((y - 5) / 40, 0, 1)), make_color_rgb(255 * clamp((y - 5) / 40, 0, 1), 255 * clamp((y - 5) / 40, 0, 1), 255 * clamp((y - 5) / 40, 0, 1)), false);
draw_text_transformed_color(display_get_gui_width() / 2 - (string_width((y < 60) ? next_letter : "- press space to retry -") / 2), display_get_gui_height() / 2 - string_height(next_letter), y < 60 ? next_letter : "- press space to retry -", 1, 1, 0, y < 60 ? c_white : c_black, y < 60 ? c_white : c_black, y < 60 ? c_white : c_black, y < 60 ? c_white : c_black, y < 60 ? 1 : (y * 0.02 - 1.2));
if (keyboard_lastchar == next_letter and y < 60){
	y = 0};
if (y >= 60 and keyboard_check_pressed(vk_space)){
	game_restart()};
draw_text_transformed_color(display_get_gui_width() / 2 - (string_width("- " + string((keyboard_lastchar == next_letter and y < 60) ? x++ : x) + " -") / 2), string_height("- " + string(x) + " -"), "- " + string(x) + " -", 1, 1, 0, y < 60 ? c_white : c_black, y < 60 ? c_white : c_black, y < 60 ? c_white : c_black, y < 60 ? c_white : c_black, y < 60 ? 1 : (y * 0.02 - 1.2));