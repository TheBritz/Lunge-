///PlayerSpear_SkewerEnemy_scr(spear, enemy)

var spear = argument0;
var enemy = argument1;

with(enemy)
{
  var sprite = sprite_index;
  instance_change(EnemySkewered_obj, false);
  sprite_index = sprite;
  image_speed = 0;
  ds_list_add(spear.m_skeweredEnemies, enemy);
}
