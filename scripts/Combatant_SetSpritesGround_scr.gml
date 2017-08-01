if(m_velocityH != 0 && !is_undefined(m_combatantSpriteRun))
{
  sprite_index = m_combatantSpriteRun;
  image_speed = m_combatantImageSpeedRun;
}
else if(!is_undefined(m_combatantSpriteIdle))
{
  sprite_index = m_combatantSpriteIdle;
}
