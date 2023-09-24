/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 44B46729
/// @DnDComment : Set the current hp to max
/// @DnDArgument : "expr" "maxHealth"
/// @DnDArgument : "var" "currentHealth"
currentHealth = maxHealth;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 11FC1F59
/// @DnDComment : The take damage function$(13_10)
/// @DnDArgument : "funcName" "takeDamage"
/// @DnDArgument : "arg" "amount"
function takeDamage(amount) 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 16F36838
	/// @DnDComment : Update current hp based on given amount
	/// @DnDParent : 11FC1F59
	/// @DnDArgument : "expr" "-amount"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "currentHealth"
	currentHealth += -amount;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7BCCCBF2
	/// @DnDComment : Make sure (if we're healing) we don't go over max
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
	/// @DnDComment : Also don't go below 0
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

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2CEFBCE6
/// @DnDComment : We combat starts, start firing the bullet
/// @DnDArgument : "funcName" "beginCombat"
function beginCombat() 
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 0FBFA072
	/// @DnDComment : Start firing right away
	/// @DnDParent : 2CEFBCE6
	/// @DnDArgument : "steps" "1"
	alarm_set(0, 1);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 33C4272E
/// @DnDComment : Full heal the player
/// @DnDArgument : "funcName" "fullHeal"
function fullHeal() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 76E7B6F5
	/// @DnDParent : 33C4272E
	/// @DnDArgument : "expr" "maxHealth"
	/// @DnDArgument : "var" "currentHealth"
	currentHealth = maxHealth;
}