/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 23BDEFD7
/// @DnDComment : Set the alpha of all upgrades to .5
/// @DnDApplyTo : {upgradeButton}
/// @DnDArgument : "alpha" ".5"
with(upgradeButton) image_alpha = .5;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4AD8CB62
/// @DnDArgument : "expr" "self"
/// @DnDArgument : "var" "gameManager.chosenUpgrade"
gameManager.chosenUpgrade = self;

/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 64888D6C
/// @DnDComment : Set the alpha of this upgrade to 1
image_alpha = 1;

/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 674913B0
/// @DnDComment : Also show the next wave button
/// @DnDApplyTo : {nextWave}
with(nextWave) image_alpha = 1;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 677AE9BC
/// @DnDArgument : "soundid" "buttonSound"
/// @DnDSaveInfo : "soundid" "buttonSound"
audio_play_sound(buttonSound, 0, 0, 1.0, undefined, 1.0);