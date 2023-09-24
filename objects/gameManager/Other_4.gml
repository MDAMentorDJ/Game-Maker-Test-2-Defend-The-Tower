/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
/// @DnDVersion : 1
/// @DnDHash : 5B87779B
/// @DnDArgument : "var" "currentRoom"
/// @DnDArgument : "var_temp" "1"
var currentRoom = room;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5C284C79
/// @DnDArgument : "var" "currentRoom"
/// @DnDArgument : "value" "gameRoom"
if(currentRoom == gameRoom)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 24870163
	/// @DnDParent : 5C284C79
	/// @DnDArgument : "steps" "4 * room_speed"
	alarm_set(0, 4 * room_speed);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 41DF05EF
	/// @DnDParent : 5C284C79
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "waveNumber"
	waveNumber = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 675AF3AF
	/// @DnDParent : 5C284C79
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "inCombat"
	inCombat = true;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7FDF530A
	/// @DnDParent : 5C284C79
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "var" "enemiesToSpawn"
	enemiesToSpawn = 5;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 01DDA3BA
	/// @DnDParent : 5C284C79
	/// @DnDArgument : "expr" "enemiesToSpawn"
	/// @DnDArgument : "var" "remainingEnemies"
	remainingEnemies = enemiesToSpawn;
}