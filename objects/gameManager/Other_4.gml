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
	/// @DnDArgument : "steps" "spawnRate"
	alarm_set(0, spawnRate);
}