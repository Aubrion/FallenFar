/*

The lynx system is quite complex.
This is why i (Tigerino2) have added a guide for adding Lynx Parts

------------------------------------------------------------------

To add a new part:
1. Copy the template script in the folder of the type you want to create
2. Name this script in this format: scr_lynx_[type]_[name]
3. Add the init code for the part (when needed). This code will be executed once when the skill is executed
4. Add the step code for the part (when needed). This code will be executed every step als long as the skill is active
5. Add a call to scr_lynx_skill_part_finished when your part has finished its job
6. Add your skill part to the array in scr_lynx_skill_init, using the template at the top of that script
7. When needed, update scr_lynx_skill_object_init to add variables you need for the part
8. When needed, update scr_lynx_hit to use your custom variables
9. Test your new part in several diferent skills, to make sure it works correctly with other parts.

------------------------------------------------------------------

Lynx engine explained:

obj_regelaar runs the script scr_lynx_init. This will add the list
of all the existing parts tot the object, which can then be
accessed like this: obj_regelaar.lynx[id,index]
See scr_lynx_init for what the indexes contain.

The player runs scr_lynx_skill_init in its creation code.
This will add the skill slots and triggers to the object.

When the player presses a skill trigger, an instance of obj_lynx
is created at the player location. This instance will get the 
skill array passed to it, stored in the skill slot. Then
obj_lynx will run the init sections of all the parts used in that
skill. It will then proceed to run the step sections of all parts
every step, until all the parts have called 
scr_lynx_skill_part_finished.

When the players weapon or a lynx projectile hits a target, the 
script scr_lynx_hit gets called, targeting the other object.
The effects of the skill will then be applied to that target.
