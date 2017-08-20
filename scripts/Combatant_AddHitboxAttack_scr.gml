///Combatant_AddHitbox_scr(args[mask, relativeX, relativeY, framesToLive])
var args = argument0;
var i = 0;
var mask = args[i++];
var relPosX = args[i++];
var relPosY = args[i++];

var ttl = -1;
if(array_length_1d(args) > i)
{
  ttl = args[i++];
}

var framesToLive = round(ttl / image_speed);

var hitbox = Hitbox_Create_scr(mask, x, y, relPosX, relPosY, framesToLive);
ds_list_add(m_hitboxesAttack, hitbox);
