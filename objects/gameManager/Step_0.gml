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
/// @DnDComment : If the player killed all the enemies
/// @DnDArgument : "var" "remainingEnemies"
if(remainingEnemies == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 70622012
	/// @DnDComment : Exit combat
	/// @DnDParent : 4E920EC1
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "inCombat"
	inCombat = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 552AF47F
	/// @DnDComment : Set this to -1 so we don't keep trying to exit combat
	/// @DnDParent : 4E920EC1
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "remainingEnemies"
	remainingEnemies = -1;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7015145B
	/// @DnDComment : Create the next wave button
	/// @DnDParent : 4E920EC1
	/// @DnDArgument : "xpos" "800"
	/// @DnDArgument : "ypos" "736"
	/// @DnDArgument : "objectid" "nextWave"
	/// @DnDSaveInfo : "objectid" "nextWave"
	instance_create_layer(800, 736, "Instances", nextWave);

	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 2309315B
	/// @DnDComment : Gray it out for now
	/// @DnDApplyTo : {nextWave}
	/// @DnDParent : 4E920EC1
	/// @DnDArgument : "alpha" ".5"
	with(nextWave) image_alpha = .5;

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 3D8CA790
	/// @DnDParent : 4E920EC1
	/// @DnDArgument : "cond" "i < 3"
	for(i = 0; i < 3; i += 1) {
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 6F176AAC
		/// @DnDParent : 3D8CA790
		/// @DnDArgument : "function" "createRandomPowerUp"
		/// @DnDArgument : "arg" "i * 400"
		createRandomPowerUp(i * 400);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 14FD862D
	/// @DnDComment : Set it's x scale so it looks good
	/// @DnDApplyTo : {nextWave}
	/// @DnDParent : 4E920EC1
	/// @DnDArgument : "expr" "4.2"
	/// @DnDArgument : "var" "image_xscale"
	with(nextWave) {
	image_xscale = 4.2;
	
	}
}