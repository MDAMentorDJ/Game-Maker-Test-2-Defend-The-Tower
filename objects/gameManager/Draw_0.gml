/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 08E823E4
/// @DnDComment : If we're in combat
/// @DnDArgument : "var" "inCombat"
/// @DnDArgument : "value" "true"
if(inCombat == true)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 620AD7E4
	/// @DnDComment : Render the wave and enemy count
	/// @DnDParent : 08E823E4
	/// @DnDArgument : "x" "room_width / 2"
	/// @DnDArgument : "y" "32"
	/// @DnDArgument : "caption" ""Wave: ""
	/// @DnDArgument : "var" "waveNumber"
	draw_text(room_width / 2, 32, string("Wave: ") + string(waveNumber));

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 02D9342C
	/// @DnDParent : 08E823E4
	/// @DnDArgument : "x" "room_width / 2"
	/// @DnDArgument : "y" "80"
	/// @DnDArgument : "caption" ""Enemies Left: ""
	/// @DnDArgument : "var" "remainingEnemies"
	draw_text(room_width / 2, 80, string("Enemies Left: ") + string(remainingEnemies));
}