/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 3D6AEAAA
randomize();

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
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 3C739991
	/// @DnDParent : 5C284C79
	/// @DnDArgument : "soundid" "menuMusic"
	/// @DnDSaveInfo : "soundid" "menuMusic"
	audio_stop_sound(menuMusic);

	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 205836BA
	/// @DnDParent : 5C284C79
	/// @DnDArgument : "soundid" "backgroundMusic"
	/// @DnDSaveInfo : "soundid" "backgroundMusic"
	audio_stop_sound(backgroundMusic);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 1A1E3A18
	/// @DnDParent : 5C284C79
	/// @DnDArgument : "soundid" "backgroundMusic"
	/// @DnDArgument : "loop" "1"
	/// @DnDArgument : "gain" ".5"
	/// @DnDSaveInfo : "soundid" "backgroundMusic"
	audio_play_sound(backgroundMusic, 0, 1, .5, undefined, 1.0);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 24870163
	/// @DnDComment : Start spawning enemies in 2 seconds
	/// @DnDParent : 5C284C79
	/// @DnDArgument : "steps" "2 * room_speed"
	alarm_set(0, 2 * room_speed);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48DA8663
	/// @DnDComment : The player hasn't won yet
	/// @DnDParent : 5C284C79
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "playerWin"
	playerWin = false;

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

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0FECC971
/// @DnDComment : If we're entering the game room
/// @DnDArgument : "var" "currentRoom"
/// @DnDArgument : "value" "mainMenu"
if(currentRoom == mainMenu)
{
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 77A1D79D
	/// @DnDParent : 0FECC971
	/// @DnDArgument : "soundid" "backgroundMusic"
	/// @DnDSaveInfo : "soundid" "backgroundMusic"
	audio_stop_sound(backgroundMusic);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 28D3D233
	/// @DnDParent : 0FECC971
	/// @DnDArgument : "soundid" "menuMusic"
	/// @DnDArgument : "loop" "1"
	/// @DnDArgument : "gain" ".5"
	/// @DnDSaveInfo : "soundid" "menuMusic"
	audio_play_sound(menuMusic, 0, 1, .5, undefined, 1.0);
}