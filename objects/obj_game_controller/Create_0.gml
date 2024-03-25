/// @description Insert description here
// You can write your code in this editor
wave_in_progress = false;

if (enemies_remaining == 0 && !wave_in_progress) {
    wave_number++;
    start_next_wave();
}