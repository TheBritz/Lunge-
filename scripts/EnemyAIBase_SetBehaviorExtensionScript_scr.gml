///EnemyAIBase_SetIdlingExtensionScript_scr(enemyAIBase, behaviorState [EnemyAIStates enum], extScript)

var enemy = argument0;
var behaviorState = argument1;
var extScript = argument2;

enemy.m_behaviorExtensions[? behaviorState] = extScript;


