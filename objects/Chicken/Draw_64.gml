/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 6B81A516
/// @DnDArgument : "x" "35"
/// @DnDArgument : "y" "35"
/// @DnDArgument : "sprite" "Kahvi"
/// @DnDSaveInfo : "sprite" "Kahvi"
var l6B81A516_0 = sprite_get_width(Kahvi);
var l6B81A516_1 = 0;
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
for(var l6B81A516_2 = __dnd_lives; l6B81A516_2 > 0; --l6B81A516_2) {
	draw_sprite(Kahvi, 0, 35 + l6B81A516_1, 35);
	l6B81A516_1 += l6B81A516_0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 184A32D0
/// @DnDApplyTo : {Chicken}
/// @DnDArgument : "var" "ratCount"
/// @DnDArgument : "not" "1"
with(Chicken) var l184A32D0_0 = ratCount == 0;
if(!l184A32D0_0)
{

}