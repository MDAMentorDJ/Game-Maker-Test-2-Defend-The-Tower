/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 2D3DCE74
/// @DnDComment : Deal damage to the player based on how muchg damage we are supposed to do
/// @DnDArgument : "function" "playerTower.takeDamage"
/// @DnDArgument : "arg" "enemyDamage"
playerTower.takeDamage(enemyDamage);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 796C2B18
/// @DnDApplyTo : {gameManager}
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "remainingEnemies"
with(gameManager) {
remainingEnemies += -1;

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 04B4DAED
instance_destroy();