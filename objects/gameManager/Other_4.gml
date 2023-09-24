/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
/// @DnDVersion : 1
/// @DnDHash : 5B87779B
/// @DnDComment : Get the current room
/// @DnDArgument : "var" "currentRoom"
/// @DnDArgument : "var_temp" "1"
var currentRoom = room;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5C284C79
/// @DnDComment : If we're entering the game room
/// @DnDArgument : "var" "currentRoom"
/// @DnDArgument : "value" "gameRoom"
if(currentRoom == gameRoom)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 24870163
	/// @DnDComment : Start spawning enemies in 2 seconds
	/// @DnDParent : 5C284C79
	/// @DnDArgument : "steps" "2 * room_speed"
	alarm_set(0, 2 * room_speed);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 41DF05EF
	/// @DnDComment : Set the wave to 1
	/// @DnDParent : 5C284C79
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "waveNumber"
	waveNumber = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 675AF3AF
	/// @DnDComment : Enter combat
	/// @DnDParent : 5C284C79
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "inCombat"
	inCombat = true;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7FDF530A
	/// @DnDComment : Wave 1 has 5 enemies (5 per wave)
	/// @DnDParent : 5C284C79
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "var" "enemiesToSpawn"
	enemiesToSpawn = 5;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 01DDA3BA
	/// @DnDComment : Update the # of enemies left to kill
	/// @DnDParent : 5C284C79
	/// @DnDArgument : "expr" "enemiesToSpawn"
	/// @DnDArgument : "var" "remainingEnemies"
	remainingEnemies = enemiesToSpawn;
}