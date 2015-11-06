/// scr_draw_healtbar(bar_x, bar_y, bar_width, bar_height, value, maxvalue, color)

// Retrieve arguments
bar_x = argument0;
bar_y = argument1;
bar_width = argument2;
bar_height = argument3;
value = argument4;
maxvalue = argument5;
color = argument6;

// Draw the bar beneath
draw_set_alpha(1);
draw_rectangle_color(bar_x, bar_y, bar_x+bar_width, bar_y+bar_height, c_white, c_black, c_black, c_black, 0);

// Draw health
draw_set_alpha(0.5);
draw_rectangle_color(bar_x, bar_y, bar_x+bar_width*(value/maxvalue), bar_y+bar_height, color, color, color, color, 0);

// Draw outline
draw_set_alpha(1);
draw_rectangle_color(bar_x, bar_y, bar_x+bar_width, bar_y+bar_height, c_black, c_black, c_black, c_black,1);
