/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 5DBB908D
/// @DnDArgument : "soundid" "laserSound"
/// @DnDSaveInfo : "soundid" "laserSound"
audio_play_sound(laserSound, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 2D3DCE74
/// @DnDComment : Deal damage to the player based on how much damage we are supposed to do
/// @DnDArgument : "function" "playerTower.takeDamage"
/// @DnDArgument : "arg" "enemyDamage"
playerTower.takeDamage(enemyDamage);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 796C2B18
/// @DnDComment : This also kills the enemy, so reduce the enemy forces count
/// @DnDApplyTo : {gameManager}
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "remainingEnemies"
with(gameManager) {
remainingEnemies += -1;

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 04B4DAED
instance_destroy();