/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 4334E9BD
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Movement.Add_Motion
/// @DnDVersion : 1
/// @DnDHash : 24D4A6E0
/// @DnDArgument : "dir" "direction"
/// @DnDArgument : "speed" "playerTower.bulletSpeed"
motion_add(direction, playerTower.bulletSpeed);