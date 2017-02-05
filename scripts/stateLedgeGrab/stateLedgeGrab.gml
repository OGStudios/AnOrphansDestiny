/// stateLedgeGrab

var jkey = keyboard_check(vk_up);
var dkey = keyboard_check(vk_down);

if(dkey) state = stateMove;
if(jkey) {state = stateMove;vspd = -jspd;}
