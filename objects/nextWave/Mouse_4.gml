/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 1A38E658
event_inherited();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 558E473D
/// @DnDApplyTo : {gameManager}
/// @DnDArgument : "function" "nextWave"
with(gameManager) {
	nextWave();
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 692DAAED
instance_destroy();