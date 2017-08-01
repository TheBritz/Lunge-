///Combatant_StateAir_scr()

if(!is_undefined(m_combatantSpriteFall))
{
  sprite_index = PlayerFall_spr;
}

Combatant_LimitAirSpeed_scr();
Combatant_CollisionSolidAir_scr();
Combatant_ApplyGravity_scr();
