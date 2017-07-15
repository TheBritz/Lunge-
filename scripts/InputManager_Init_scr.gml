m_keyControls = ds_map_create();
m_keyToButtonMap = ds_map_create();
m_keysList = ds_list_create();
m_buttonControlStates = ds_map_create();

enum ButtonControls
{
  Left,
  Right,
  Down,
  Up,
  Attack,
  Jump,
  Block
}
