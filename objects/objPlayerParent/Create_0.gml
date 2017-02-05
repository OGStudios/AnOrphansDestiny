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
state = stateMove;
prevState = 0;

canAttackPrimary = true;

level = 0;
con = irandom_range(1,4); // 4hp/con ?
int = irandom_range(1,4); // 2mp & +2% dmg per int?
wis = irandom_range(1,4); // mag def 
dex = irandom_range(1,4); // chance to hit (glancing 50% dmg no crits, normal 100% dmg, crushing hit 125%)
str = irandom_range(1,4); // phys atk
luck = irandom_range(1,4); // crit hit chance 0.5%/luck ?

spd = 4;
grav = 1;
accel = 1;
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

startPoints = 10;
usedPoints = 0;
totalPoints = 10;
