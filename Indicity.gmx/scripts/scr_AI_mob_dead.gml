/// scr_AI_mob_dead();

// Change to dying sprite
if (sprite_index != sprite_die)
{
    sprite_index = sprite_die;
    image_speed = sprite_die_speed;
}

// Check if animation is finished
if (image_index > (sprite_get_number(sprite_die)-1))
    instance_destroy();
