/// @description Insert description here
// You can write your code in this editor


if(vsp < 10) {
	vsp = vsp + grav
}

// Jord
if(place_meeting(x,y+vsp,obj_wall)) {
	while(!place_meeting(x,y+sign(vsp), obj_wall)) {
		y = y + sign(vsp);
	}
	vsp = 0
}

// Muren
if(place_meeting(x+hsp,y,obj_wall)) {
	while(!place_meeting(x+sign(hsp),y, obj_wall)) {
		x = x + sign(hsp);
	}
	hsp = -hsp
}

// Animation
if(!place_meeting(x,y+1,obj_wall)) {
	sprite_index = spr_enemy_jumps
	image_speed = 0
	if(vsp > 0) {
		image_index = 1
	}
	else {
		image_speed = 0
	}
	 
}
else if (hsp!=0) {
		sprite_index = spr_enemy_runs;
		image_speed = 30;
}
else {
	sprite_index = spr_enemy;
	image_speed = 1;
}
	
if(hsp !=0 ) {
	image_xscale = sign(hsp);
}


y = y + vsp
x = x + hsp;
