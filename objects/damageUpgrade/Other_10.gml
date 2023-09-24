/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 6488D4C8
/// @DnDArgument : "expr" "upgradeRarityCategory"
var l6488D4C8_0 = upgradeRarityCategory;
switch(l6488D4C8_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0E424E2C
	/// @DnDParent : 6488D4C8
	/// @DnDArgument : "const" ""U""
	case "U":
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 160265D6
		/// @DnDParent : 0E424E2C
		/// @DnDArgument : "expr" ".5"
		/// @DnDArgument : "var" "upgradeAmount"
		upgradeAmount = .5;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 377C337F
		/// @DnDParent : 0E424E2C
		/// @DnDArgument : "expr" ""+0.5""
		/// @DnDArgument : "var" "upgradeValue"
		upgradeValue = "+0.5";
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 78466035
	/// @DnDParent : 6488D4C8
	/// @DnDArgument : "const" ""R""
	case "R":
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 74A8DA4A
		/// @DnDParent : 78466035
		/// @DnDArgument : "expr" ".75"
		/// @DnDArgument : "var" "upgradeAmount"
		upgradeAmount = .75;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 32EBC165
		/// @DnDParent : 78466035
		/// @DnDArgument : "expr" ""+.75""
		/// @DnDArgument : "var" "upgradeValue"
		upgradeValue = "+.75";
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0D949ADF
	/// @DnDParent : 6488D4C8
	/// @DnDArgument : "const" ""E""
	case "E":
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2DE8152A
		/// @DnDParent : 0D949ADF
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "upgradeAmount"
		upgradeAmount = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1C67B061
		/// @DnDParent : 0D949ADF
		/// @DnDArgument : "expr" ""+1""
		/// @DnDArgument : "var" "upgradeValue"
		upgradeValue = "+1";
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7C150D71
	/// @DnDParent : 6488D4C8
	/// @DnDArgument : "const" ""L""
	case "L":
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 78DDD333
		/// @DnDParent : 7C150D71
		/// @DnDArgument : "expr" "1.25"
		/// @DnDArgument : "var" "upgradeAmount"
		upgradeAmount = 1.25;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6B202CAF
		/// @DnDParent : 7C150D71
		/// @DnDArgument : "expr" ""+1.25""
		/// @DnDArgument : "var" "upgradeValue"
		upgradeValue = "+1.25";
		break;
}