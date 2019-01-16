/// @description Insert description here
// You can write your code in this editor
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_jmp = keyboard_check_pressed(vk_up) || keyboard_check(vk_space);

move = key_right - key_left;

hsp = move*movespeed;

color = 5

if(vsp < 10) {
	vsp = vsp + grav
}

if(place_meeting(x,y+vsp,obj_wall)) {
	while(!place_meeting(x,y+sign(vsp), obj_wall)) {
		y = y + sign(vsp);
	}
	vsp = 0
}

if(place_meeting(x+hsp,y,obj_wall)) {
	while(!place_meeting(x+sign(hsp),y, obj_wall)) {
		x = x + sign(hsp);
	}
	hsp = 0
}

if(key_jmp && place_meeting(x,y+1,obj_wall)) {
	vsp = -jumpspeed
}





// Animation

if(!place_meeting(x,y+1,obj_wall)) {
	sprite_index = spr_ninja_jumps
	image_speed = 0
	if(vsp > 0) {
		image_index = 1
	}
	else {
		image_speed = 0
	}
	 
}
else if (hsp!=0) {
		sprite_index = spr_ninja_runs;
		image_speed = 30;
}
else {
	sprite_index = spr_ninja;
	image_speed = 1;
}
	
if(hsp !=0 ) {
	image_xscale = sign(hsp);
}


y = y + vsp
x = x + hsp;

throw_delay = throw_delay-1

if(mouse_check_button(mb_left) && throw_delay < 0) {
	throw_delay = 10
    with (instance_create_layer(x,y,"Objects", obj_star)) {
		speed = 10
		direction = point_direction(x,y, mouse_x, mouse_y) + random_range(-3,3)
	}
}