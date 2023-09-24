/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4F6BD85C
/// @DnDComment : This alarm is called when the player dies$(13_10)reset the slowmo$(13_10)go to the game over screen
/// @DnDArgument : "expr" "60"
/// @DnDArgument : "var" "room_speed"
room_speed = 60;

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 02C301FF
/// @DnDArgument : "room" "gameOver"
/// @DnDSaveInfo : "room" "gameOver"
room_goto(gameOver);