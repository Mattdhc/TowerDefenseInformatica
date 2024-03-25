// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script1(){
var enemy = instance_create_layer(x, y, "Instances", obj_enm_basic);
enemy.health = random_range(50, 100); // Set random health
enemies_remaining++;
}