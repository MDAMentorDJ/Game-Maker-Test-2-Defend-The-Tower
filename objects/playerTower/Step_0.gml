/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 574EE4AC
/// @DnDComment : If the player dies
/// @DnDArgument : "var" "currentHealth"
if(currentHealth == 0)
{
	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 4E760E58
	/// @DnDComment : Explode the player
	/// @DnDParent : 574EE4AC
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "color" "$FFFF3D07"
	effect_create_below(0, x + 0, y + 0, 0, $FFFF3D07 & $ffffff);

	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 366A07C5
	/// @DnDComment : Explode a second time$(13_10)This is needed because for some reason$(13_10)The first particle effect doesn't render$(13_10)(bug?)
	/// @DnDParent : 574EE4AC
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "1"
	/// @DnDArgument : "color" "$FFFFFFFF"
	effect_create_above(0, x + 0, y + 0, 1, $FFFFFFFF & $ffffff);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 0057791A
	/// @DnDComment : Stop Enemy Spawning
	/// @DnDApplyTo : {gameManager}
	/// @DnDParent : 574EE4AC
	/// @DnDArgument : "steps" "-1"
	with(gameManager) {
	alarm_set(0, -1);
	
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 3A15A535
	/// @DnDComment : Main menu after 2 seconds
	/// @DnDApplyTo : {gameManager}
	/// @DnDParent : 574EE4AC
	/// @DnDArgument : "alarm" "1"
	with(gameManager) {
	alarm_set(1, 30);
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0D2824B8
	/// @DnDComment : Do some slowmo
	/// @DnDApplyTo : {enemyBehavior}
	/// @DnDParent : 574EE4AC
	/// @DnDArgument : "expr" "15"
	/// @DnDArgument : "var" "room_speed"
	with(enemyBehavior) {
	room_speed = 15;
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 07634F30
	/// @DnDComment : Leave Combat
	/// @DnDApplyTo : {gameManager}
	/// @DnDParent : 574EE4AC
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "inCombat"
	with(gameManager) {
	inCombat = false;
	
	}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 2EEAE000
	/// @DnDParent : 574EE4AC
	/// @DnDArgument : "soundid" "playerDefeatSound"
	/// @DnDSaveInfo : "soundid" "playerDefeatSound"
	audio_play_sound(playerDefeatSound, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4DA60A3A
	/// @DnDComment : Destroy Self
	/// @DnDParent : 574EE4AC
	instance_destroy();
}