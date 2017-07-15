for(var i = 0; i < ds_list_size(m_keysList); i++)
{
  var key = m_keys[| i];
  var control = m_keyControls[? key];
  if(keyboard_check_pressed(key))
  { 
    m_buttonControlStates[? control] = ButtonStates.JustPressed;
  }
  else if(keyboard_check_released(key))
  {
    m_buttonControlStates[? control] = ButtonStates.JustReleased;
  }
  else if(keyboard_check(key))
  {
    m_buttonControlStates[? control] = ButtonStates.Pressed;
  }
  else
  {
    m_buttonControlStates[? control] = ButtonStates.Released; 
  }
}
