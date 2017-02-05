/// @description Movement Decision Trigger
// You can write your code in this editor

image_xscale = choose(1,-1);

state = choose(stateEnemyIdle, stateEnemyMove);

alarm[0] = room_speed * random_range(0.5,1.5);
