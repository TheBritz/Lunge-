///Check for solids

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
var maskWidth = sprite_get_width(HitboxFloorCheck_spr);
var hitboxRightX = x + spriteWidth - spriteOrigX - maskWidth + 1;
if(Hitbox_PlaceMeeting_scr(hitboxRightX, y, Solid_obj, HitboxWallCheck_spr))
{
  //Right wall collision
  move_outside_solid_with_mask(180, speed, PlayerMaskFull_spr);
  hspeed = 0;
}

//Left
var hitboxLeftX = x - spriteOrigX + maskWidth - 1;
if(Hitbox_PlaceMeeting_scr(hitboxLeftX, y, Solid_obj, HitboxWallCheck_spr))
{
  //Left wall collision
  move_outside_solid_with_mask(0, speed, PlayerMaskFull_spr);
  hspeed = 0;
}
