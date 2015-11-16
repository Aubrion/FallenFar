//info
maxstep=ceil(37 / global.attackspeed)
rotationsteps=ceil(30 / global.attackspeed)

//steps
if step < maxstep
    step++
else
{
    obj_player.state=0
    step=-1
    state=1
}

///Greatweapon
if instance_exists(obj_twohanded)
{
    if step=0 
    {
        obj_player.state=1
        image_angle=0
        image_xscale=obj_player.image_xscale  
        image_yscale=-obj_player.scale
    }

    if step>=1 and step<=rotationsteps
    {
        y=obj_player.y+6
        x=obj_player.x+2

        if image_xscale>0
            image_angle = 0 - ceil((180 / rotationsteps)*step)
        else
            image_angle = 0 + ceil((180 / rotationsteps)*step)
    }

    if step>rotationsteps
    {
        y=obj_player.y+6
        if image_xscale>0
            x=obj_player.x+3
        else
            x=obj_player.x-3
    }

    ///movement and effect
    if step<ceil(10 / global.attackspeed)
    {
        scr_blur(20,2)
        if image_xscale>0
            player_attack_movement(0,1.3)
        else
            player_attack_movement(180,1.3)
    }
    if step>ceil(10 / global.attackspeed) and step<rotationsteps
    {
        scr_blur(20,5)
        if image_xscale>0
            player_attack_movement(0,0.5)
        else
            player_attack_movement(180,0.5)
    }
}
