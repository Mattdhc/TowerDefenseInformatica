

x = mouse_x - (mouse_x%16);
y = mouse_y - (mouse_y%16);

if mouse_check_button_released(mb_left){
	
	instance_create_layer(x,y, layer, obj_data_low	);
	
}
	

