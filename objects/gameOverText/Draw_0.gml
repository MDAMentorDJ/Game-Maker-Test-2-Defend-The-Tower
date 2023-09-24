/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 716A72D5
/// @DnDComment : Set to title font
/// @DnDArgument : "font" "titleFont"
/// @DnDSaveInfo : "font" "titleFont"
draw_set_font(titleFont);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 27CC106E
/// @DnDComment : Front and center
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 36C13CDD
/// @DnDComment : Display the game over
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Game Over""
draw_text(x + 0, y + 0, string("Game Over") + "");

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 487B1063
/// @DnDComment : Return to the default font
/// @DnDArgument : "font" "defaultFont"
/// @DnDSaveInfo : "font" "defaultFont"
draw_set_font(defaultFont);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 01E3679F
/// @DnDComment : Show what wave the enemy got to
/// @DnDArgument : "x" "room_width / 2"
/// @DnDArgument : "y" "242"
/// @DnDArgument : "caption" ""Wave: ""
/// @DnDArgument : "var" "gameManager.waveNumber"
draw_text(room_width / 2, 242, string("Wave: ") + string(gameManager.waveNumber));