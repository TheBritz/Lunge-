///EnemyAIBase_GetExtensionScript_scr(enemyAIBase, behaviorState [EnemyAIStates enum])

var enemy = argument0;
var behaviorState = argument1;

if(!is_undefined(behaviorState) && !is_undefined(m_behaviorExtensions))
{
  return enemy.m_behaviorExtensions[? behaviorState];
}
else
{
  return undefined;
}


