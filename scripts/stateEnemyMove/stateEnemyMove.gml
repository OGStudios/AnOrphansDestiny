var wallAtRight = place_meeting(x+1, y, objSolid);
var wallAtLeft = place_meeting(x-1,y,objSolid);
var ledgeAtRight = !position_meeting(bbox_right+1,bbox_bottom+1,objSolid);
var ledgeAtLeft = !position_meeting(bbox_left-1,bbox_bottom+1,objSolid);

switch(image_xscale) {


	case 1:
		if(!ledgeAtRight && !wallAtRight) x+=1;
		else image_xscale = -1;
		break;
	
	
	
	case -1:
		if(!ledgeAtLeft && !wallAtLeft) x-=1;
		else image_xscale = 1;
		break;
		

}
