///Read Controls
trace("Step " + string(global.StepNumber) + ": PlayerBase_AirControlsMovement_scr");

//Basic Movement
var leftState = InputManager_GetButtonControlState_scr(ButtonControls.Left);
var rightState = InputManager_GetButtonControlState_scr(ButtonControls.Right);
var jumpState = InputManager_GetButtonControlState_scr(ButtonControls.Jump);

var accelHor = 0;
if(leftState == ButtonStates.Pressed || leftState == ButtonStates.JustPressed)
{
  accelHor -= m_movementAirFallAccelHor;
}

if(rightState == ButtonStates.Pressed || rightState == ButtonStates.JustPressed)
{
  accelHor += m_movementAirFallAccelHor;
}

if(accelHor != 0)
{
  hspeed += accelHor;
  m_movementGroundActivelyMoving = true;
}
else
{
  m_movementGroundActivelyMoving = false;
}

if(jumpState == ButtonStates.JustPressed)
{
  //Extra airborne jumps if they remain
  //if(!is_undefined(m_movementGroundJumpSpeed))
  //{
    //vspeed = -m_movementGroundJumpSpeed;
  //}
}

//Attack
if(InputManager_GetButtonControlState_scr(ButtonControls.Attack) == ButtonStates.JustPressed)
{
  //m_combatantState = CombatantStates.GroundAttack;
  //sprite_index = m_combatantSpriteGroundAttack;
  //m_activelyMoving = false;
  //alarm[1] = 12;
}

