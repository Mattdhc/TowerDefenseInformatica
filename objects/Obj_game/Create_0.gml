// Create an object called obj_enemy_spawner and place it in the room where enemies should spawn.
// In the Create Event of obj_enemy_spawner:

/// Initialize variables
wave_number = 0;
enemies_remaining = 0;

// Create a script called scr_spawn_enemy:

/// Spawn enemy
var enemy = instance_create_layer(x, y, "Instances", obj_enemy);
enemy.health = random_range(50, 100); // Set random health
enemies_remaining++;

// In the Step Event of obj_enemy:

/// Check if enemy is defeated
if (health <= 0) {
    instance_destroy();
    enemies_remaining--;
}

// In the Create Event of obj_enemy:

/// Initialize variables
health = 100; // Set default health

// In the Create Event of obj_game_controller:

/// Initialize variables
wave_in_progress = false;

// In the Step Event of obj_game_controller:

/// Check if all enemies are defeated and start the next wave
if (enemies_remaining == 0 && !wave_in_progress) {
    wave_number++;
    start_next_wave();
}

// Create a script called start_next_wave:

/// Start next wave
wave_in_progress = true;
var num_enemies = wave_number * 3; // Increase number of enemies with each wave
for (var i = 0; i < num_enemies; i++) {
    instance_create_layer(spawn_x, spawn_y, "Instances", obj_enemy_spawner);
}

// In the Room Editor, create an object called obj_game_controller and place it in the room. This object will control the game flow.

// Ensure that you have an object representing enemies (e.g., obj_enemy) and a sprite for enemies.

// Note: This code assumes that you have basic knowledge of GameMaker Studio and its event system. Ensure that you have appropriate collision handling, enemy movement, and player interaction implemented as needed in your project.