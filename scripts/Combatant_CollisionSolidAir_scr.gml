if(Hitbox_PlaceMeeting_scr(x, y, Solid_obj, PlayerMaskFull_spr))
{
  var dirPrevious = point_direction(x, y, xprevious, yprevious);
  move_outside_solid_with_mask(dirPrevious, speed, PlayerMaskFull_spr);
  //Did we hit a Wall, Floor, or ceiling?
  //Floor check
  var spriteHeight = sprite_get_height(sprite_index);
  var maskHeight = sprite_get_height(HitboxFloorCheckThin_spr);
  var spriteOrigY = sprite_get_yoffset(sprite_index);
  var hitboxY = y + spriteHeight - spriteOrigY - maskHeight + 1;
  //Ceil Check
  var hitboxCeilY = y - spriteOrigY + maskHeight - 1;
  //Right Wall Check
  var spriteWidth = sprite_get_width(sprite_index);
  var spriteOrigX = sprite_get_xoffset(sprite_index);
  var maskWidth = sprite_get_width(HitboxWallCheck_spr);
  var hitboxRightX = x + spriteWidth - spriteOrigX - maskWidth + 1;
  //Left Wall Check
  var hitboxLeftX = x - spriteOrigX + maskWidth;
  if(Hitbox_PlaceMeeting_scr(x, hitboxY, Solid_obj, HitboxFloorCheckThin_spr))
  {
    //We are on the floor
    m_combatantState = CombatantStates.Ground;
    vspeed = 0;
  }
  else if(Hitbox_PlaceMeeting_scr(x, hitboxCeilY, Solid_obj, HitboxFloorCheckThin_spr))
  {
    vspeed = 0;
  }
  else if(Hitbox_PlaceMeeting_scr(hitboxRightX, y, Solid_obj, HitboxWallCheck_spr))
  {
    //We are on the wall
    if(object_is(object_index, PlayerBase_obj))
    {
      m_playerState = PlayerStates.WallLatch;
      //We are now facing left
      m_facing = -1;
      PlayerBase_StateTransitionWallLatch_scr();
    }
  }
  else if(Hitbox_PlaceMeeting_scr(hitboxLeftX, y, Solid_obj, HitboxWallCheck_spr))
  {
    if(object_is(object_index, PlayerBase_obj))
    {
      m_playerState = PlayerStates.WallLatch;
      //We are now facing right
      m_facing = 1;
      PlayerBase_StateTransitionWallLatch_scr();
    }
  }
}

