

x = mouse_x - (mouse_x%16);
y = mouse_y - (mouse_y%16);

if keyboard_check(vk_space){
	
	instance_create_layer(x,y, "instances", obj_data_low	);
	
}
	

