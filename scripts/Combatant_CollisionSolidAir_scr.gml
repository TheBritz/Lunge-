trace("Step " + string(global.StepNumber) + ": Combatant_CollisionSolidAir_scr");

if(Hitbox_PlaceMeeting_scr(x, y, Solid_obj, PlayerMaskFall_spr))
{
  //move_outside_solid_with_mask(dirPrevious, speed, PlayerMaskFull_spr);
  var previousPosition = Entity_GetPreviousPosition_scr(id, 2);
  var dirPrevious = point_direction(previousPosition[0], previousPosition[1], x, y);
  move_until_solid_with_mask(previousPosition[0], previousPosition[1], x, y, 1, PlayerMaskFull_spr);
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
    move_outside_solid(90, sprite_height);
    vspeed = 0;
  }
  else if(Hitbox_PlaceMeeting_scr(x, hitboxCeilY, Solid_obj, HitboxFloorCheckThin_spr))
  {
    vspeed = 0;
    move_outside_solid(270, speed*2);
  }
  else if(Hitbox_PlaceMeeting_scr(hitboxRightX, y, Solid_obj, HitboxWallCheck_spr))
  {
    //We are on the wall
    var wall = Hitbox_InstancePlace_scr(hitboxRightX, y, Solid_obj, HitboxWallCheck_spr);
    if(object_is(object_index, PlayerBase_obj))
    {
      //We are now facing left
      if(hspeed >= m_playerWallLatchSpeedThresh)
      {
        PlayerBase_StateTransitionWallLatch_scr(-1);
      }
      else if(hspeed > 0)
      {
        PlayerBase_StateTransitionWallSlide_scr(-1);
      }
    }
  }
  else if(Hitbox_PlaceMeeting_scr(hitboxLeftX, y, Solid_obj, HitboxWallCheck_spr))
  {
    if(object_is(object_index, PlayerBase_obj))
    {
      if(hspeed <= -m_playerWallLatchSpeedThresh)
      {
        PlayerBase_StateTransitionWallLatch_scr(1);
      }
      else if(hspeed < 0)
      {
        PlayerBase_StateTransitionWallSlide_scr(1);
      }
    }
  }
}

