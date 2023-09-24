/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 01C66CD5
/// @DnDComment : Make sure to draw the button itself
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 485C7854
/// @DnDComment : Render the button text
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" "buttonText"
draw_text(x + 0, y + 0, string(buttonText) + "");