/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0AB84DC9
/// @DnDArgument : "obj" "playerTower"
/// @DnDSaveInfo : "obj" "playerTower"
var l0AB84DC9_0 = false;
l0AB84DC9_0 = instance_exists(playerTower);
if(l0AB84DC9_0)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 63DADC37
	/// @DnDComment : Tell the enemy to take damage based on the bullets damage
	/// @DnDParent : 0AB84DC9
	/// @DnDArgument : "function" "other.enemyTakeDamage"
	/// @DnDArgument : "arg" "playerTower.bulletDamage"
	other.enemyTakeDamage(playerTower.bulletDamage);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 43240685
	/// @DnDParent : 0AB84DC9
	/// @DnDArgument : "soundid" "enemyHit"
	/// @DnDSaveInfo : "soundid" "enemyHit"
	audio_play_sound(enemyHit, 0, 0, 1.0, undefined, 1.0);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5FA43C40
instance_destroy();