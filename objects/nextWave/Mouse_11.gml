/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2078931C
/// @DnDComment : Only show as interactable if we have an upgrade
/// @DnDArgument : "var" "gameManager.chosenUpgrade"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "pointer_null"
if(!(gameManager.chosenUpgrade == pointer_null))
{
	/// @DnDAction : YoYo Games.Instances.Inherit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 206629C9
	/// @DnDParent : 2078931C
	event_inherited();
}