/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1A10529E
/// @DnDComment : Only if we have an upgrade
/// @DnDArgument : "var" "gameManager.chosenUpgrade"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "pointer_null"
if(!(gameManager.chosenUpgrade == pointer_null))
{
	/// @DnDAction : YoYo Games.Instances.Inherit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 3C51374E
	/// @DnDParent : 1A10529E
	event_inherited();
}