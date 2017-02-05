/// @description Player Parent - init vars
// You can write your code in this editor

/*
 * To Do:
 * 
 *  Create Movement in Parent
 *  Create Primary Attack
 *  Create Secondary Attack
 *  Change Sprite direction based on target direction
 *  Start state machine 


*/


// init default vars
defaultSprite = "sprPlayerTemp";
state = stateEnemyIdle;

con = 0; // 4hp/con ?
int = 0; // 2mp & +2% dmg per int?
wis = 0; // mag def 
dex = 0; // chance to hit
str = 0; // phys atk
luck = 0; // crit hit chance 0.5%/luck ?

spd = 4;
grav = 1;
accel = 2;
hspd = 0;
vspd = 4;
jspd = 12;

draw_xscale = 1;
draw_yscale = 1;

maxhp = 0;
hp = 0;
maxmp = 0;
mp = 0;
attack = 0;
critrate = 0;
critdmg = 1.5;


