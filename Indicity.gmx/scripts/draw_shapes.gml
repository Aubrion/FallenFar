//argument0 = user event
surface_set_target(surfaceA);
draw_clear_alpha(0,0);
event_user(argument0);
surface_reset_target();
surface_set_target(surfaceB);
draw_clear_alpha(0,0);
draw_surface(surfaceA,  0,  0);
draw_surface(surfaceA,  1,  0);
draw_surface(surfaceA, -1,  0);
draw_surface(surfaceA,  0,  1);
draw_surface(surfaceA,  0, -1);
draw_set_blend_mode_ext(bm_zero, bm_inv_src_color);
draw_surface(surfaceA, 0, 0);
draw_set_blend_mode(bm_normal);
surface_reset_target();

