/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 716A72D5
/// @DnDComment : Set the title font
/// @DnDArgument : "font" "titleFont"
/// @DnDSaveInfo : "font" "titleFont"
draw_set_font(titleFont);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 27CC106E
/// @DnDComment : Set it front and center
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 36C13CDD
/// @DnDComment : The name of the game
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Defend The Tower""
draw_text(x + 0, y + 0, string("Defend The Tower") + "");

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 487B1063
/// @DnDComment : Set the font back to default
/// @DnDArgument : "font" "defaultFont"
/// @DnDSaveInfo : "font" "defaultFont"
draw_set_font(defaultFont);