/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 10B6FA5A
event_inherited();

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 32F5EE8E
/// @DnDArgument : "funcName" "applyUpgrade"
function applyUpgrade() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 58C495C0
	/// @DnDParent : 32F5EE8E
	/// @DnDArgument : "expr" "upgradeAmount"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "playerTower.bulletFireRate"
	playerTower.bulletFireRate += upgradeAmount;
}