/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
/// @DnDVersion : 1
/// @DnDHash : 50D8663A
/// @DnDComment : This is the update logic for the comabt room$(13_10)Don't do anything if we're not in the game room
/// @DnDArgument : "var" "currentRoom"
/// @DnDArgument : "var_temp" "1"
var currentRoom = room;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 60E8B2B2
/// @DnDArgument : "var" "currentRoom"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "gameRoom"
if(!(currentRoom == gameRoom))
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 386F3933
	/// @DnDParent : 60E8B2B2
	exit;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4E920EC1
/// @DnDArgument : "var" "remainingEnemies"
if(remainingEnemies == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 70622012
	/// @DnDParent : 4E920EC1
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "inCombat"
	inCombat = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 552AF47F
	/// @DnDParent : 4E920EC1
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "remainingEnemies"
	remainingEnemies = -1;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7015145B
	/// @DnDParent : 4E920EC1
	/// @DnDArgument : "xpos" "800"
	/// @DnDArgument : "ypos" "736"
	/// @DnDArgument : "objectid" "nextWave"
	/// @DnDSaveInfo : "objectid" "nextWave"
	instance_create_layer(800, 736, "Instances", nextWave);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 14FD862D
	/// @DnDApplyTo : {nextWave}
	/// @DnDParent : 4E920EC1
	/// @DnDArgument : "expr" "4.2"
	/// @DnDArgument : "var" "image_xscale"
	with(nextWave) {
	image_xscale = 4.2;
	
	}
}