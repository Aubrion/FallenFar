/// scr_buff_add(target, stat_enum, type, value, duration)

with (argument[0])
{
    var index = array_height_2d(buffs);
    for (var i = 0; i < argument_count-1; i++)
        buffs[index,i] = argument[i+1];
}
