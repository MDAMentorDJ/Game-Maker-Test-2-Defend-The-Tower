/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 5EC077F9
event_inherited();

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 420BCCF5
/// @DnDComment : Face to the player
/// @DnDArgument : "x" "playerTower.x"
/// @DnDArgument : "y" "playerTower.y"
direction = point_direction(x, y, playerTower.x, playerTower.y);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 65317614
/// @DnDArgument : "expr" "direction"
/// @DnDArgument : "var" "image_angle"
image_angle = direction;

/// @DnDAction : YoYo Games.Movement.Add_Motion
/// @DnDVersion : 1
/// @DnDHash : 0C481CEE
/// @DnDArgument : "dir" "direction"
/// @DnDArgument : "speed" "enemySpeed"
motion_add(direction, enemySpeed);