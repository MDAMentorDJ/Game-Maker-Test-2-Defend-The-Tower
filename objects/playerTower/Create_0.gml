/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 44B46729
/// @DnDArgument : "expr" "maxHealth"
/// @DnDArgument : "var" "currentHealth"
currentHealth = maxHealth;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 11FC1F59
/// @DnDArgument : "funcName" "takeDamage"
/// @DnDArgument : "arg" "amount"
function takeDamage(amount) 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 16F36838
	/// @DnDParent : 11FC1F59
	/// @DnDArgument : "expr" "-amount"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "currentHealth"
	currentHealth += -amount;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7BCCCBF2
	/// @DnDParent : 11FC1F59
	/// @DnDArgument : "var" "currentHealth"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "maxHealth"
	if(currentHealth > maxHealth)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 14A079D9
		/// @DnDParent : 7BCCCBF2
		/// @DnDArgument : "expr" "maxHealth"
		/// @DnDArgument : "var" "currentHealth"
		currentHealth = maxHealth;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1E2B2F35
	/// @DnDParent : 11FC1F59
	/// @DnDArgument : "var" "currentHealth"
	/// @DnDArgument : "op" "1"
	if(currentHealth < 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7BA536C6
		/// @DnDParent : 1E2B2F35
		/// @DnDArgument : "var" "currentHealth"
		currentHealth = 0;
	}
}