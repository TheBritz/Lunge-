///PlayerSpear_SkewerEnemy_scr(spear, enemy)

var spear = argument0;
var enemy = argument1;

with(enemy)
{
  if(!is_undefined(m_eventGettingHit))
  {
    script_execute(m_eventGettingHit);
  }
  
  if(m_skewerable)
  {
    var sprite = sprite_index;
    instance_change(EnemySkewered_obj, false);
    sprite_index = sprite;
    image_speed = 0;
    ds_list_add(spear.m_skeweredEnemies, enemy);
  }
}
