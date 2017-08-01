///Read Controls
//trace("Step " + string(global.StepNumber) + ": PlayerBase_GroundControlsMovement_scr");

//Basic Movement
var leftState = InputManager_GetButtonControlState_scr(ButtonControls.Left);
var rightState = InputManager_GetButtonControlState_scr(ButtonControls.Right);
var jumpState = InputManager_GetButtonControlState_scr(ButtonControls.Jump);

var accelHor = 0;
if(leftState == ButtonStates.Pressed || leftState == ButtonStates.JustPressed)
{
  accelHor -= m_movementGroundAccelHor;
  m_facing = -1;
}

if(rightState == ButtonStates.Pressed || rightState == ButtonStates.JustPressed)
{
  accelHor += m_movementGroundAccelHor;
  m_facing = 1;
}

if(accelHor != 0)
{
  Movable_ChangeHSpeed_scr(m_movementGroundMaxSpeed * m_facing, m_movementGroundAccelHor);
  m_movementGroundActivelyMoving = true;
}
else
{
  m_movementGroundActivelyMoving = false;
}

if(jumpState == ButtonStates.JustPressed)
{
  //Jump and change to air state
  if(!is_undefined(m_movementGroundJumpSpeed))
  {
    PlayerBase_Jump_scr();
  }
}

//Attack
if(InputManager_GetButtonControlState_scr(ButtonControls.Attack) == ButtonStates.JustPressed)
{
  m_combatantState = CombatantStates.GroundAttack;
  sprite_index = m_combatantSpriteGroundAttack;
  image_index = 0;
  m_movementGroundActivelyMoving = false;
  alarm[1] = sprite_get_number(m_combatantSpriteGroundAttack)/image_speed;
}

