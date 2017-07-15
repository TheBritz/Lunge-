///Read Controls

//Basic Movement
var leftState = InputManager_GetButtonControlState_scr(ButtonControls.Left);
var rightState = InputManager_GetButtonControlState_scr(ButtonControls.Right);
var jumpState = InputManager_GetButtonControlState_scr(ButtonControls.Jump);

var accelHor = 0;
if(leftState == ButtonStates.Pressed || leftState == ButtonStates.JustPressed)
{
  accelHor -= m_movementGroundAccelHor;
}

if(rightState == ButtonStates.Pressed || rightState == ButtonStates.JustPressed)
{
  accelHor += m_movementGroundAccelHor;
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

if(jumpState == ButtonStates.Pressed)
{
  //Jump and change to air state
  if(!is_undefined(m_movementGoundJumpSpeed))
  {
    hspeed = -m_movementGroundJumpSpeed;
  }
}

