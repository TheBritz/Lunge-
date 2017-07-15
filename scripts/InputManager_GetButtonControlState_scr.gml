///InputManager_GetButtonControlState_scr(button)
var button = argument0; 

with(InputManager_obj)
{
  var buttonState = m_buttonControlStates[? button];
  return buttonState;
}
