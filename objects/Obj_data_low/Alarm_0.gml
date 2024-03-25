if ( instance_exists(obj_enm_fast) ){
	
	var instNear = instance_nearest(x,y, obj_enm_fast)
	
var bullet = instance_create_layer(x+50,y+50, "Instances", obj_bullet);
	
	bullet.direction = point_direction(x,y, instNear.x,instNear.y);
	bullet.speed	 = 10;
}

else if ( instance_exists(obj_enm_boss) ){
	
	var instNear = instance_nearest(x,y, obj_enm_boss)
	
var bullet = instance_create_layer(x+50,y+50, "Instances", obj_bullet);
	
	bullet.direction = point_direction(x,y, instNear.x,instNear.y);
	bullet.speed	 = 10;
}

else if ( instance_exists(obj_enm_basic) ){
	
	var instNear = instance_nearest(x,y, obj_enm_basic)
	
var bullet = instance_create_layer(x+50,y+50, "Instances", obj_bullet);
	
	bullet.direction = point_direction(x,y, instNear.x,instNear.y);
	bullet.speed	 = 10;
}

else if ( instance_exists(obj_enm_tank) ){
	
	var instNear = instance_nearest(x,y, obj_enm_tank)
	
var bullet = instance_create_layer(x+50,y+50, "Instances", obj_bullet);
	
	bullet.direction = point_direction(x,y, instNear.x,instNear.y);
	bullet.speed	 = 10;
}

alarm[0] = LoopTime;