/// @description platform movement physics
// You can write your code in this editor


var hspd_dir = (keyboard_check(vk_right) - keyboard_check(vk_left));
var jkey = keyboard_check(vk_up);

if (hspd_dir != 0) {
	hspd += hspd_dir*accel;
	if (hspd > spd || hspd < -spd) hspd = clamp(hspd,-spd,spd);
	image_xscale = sign(hspd_dir);
} else {
	applyFriction(accel);
}

if(place_meeting(x,y+1,objSolid)) {
	vspd = 0;
	
	// Jump
	if(jkey) {
		vspd = -jspd;
		//draw_xscale = 0.7;
		//draw_yscale = 1.5;
	}
} else {
	// gravity cap
	if(vspd < 10) {
		vspd += grav;
	}
			
}


move(objSolid);

//check for ledge

var falling = y-yprevious > 0;
var nowallprev = !position_meeting(x+(17*image_xscale),yprevious,objSolid); // check pixel for wall
var iswall = position_meeting(x+(17*image_xscale),y,objSolid);

if(falling && nowallprev && iswall) {
	hspd = 0;
	vspd = 0;
	while(!place_meeting(x+image_xscale,y,objSolid)) {
		x += image_xscale;
	}
	
	while(position_meeting(x+(16*image_xscale),y-1,objSolid)) {
		y -= 1;
	}
	state = stateLedgeGrab;
}
//draw_xscale = lerp(draw_xscale,1, .1);
//draw_yscale = lerp(draw_yscale,1,.2);

if(place_meeting(x,y+1,objSolid) && !place_meeting(x,yprevious+1,objSolid)) {
	//draw_yscale = 0.8;
	//draw_xscale = 1.15*image_xscale;
}
