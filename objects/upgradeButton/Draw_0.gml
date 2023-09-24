/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 01C66CD5
/// @DnDComment : Make sure to draw the button itself
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 15E643E5
/// @DnDArgument : "alpha" "image_alpha"
draw_set_alpha(image_alpha);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 7B4C781C
/// @DnDComment : Set the font to the upgrade font
/// @DnDArgument : "font" "upgradeFont"
/// @DnDSaveInfo : "font" "upgradeFont"
draw_set_font(upgradeFont);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 485C7854
/// @DnDComment : Render the button text
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-125"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" "upgradeName"
draw_text(x + 0, y + -125, string(upgradeName) + "");

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 082CB38A
/// @DnDArgument : "font" "upgradeAmountFont"
/// @DnDSaveInfo : "font" "upgradeAmountFont"
draw_set_font(upgradeAmountFont);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1E9C399F
/// @DnDComment : Render the button text
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" "upgradeValue"
draw_text(x + 0, y + 0, string(upgradeValue) + "");

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 4D308A6B
/// @DnDComment : Make sure we set it back
/// @DnDArgument : "font" "defaultFont"
/// @DnDSaveInfo : "font" "defaultFont"
draw_set_font(defaultFont);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 726834CB
/// @DnDComment : Render the button text
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "125"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" "upgradeRarityText"
draw_text(x + 0, y + 125, string(upgradeRarityText) + "");

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 5522DB9F
/// @DnDComment : Reset the draw alpha
draw_set_alpha(1);