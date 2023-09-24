/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 38BB55AF
/// @DnDComment : If we're not in combat, don't shoot
/// @DnDApplyTo : {gameManager}
/// @DnDArgument : "var" "inCombat"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
with(gameManager) var l38BB55AF_0 = inCombat == true;
if(!l38BB55AF_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 6B500C8A
	/// @DnDParent : 38BB55AF
	exit;
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 740A74AF
/// @DnDComment : Shoot a bullet when fire rate fires
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "playerBullet"
/// @DnDSaveInfo : "objectid" "playerBullet"
instance_create_layer(x + 0, y + 0, "Instances", playerBullet);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5EAB3ABE
/// @DnDComment : Set an alarm to fire the next bullet$(13_10)It's relative to the frame rate$(13_10)So if we're at 60 fps, and a firerate of 2$(13_10)Then fire every 30 frames
/// @DnDArgument : "steps" "room_speed / bulletFireRate"
alarm_set(0, room_speed / bulletFireRate);