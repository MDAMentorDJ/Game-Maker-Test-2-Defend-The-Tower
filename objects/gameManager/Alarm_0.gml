/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 1BF4C818
/// @DnDComment : Get a random position
/// @DnDInput : 3
/// @DnDArgument : "var" "random_x"
/// @DnDArgument : "value" "random_range(0,room_width)"
/// @DnDArgument : "var_1" "random_y"
/// @DnDArgument : "value_1" "random_range(0,room_height)"
/// @DnDArgument : "var_2" "spawn_buffer"
/// @DnDArgument : "value_2" "100"
var random_x = random_range(0,room_width);
var random_y = random_range(0,room_height);
var spawn_buffer = 100;

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 67934EDD
/// @DnDInput : 4
/// @DnDArgument : "var" "spawnSide"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "option" "1"
/// @DnDArgument : "option_1" "2"
/// @DnDArgument : "option_2" "3"
/// @DnDArgument : "option_3" "4"
var spawnSide = choose(1, 2, 3, 4);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0E08E2DB
/// @DnDArgument : "var" "spawnSide"
/// @DnDArgument : "value" "1"
if(spawnSide == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 414454C0
	/// @DnDParent : 0E08E2DB
	/// @DnDArgument : "expr" "-spawn_buffer"
	/// @DnDArgument : "var" "random_x"
	random_x = -spawn_buffer;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 393AA07B
/// @DnDArgument : "var" "spawnSide"
/// @DnDArgument : "value" "2"
if(spawnSide == 2)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 429E4555
	/// @DnDParent : 393AA07B
	/// @DnDArgument : "expr" "room_width + spawn_buffer"
	/// @DnDArgument : "var" "random_x"
	random_x = room_width + spawn_buffer;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5051A420
/// @DnDArgument : "var" "spawnSide"
/// @DnDArgument : "value" "3"
if(spawnSide == 3)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7ABE8EF3
	/// @DnDParent : 5051A420
	/// @DnDArgument : "expr" "-spawn_buffer"
	/// @DnDArgument : "var" "random_y"
	random_y = -spawn_buffer;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5E7E3500
/// @DnDArgument : "var" "spawnSide"
/// @DnDArgument : "value" "4"
if(spawnSide == 4)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 37ACF8D2
	/// @DnDParent : 5E7E3500
	/// @DnDArgument : "expr" "room_height + spawn_buffer"
	/// @DnDArgument : "var" "random_y"
	random_y = room_height + spawn_buffer;
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 563565B5
/// @DnDArgument : "xpos" "random_x"
/// @DnDArgument : "ypos" "random_y"
/// @DnDArgument : "objectid" "triangleEnemy"
/// @DnDSaveInfo : "objectid" "triangleEnemy"
instance_create_layer(random_x, random_y, "Instances", triangleEnemy);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 073B8ACD
/// @DnDArgument : "steps" "spawnRate"
alarm_set(0, spawnRate);