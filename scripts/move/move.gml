/// move(collision_object)

var collisionObject = argument[0];


// horizontal collisions
if(place_meeting(x+hspd,y,collisionObject)) {
	while(!place_meeting(x+sign(hspd),y,collisionObject)) {
		 x += sign(hspd);
	}
	hspd = 0;
}

// move x, must prioritize over y movement
x += hspd;

// vertical collisions
if(place_meeting(x,y+vspd,collisionObject)) {
	while(!place_meeting(x,y+sign(vspd),collisionObject)) {
		 y += sign(vspd);
	}
	vspd = 0;
}

y += vspd;