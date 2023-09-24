/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 0F037DE8
/// @DnDComment : Make sure we draw the sprite of the enemy
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 4A6C0E20
/// @DnDComment : Draw the hp bar
/// @DnDArgument : "x1" "-40"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "-60"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "40"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "-52"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "value" "(enemyCurrentHealth / enemyMaxHealth) * 100"
/// @DnDArgument : "backcol" "$FF666666"
/// @DnDArgument : "barcol" "$FFFFF2F2"
/// @DnDArgument : "mincol" "$FF0000DB"
/// @DnDArgument : "maxcol" "$FF0000DB"
draw_healthbar(x + -40, y + -60, x + 40, y + -52, (enemyCurrentHealth / enemyMaxHealth) * 100, $FF666666 & $FFFFFF, $FF0000DB & $FFFFFF, $FF0000DB & $FFFFFF, 0, (($FF666666>>24) != 0), (($FFFFF2F2>>24) != 0));