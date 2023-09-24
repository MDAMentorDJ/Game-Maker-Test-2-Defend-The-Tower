/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 42B3645A
/// @DnDComment : Highlight the button when we hover
/// @DnDArgument : "colour" "$FFFFAF26"
image_blend = $FFFFAF26 & $ffffff;
image_alpha = ($FFFFAF26 >> 24) / $ff;