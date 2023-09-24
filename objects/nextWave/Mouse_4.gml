/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 1A38E658
/// @DnDComment : Make sure we do the default behavior
event_inherited();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 558E473D
/// @DnDComment : Start the next wave
/// @DnDApplyTo : {gameManager}
/// @DnDArgument : "function" "nextWave"
with(gameManager) {
	nextWave();
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 692DAAED
/// @DnDComment : Delete the wave button
instance_destroy();