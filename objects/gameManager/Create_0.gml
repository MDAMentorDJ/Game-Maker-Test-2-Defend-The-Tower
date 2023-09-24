/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 69D3ABDB
/// @DnDArgument : "function" "window_set_cursor"
/// @DnDArgument : "arg" "cr_cross"
window_set_cursor(cr_cross);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6007B73A
/// @DnDArgument : "expr" "pointer_null"
/// @DnDArgument : "var" "chosenUpgrade"
chosenUpgrade = pointer_null;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0926CFA7
/// @DnDComment : Called when starting the next wave after combat ends
/// @DnDArgument : "funcName" "nextWave"
function nextWave() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44020196
	/// @DnDComment : Re-enter combat
	/// @DnDParent : 0926CFA7
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "inCombat"
	inCombat = true;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2FCBBF03
	/// @DnDComment : Go to the next wave
	/// @DnDParent : 0926CFA7
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "waveNumber"
	waveNumber += 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0EBC224E
	/// @DnDComment : Set the number of enemies to spawn
	/// @DnDParent : 0926CFA7
	/// @DnDArgument : "expr" "waveNumber * 5"
	/// @DnDArgument : "var" "enemiesToSpawn"
	enemiesToSpawn = waveNumber * 5;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2D2A54BB
	/// @DnDComment : Set the # of alive enemies
	/// @DnDParent : 0926CFA7
	/// @DnDArgument : "expr" "enemiesToSpawn"
	/// @DnDArgument : "var" "remainingEnemies"
	remainingEnemies = enemiesToSpawn;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 0F0BEE61
	/// @DnDComment : Start spawning enemies in 2 seconds
	/// @DnDParent : 0926CFA7
	/// @DnDArgument : "steps" "room_speed * 2"
	alarm_set(0, room_speed * 2);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 7DB62C71
	/// @DnDComment : Apply the upgrade the player chose
	/// @DnDParent : 0926CFA7
	/// @DnDArgument : "function" "chosenUpgrade.applyUpgrade"
	chosenUpgrade.applyUpgrade();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 344151A3
	/// @DnDComment : Clear the chosen upgrade
	/// @DnDParent : 0926CFA7
	/// @DnDArgument : "expr" "pointer_null"
	/// @DnDArgument : "var" "chosenUpgrade"
	chosenUpgrade = pointer_null;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 43B7686D
	/// @DnDComment : Destory the upgrade buttons
	/// @DnDApplyTo : {upgradeButton}
	/// @DnDParent : 0926CFA7
	with(upgradeButton) instance_destroy();

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 5D43FA7E
	/// @DnDComment : Heal the player
	/// @DnDApplyTo : {playerTower}
	/// @DnDParent : 0926CFA7
	/// @DnDArgument : "function" "fullHeal"
	with(playerTower) {
		fullHeal();
	}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 7BD150A5
	/// @DnDComment : Tell the player to start shooting
	/// @DnDApplyTo : {playerTower}
	/// @DnDParent : 0926CFA7
	/// @DnDArgument : "function" "beginCombat"
	with(playerTower) {
		beginCombat();
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 52FC5151
/// @DnDComment : Spawns an enemy
/// @DnDArgument : "funcName" "spawnEnemy"
/// @DnDArgument : "arg" "enemyType"
function spawnEnemy(enemyType) 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7DD81DD8
	/// @DnDComment : Get a random position
	/// @DnDInput : 3
	/// @DnDParent : 52FC5151
	/// @DnDArgument : "var" "random_x"
	/// @DnDArgument : "value" "random_range(0,room_width)"
	/// @DnDArgument : "var_1" "random_y"
	/// @DnDArgument : "value_1" "random_range(0,room_height)"
	/// @DnDArgument : "var_2" "spawn_buffer"
	/// @DnDArgument : "value_2" "100"
	var random_x = random_range(0,room_width);
	var random_y = random_range(0,room_height);
	var spawn_buffer = 100;

	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 7DFC321B
	/// @DnDComment : Decide which direction enemy will come from
	/// @DnDInput : 4
	/// @DnDParent : 52FC5151
	/// @DnDArgument : "var" "spawnSide"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option" "1"
	/// @DnDArgument : "option_1" "2"
	/// @DnDArgument : "option_2" "3"
	/// @DnDArgument : "option_3" "4"
	var spawnSide = choose(1, 2, 3, 4);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4E5EB04D
	/// @DnDComment : If coming from the left, move off screen to the left
	/// @DnDParent : 52FC5151
	/// @DnDArgument : "var" "spawnSide"
	/// @DnDArgument : "value" "1"
	if(spawnSide == 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6BCB2AA8
		/// @DnDParent : 4E5EB04D
		/// @DnDArgument : "expr" "-spawn_buffer"
		/// @DnDArgument : "var" "random_x"
		random_x = -spawn_buffer;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7BB4824A
	/// @DnDComment : Same with right
	/// @DnDParent : 52FC5151
	/// @DnDArgument : "var" "spawnSide"
	/// @DnDArgument : "value" "2"
	if(spawnSide == 2)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 42297C65
		/// @DnDParent : 7BB4824A
		/// @DnDArgument : "expr" "room_width + spawn_buffer"
		/// @DnDArgument : "var" "random_x"
		random_x = room_width + spawn_buffer;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 01C72D09
	/// @DnDComment : And if coming from above
	/// @DnDParent : 52FC5151
	/// @DnDArgument : "var" "spawnSide"
	/// @DnDArgument : "value" "3"
	if(spawnSide == 3)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 394DC599
		/// @DnDParent : 01C72D09
		/// @DnDArgument : "expr" "-spawn_buffer"
		/// @DnDArgument : "var" "random_y"
		random_y = -spawn_buffer;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A586E26
	/// @DnDComment : Or below
	/// @DnDParent : 52FC5151
	/// @DnDArgument : "var" "spawnSide"
	/// @DnDArgument : "value" "4"
	if(spawnSide == 4)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5F074E6E
		/// @DnDParent : 2A586E26
		/// @DnDArgument : "expr" "room_height + spawn_buffer"
		/// @DnDArgument : "var" "random_y"
		random_y = room_height + spawn_buffer;
	}

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7E83F42C
	/// @DnDComment : Create the enemy
	/// @DnDParent : 52FC5151
	/// @DnDArgument : "xpos" "random_x"
	/// @DnDArgument : "ypos" "random_y"
	/// @DnDArgument : "objectid" "enemyType"
	instance_create_layer(random_x, random_y, "Instances", enemyType);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60C79A35
	/// @DnDComment : Update the enemy count
	/// @DnDParent : 52FC5151
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "enemiesToSpawn"
	enemiesToSpawn += -1;
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3B6C227A
/// @DnDArgument : "funcName" "createRandomPowerUp"
/// @DnDArgument : "arg" "x_offset"
function createRandomPowerUp(x_offset) 
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 4179AD5A
	/// @DnDComment : Pick a random upgrade
	/// @DnDInput : 3
	/// @DnDParent : 3B6C227A
	/// @DnDArgument : "var" "powerUpObj"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option" "attackSpeedUpgrade"
	/// @DnDArgument : "option_1" "damageUpgrade"
	/// @DnDArgument : "option_2" "healthUpgrade"
	var powerUpObj = choose(attackSpeedUpgrade, damageUpgrade, healthUpgrade);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0884DF6E
	/// @DnDComment : Create the upgrade box
	/// @DnDParent : 3B6C227A
	/// @DnDArgument : "xpos" "400 + x_offset"
	/// @DnDArgument : "ypos" "205"
	/// @DnDArgument : "var" "newPowerUp"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "powerUpObj"
	var newPowerUp = instance_create_layer(400 + x_offset, 205, "Instances", powerUpObj);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 497EA751
	/// @DnDComment : Set it's size
	/// @DnDInput : 2
	/// @DnDParent : 3B6C227A
	/// @DnDArgument : "expr" "2.8"
	/// @DnDArgument : "expr_1" "3.2"
	/// @DnDArgument : "var" "newPowerUp.image_xscale"
	/// @DnDArgument : "var_1" "newPowerUp.image_yscale"
	newPowerUp.image_xscale = 2.8;
	newPowerUp.image_yscale = 3.2;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 745CB74B
	/// @DnDParent : 3B6C227A
	/// @DnDArgument : "function" "newPowerUp.setRarity"
	/// @DnDArgument : "arg" "random_range(0,100)"
	newPowerUp.setRarity(random_range(0,100));
}