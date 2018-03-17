///PlayerBase_ThrowMovmentDust_scr(player)

var player = argument0;
instance_create(player.x, player.bbox_bottom, MovementDust_obj);
