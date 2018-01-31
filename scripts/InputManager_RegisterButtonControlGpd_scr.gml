///InputManager_RegisterButtonControlGpd_scr(buttonControl [ButtonControls enum], gamepadButton)
var btnCtrl = argument0;
var keyCode = argument1;

//Add to the keys list and key to button control map
ds_list_add(m_gamepadList, keyCode);
m_gamepadToButtonControlMap[? keyCode] = btnCtrl;


