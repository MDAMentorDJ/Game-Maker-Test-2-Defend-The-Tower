/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 2278E4FD
/// @DnDComment : Set alpha to .5 when created
/// @DnDArgument : "alpha" ".5"
image_alpha = .5;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 43F3979A
/// @DnDArgument : "funcName" "setRarity"
/// @DnDArgument : "arg" "rarity"
function setRarity(rarity) 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 21C576D8
	/// @DnDParent : 43F3979A
	/// @DnDArgument : "expr" "rarity"
	/// @DnDArgument : "var" "upgradeRarity"
	upgradeRarity = rarity;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63B95A42
	/// @DnDParent : 43F3979A
	/// @DnDArgument : "var" "upgradeRarity"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "50"
	if(upgradeRarity < 50)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7700E695
		/// @DnDParent : 63B95A42
		/// @DnDArgument : "expr" ""U""
		/// @DnDArgument : "var" "upgradeRarityCategory"
		upgradeRarityCategory = "U";
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3700EF0B
		/// @DnDParent : 63B95A42
		/// @DnDArgument : "expr" ""Uncommon""
		/// @DnDArgument : "var" "upgradeRarityText"
		upgradeRarityText = "Uncommon";
	
		/// @DnDAction : YoYo Games.Instances.Color_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 628691AD
		/// @DnDParent : 63B95A42
		/// @DnDArgument : "colour" "$FF157A11"
		/// @DnDArgument : "alpha" "false"
		image_blend = $FF157A11 & $ffffff;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 63FBE74D
	/// @DnDParent : 43F3979A
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 17E4652A
		/// @DnDParent : 63FBE74D
		/// @DnDArgument : "var" "upgradeRarity"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "75"
		if(upgradeRarity < 75)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3F3AAD02
			/// @DnDParent : 17E4652A
			/// @DnDArgument : "expr" ""R""
			/// @DnDArgument : "var" "upgradeRarityCategory"
			upgradeRarityCategory = "R";
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 451D03D0
			/// @DnDParent : 17E4652A
			/// @DnDArgument : "expr" ""Rare""
			/// @DnDArgument : "var" "upgradeRarityText"
			upgradeRarityText = "Rare";
		
			/// @DnDAction : YoYo Games.Instances.Color_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 3EAA883A
			/// @DnDParent : 17E4652A
			/// @DnDArgument : "colour" "$FF99580C"
			/// @DnDArgument : "alpha" "false"
			image_blend = $FF99580C & $ffffff;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 53C4BB6A
		/// @DnDParent : 63FBE74D
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 45CBD70A
			/// @DnDParent : 53C4BB6A
			/// @DnDArgument : "var" "upgradeRarity"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "90"
			if(upgradeRarity < 90)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3F451791
				/// @DnDParent : 45CBD70A
				/// @DnDArgument : "expr" ""E""
				/// @DnDArgument : "var" "upgradeRarityCategory"
				upgradeRarityCategory = "E";
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7C4C988D
				/// @DnDParent : 45CBD70A
				/// @DnDArgument : "expr" ""Epic""
				/// @DnDArgument : "var" "upgradeRarityText"
				upgradeRarityText = "Epic";
			
				/// @DnDAction : YoYo Games.Instances.Color_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 20882490
				/// @DnDParent : 45CBD70A
				/// @DnDArgument : "colour" "$FF770B62"
				/// @DnDArgument : "alpha" "false"
				image_blend = $FF770B62 & $ffffff;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 1D491A01
			/// @DnDParent : 53C4BB6A
			else
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 20E7C1A0
				/// @DnDParent : 1D491A01
				/// @DnDArgument : "var" "upgradeRarity"
				/// @DnDArgument : "op" "1"
				/// @DnDArgument : "value" "98"
				if(upgradeRarity < 98)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0509F9C6
					/// @DnDParent : 20E7C1A0
					/// @DnDArgument : "expr" ""L""
					/// @DnDArgument : "var" "upgradeRarityCategory"
					upgradeRarityCategory = "L";
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 7D77A071
					/// @DnDParent : 20E7C1A0
					/// @DnDArgument : "expr" ""Legendary""
					/// @DnDArgument : "var" "upgradeRarityText"
					upgradeRarityText = "Legendary";
				
					/// @DnDAction : YoYo Games.Instances.Color_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 750AC799
					/// @DnDParent : 20E7C1A0
					/// @DnDArgument : "colour" "$FF2AB5D3"
					/// @DnDArgument : "alpha" "false"
					image_blend = $FF2AB5D3 & $ffffff;
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Instances.Call_User_Event
	/// @DnDVersion : 1
	/// @DnDHash : 41F30C4B
	/// @DnDComment : Update the text and the amount for the upgrade (event 0)
	/// @DnDParent : 43F3979A
	event_user(0);
}