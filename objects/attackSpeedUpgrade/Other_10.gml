/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 061DB688
/// @DnDArgument : "expr" "upgradeRarityCategory"
var l061DB688_0 = upgradeRarityCategory;
switch(l061DB688_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 19BA39EA
	/// @DnDParent : 061DB688
	/// @DnDArgument : "const" ""U""
	case "U":
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 556DE370
		/// @DnDParent : 19BA39EA
		/// @DnDArgument : "expr" ".5"
		/// @DnDArgument : "var" "upgradeAmount"
		upgradeAmount = .5;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 33AA7D22
		/// @DnDParent : 19BA39EA
		/// @DnDArgument : "expr" ""+0.5/s""
		/// @DnDArgument : "var" "upgradeValue"
		upgradeValue = "+0.5/s";
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3D76B969
	/// @DnDParent : 061DB688
	/// @DnDArgument : "const" ""R""
	case "R":
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2BD0E8E7
		/// @DnDParent : 3D76B969
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "upgradeAmount"
		upgradeAmount = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 267EB1D8
		/// @DnDParent : 3D76B969
		/// @DnDArgument : "expr" ""+1/s""
		/// @DnDArgument : "var" "upgradeValue"
		upgradeValue = "+1/s";
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 20A8689D
	/// @DnDParent : 061DB688
	/// @DnDArgument : "const" ""E""
	case "E":
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 49AA712F
		/// @DnDParent : 20A8689D
		/// @DnDArgument : "expr" "1.25"
		/// @DnDArgument : "var" "upgradeAmount"
		upgradeAmount = 1.25;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2E79766F
		/// @DnDParent : 20A8689D
		/// @DnDArgument : "expr" ""+1.25/s""
		/// @DnDArgument : "var" "upgradeValue"
		upgradeValue = "+1.25/s";
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 319EF333
	/// @DnDParent : 061DB688
	/// @DnDArgument : "const" ""L""
	case "L":
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 75C62F78
		/// @DnDParent : 319EF333
		/// @DnDArgument : "expr" "1.5"
		/// @DnDArgument : "var" "upgradeAmount"
		upgradeAmount = 1.5;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 086D1239
		/// @DnDParent : 319EF333
		/// @DnDArgument : "expr" ""+1.5/s""
		/// @DnDArgument : "var" "upgradeValue"
		upgradeValue = "+1.5/s";
		break;
}