/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 0F037DE8
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1F6A6738
/// @DnDBreak : 1

/// @DnDArgument : "color" "$FF1515DB"
draw_set_colour($FF1515DB & $ffffff);
var l1F6A6738_0=($FF1515DB >> 24);
draw_set_alpha(l1F6A6738_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 70F3C462
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-10"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" "enemyCurrentHealth"
draw_text(x + 0, y + -10, string(enemyCurrentHealth) + "");

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 2ACF8B09
draw_set_colour($FFFFFFFF & $ffffff);
var l2ACF8B09_0=($FFFFFFFF >> 24);
draw_set_alpha(l2ACF8B09_0 / $ff);