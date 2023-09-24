/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 2ABC5563
/// @DnDComment : Make sure we render the player
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 19F14CDB
/// @DnDComment : Draw the players health bar
/// @DnDArgument : "x1" "-150"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "75"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "150"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "125"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "value" "100 * (currentHealth / maxHealth)"
/// @DnDArgument : "backcol" "$FF949992"
/// @DnDArgument : "mincol" "$FF1818F4"
/// @DnDArgument : "maxcol" "$FF10FF0C"
draw_healthbar(x + -150, y + 75, x + 150, y + 125, 100 * (currentHealth / maxHealth), $FF949992 & $FFFFFF, $FF1818F4 & $FFFFFF, $FF10FF0C & $FFFFFF, 0, (($FF949992>>24) != 0), (($FFFFFFFF>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 65A08DA5
/// @DnDComment : Set the draw color to black for the health text
/// @DnDArgument : "color" "$FF191919"
draw_set_colour($FF191919 & $ffffff);
var l65A08DA5_0=($FF191919 >> 24);
draw_set_alpha(l65A08DA5_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1B2D27CD
/// @DnDComment : Show the players HP
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "100"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""HP: ""
/// @DnDArgument : "var" "currentHealth"
draw_text(x + 0, y + 100, string("HP: ") + string(currentHealth));

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 36BBEC1E
/// @DnDComment : Reset the draw color
draw_set_colour($FFFFFFFF & $ffffff);
var l36BBEC1E_0=($FFFFFFFF >> 24);
draw_set_alpha(l36BBEC1E_0 / $ff);