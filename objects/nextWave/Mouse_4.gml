/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7E528453
/// @DnDArgument : "var" "gameManager.chosenUpgrade"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "pointer_null"
if(!(gameManager.chosenUpgrade == pointer_null))
{
	/// @DnDAction : YoYo Games.Instances.Inherit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 1DD5BB1B
	/// @DnDParent : 7E528453
	event_inherited();

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 558E473D
	/// @DnDComment : Start the next wave
	/// @DnDApplyTo : {gameManager}
	/// @DnDParent : 7E528453
	/// @DnDArgument : "function" "nextWave"
	with(gameManager) {
		nextWave();
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 692DAAED
	/// @DnDComment : Delete the wave button
	/// @DnDParent : 7E528453
	instance_destroy();
}