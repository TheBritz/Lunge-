///Movable_ChangeSpeed_scr(speedToChange, targetSpeed, acceleration)

var speedToChange = argument0;
var targetSpeed = argument1;
var acceleration = argument2;

if (inputStartSpeed < targetSpeed)
    speedToChange = min(speedToChange + acceleration, targetSpeed); 
else
    speedToChange = max(speedToChange - acceleration, targetSpeed);
