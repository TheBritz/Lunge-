vspeed += m_playerMovementWallSlideGravity;
m_playerMovementWallSlideMaxSpeed = 
  limit_value_magnitude(vspeed, m_playerMovementWallSlideMaxSpeed);

//Check for floor
var spriteHeight = sprite_get_height(sprite_index);
var spriteOrigY = sprite_get_yoffset(sprite_index);
var hitboxY = y + spriteHeight - spriteOrigY;
if(Hitbox_PlaceMeeting_scr(x, hitboxY, Solid_obj, HitboxFloorCheck_spr))
{
  //State changed to Air
  m_combatantState = CombatantStates.Ground;
  m_playerState = PlayerStates.None;
  vspeed = 0;
}
