/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 02C895E9
/// @DnDComment : Set the enemy current health to max
/// @DnDArgument : "expr" "enemyMaxHealth"
/// @DnDArgument : "var" "enemyCurrentHealth"
enemyCurrentHealth = enemyMaxHealth;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0AD8AF82
/// @DnDComment : Takes a given amount of damage
/// @DnDArgument : "funcName" "enemyTakeDamage"
/// @DnDArgument : "arg" "amount"
function enemyTakeDamage(amount) 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1AB00F00
	/// @DnDComment : Lower the current hp
	/// @DnDParent : 0AD8AF82
	/// @DnDArgument : "expr" "-amount"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "enemyCurrentHealth"
	enemyCurrentHealth += -amount;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62F07EA7
	/// @DnDComment : Don't let it go above max (if healing)
	/// @DnDParent : 0AD8AF82
	/// @DnDArgument : "var" "enemyCurrentHealth"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "enemyMaxHealth"
	if(enemyCurrentHealth > enemyMaxHealth)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 74F262BA
		/// @DnDParent : 62F07EA7
		/// @DnDArgument : "expr" "enemyMaxHealth"
		/// @DnDArgument : "var" "enemyCurrentHealth"
		enemyCurrentHealth = enemyMaxHealth;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 75482786
	/// @DnDComment : Don't let it go below 0
	/// @DnDParent : 0AD8AF82
	/// @DnDArgument : "var" "enemyCurrentHealth"
	/// @DnDArgument : "op" "1"
	if(enemyCurrentHealth < 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6FF7F9D9
		/// @DnDParent : 75482786
		/// @DnDArgument : "var" "enemyCurrentHealth"
		enemyCurrentHealth = 0;
	}
}