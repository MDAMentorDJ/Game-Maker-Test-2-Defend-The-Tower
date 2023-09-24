/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 2A139FCA
event_inherited();

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 36446DA0
/// @DnDArgument : "funcName" "applyUpgrade"
function applyUpgrade() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 03DF2AD1
	/// @DnDParent : 36446DA0
	/// @DnDArgument : "expr" "upgradeAmount"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "playerTower.bulletDamage"
	playerTower.bulletDamage += upgradeAmount;
}