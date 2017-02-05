script_execute(state);
var attack1_key = keyboard_check(vk_space);

if(attack1_key && canAttackPrimary) {
// create instance on Projectile room layer.
	var tempAttack = instance_create_layer(x,y,"Projectiles",objMagicAttack1);
	tempAttack.image_xscale = image_xscale;
	canAttackPrimary = false;
	alarm[0] = 0.5*room_speed;


}
