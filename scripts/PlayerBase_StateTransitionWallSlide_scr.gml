///PlayerBase_StateTransitionWallSlide_scr(facing)
var facing = argument0;
//Set player vspeed, sprite and direction facing
if(object_is(object_index, PlayerBase_obj))
{
  if(m_playerState != PlayerStates.WallSlide)
  {
    m_facing = facing;
    vspeed*=.35;
    hspeed = 0;
    m_playerState = PlayerStates.WallSlide;
    m_combatantState = CombatantStates.None;
    sprite_index = PlayerWallCling_spr;
    if(m_facing == 1)
    {
      move_outside_solid(0, sprite_width);
    }
    else
    {
      move_outside_solid(180, sprite_width);
    }
  }
}


