/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 739B5270
/// @DnDArgument : "var" "enemyCurrentHealth"
if(enemyCurrentHealth == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E5D482E
	/// @DnDApplyTo : {gameManager}
	/// @DnDParent : 739B5270
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "remainingEnemies"
	with(gameManager) {
	remainingEnemies += -1;
	
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 244924BA
	/// @DnDParent : 739B5270
	instance_destroy();
}