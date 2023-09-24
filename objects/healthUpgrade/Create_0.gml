/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 1A788A5F
event_inherited();

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0811869C
/// @DnDArgument : "funcName" "applyUpgrade"
function applyUpgrade() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D48F681
	/// @DnDApplyTo : {playerTower}
	/// @DnDParent : 0811869C
	/// @DnDArgument : "expr" "2"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "maxHealth"
	with(playerTower) {
	maxHealth += 2;
	
	}
}