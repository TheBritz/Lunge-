///PlayerSpear_Detonate_scr(spear)

var spear = argument0;

with spear
{
  if(PlayerSpear_CanDetonate_scr(id))
  {
    var spearLength = sprite_width - sprite_xoffset - 5;
    var coords = relative_coordinates(x, y, spearLength, 0, spear.image_angle);
    var detonation = instance_create(coords[0], coords[1], SpearDetonation_obj);
    detonation.depth = depth - 1;
    m_charge -= m_chargeToDetonate;
    return detonation;
  }
  return noone;
}
