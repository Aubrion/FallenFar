/// scr_AI_mob_handle_state();
/// Call every step of a mob object
/// Redirects to the correct script for the current state

switch(state)
{
    case ai_state.dead:
        scr_AI_mob_dead();
        break;
        
    case ai_state.idle:
        scr_AI_mob_idle();
        break;
}
