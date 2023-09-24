/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0D603C6F
/// @DnDComment : Set the object to persist between rooms
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "persistent"
persistent = true;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 69D3ABDB
/// @DnDArgument : "function" "window_set_cursor"
/// @DnDArgument : "arg" "cr_cross"
window_set_cursor(cr_cross);

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0926CFA7
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
	/// @DnDHash : 7BD150A5
	/// @DnDComment : Tell the player to start shooting
	/// @DnDApplyTo : {playerTower}
	/// @DnDParent : 0926CFA7
	/// @DnDArgument : "function" "beginCombat"
	with(playerTower) {
		beginCombat();
	}
}