/// @description Insert description here
// You can write your code in this editor

other.hp -=1

if(other.hp < 0){
instance_destroy(other.id);
}

instance_destroy();