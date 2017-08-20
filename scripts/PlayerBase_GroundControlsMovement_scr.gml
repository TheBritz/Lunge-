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
  //Change to jump crouch state
  if(!is_undefined(m_movementGroundJumpSpeed))
  {
    m_combatantState = CombatantStates.JumpCrouch;
    if(sprite_exists(m_combatantSpriteJumpCrouch))
    {
      sprite_index = m_combatantSpriteJumpCrouch;
    }
    if(!is_undefined(m_combatantImageSpeedJumpCrouch))
    {
      image_speed = m_combatantImageSpeedJumpCrouch;
    }
    alarm[CombatantAlarms.JumpLag] = m_movementJumpLag;
  }
}

//Attack
if(InputManager_GetButtonControlState_scr(ButtonControls.Attack) == ButtonStates.JustPressed)
{
  Combatant_StartGroundAttack_scr();
}

