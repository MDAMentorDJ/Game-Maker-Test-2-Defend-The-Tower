/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E564E0C
/// @DnDComment : Only spawn enemies in combat
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
/// @DnDComment : Only spawn if there are enemies left to spawn
/// @DnDArgument : "var" "enemiesToSpawn"
if(enemiesToSpawn == 0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 03CDDBBF
	/// @DnDParent : 3F850A0D
	exit;
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 484CC75D
/// @DnDComment : Spawn a number of enemies up to the current wave number
/// @DnDArgument : "var" "spawnAmount"
/// @DnDArgument : "value" "random_range(1,waveNumber)"
var spawnAmount = random_range(1,waveNumber);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 153402FF
/// @DnDArgument : "var" "spawnAmount"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "enemiesToSpawn"
if(spawnAmount > enemiesToSpawn)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5EEDF57D
	/// @DnDComment : Don't spawn more enemies than are left
	/// @DnDParent : 153402FF
	/// @DnDArgument : "expr" "enemiesToSpawn"
	/// @DnDArgument : "var" "spawnAmount"
	spawnAmount = enemiesToSpawn;
}

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 22AFF34B
/// @DnDComment : Spawn the enemies
/// @DnDArgument : "times" "spawnAmount"
repeat(spawnAmount)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 4D50C371
	/// @DnDParent : 22AFF34B
	/// @DnDArgument : "function" "spawnEnemy"
	/// @DnDArgument : "arg" "triangleEnemy"
	spawnEnemy(triangleEnemy);
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 073B8ACD
/// @DnDArgument : "steps" "spawnRate * room_speed"
alarm_set(0, spawnRate * room_speed);