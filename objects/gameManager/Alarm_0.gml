/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E564E0C
/// @DnDArgument : "var" "inCombat"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(inCombat == true))
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 1D8B7BA5
	/// @DnDParent : 2E564E0C
	exit;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3F850A0D
/// @DnDArgument : "var" "enemiesToSpawn"
if(enemiesToSpawn == 0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 03CDDBBF
	/// @DnDParent : 3F850A0D
	exit;
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 4D50C371
/// @DnDArgument : "function" "spawnEnemy"
/// @DnDArgument : "arg" "triangleEnemy"
spawnEnemy(triangleEnemy);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 073B8ACD
/// @DnDArgument : "steps" "spawnRate * room_speed"
alarm_set(0, spawnRate * room_speed);