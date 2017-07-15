///Check for solids
trace("Step " + string(global.StepNumber) + ": Combatant_CollisionSolidGround_scr");

//Check for floor
var spriteHeight = sprite_get_height(sprite_index);
var spriteOrigY = sprite_get_yoffset(sprite_index);
var hitboxY = y + spriteHeight - spriteOrigY;
if(!Hitbox_PlaceMeeting_scr(x, hitboxY, Solid_obj, HitboxFloorCheck_spr))
{
  //State changed to Air
  m_combatantState = CombatantStates.Air;
}

//Check for Wall
//Right
var spriteWidth = sprite_get_width(sprite_index);
var spriteOrigX = sprite_get_xoffset(sprite_index);
var maskWidth = sprite_get_width(HitboxWallCheck_spr);
var hitboxRightX = x + spriteWidth - spriteOrigX - maskWidth + 1;
if(Hitbox_PlaceMeeting_scr(hitboxRightX, y, Solid_obj, HitboxWallCheck_spr))
{
  //Right wall collision
  move_until_solid_with_mask(xprevious, yprevious, 0, 1, PlayerMaskFull_spr);
  //move_outside_solid_with_mask(180, speed*2, PlayerMaskFull_spr);
  hspeed = 0;
}

//Left
var hitboxLeftX = x - spriteOrigX + maskWidth - 1;
if(Hitbox_PlaceMeeting_scr(hitboxLeftX, y, Solid_obj, HitboxWallCheck_spr))
{
  //Left wall collision
  move_until_solid_with_mask(xprevious, yprevious, 180, 1, PlayerMaskFull_spr);
  //move_outside_solid_with_mask(0, speed*2, PlayerMaskFull_spr);
  hspeed = 0;
}
