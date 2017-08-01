///Check for solids
//trace("Step " + string(global.StepNumber) + ": Combatant_CollisionSolidGround_scr");

//Check for floor
if(m_collideV != 1)
{
  //State changed to Air
  m_combatantState = CombatantStates.Air;
}

/*
if(m_collideH != 0)
{
  
}

//Check for Wall
//Right
var spriteWidth = sprite_get_width(sprite_index);
var spriteOrigX = sprite_get_xoffset(sprite_index);
var maskWidth = sprite_get_width(HitboxWallCheck_spr);
var hitboxRightX = x + spriteWidth - spriteOrigX - maskWidth + 2;
var wallRight = Hitbox_InstancePlace_scr(hitboxRightX, y, Solid_obj, HitboxWallCheck_spr);
if(instance_exists(wallRight))
{
  //Right wall collision
  move_outside(wallRight, 180, sprite_width);
  //move_outside_solid_with_mask(180, speed*2, PlayerMaskFull_spr);
  hspeed = 0;
}

//Left
var hitboxLeftX = x - spriteOrigX + maskWidth - 4;
var wallLeft = Hitbox_InstancePlace_scr(hitboxLeftX, y, Solid_obj, HitboxWallCheck_spr);
if(instance_exists(wallLeft))
{
  //Left wall collision
  move_outside(wallLeft, 0, sprite_width);
  //move_outside_solid_with_mask(0, speed*2, PlayerMaskFull_spr);
  hspeed = 0;
}
