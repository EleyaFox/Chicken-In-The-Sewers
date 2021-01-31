/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 115E5653
/// @DnDApplyTo : {Chicken}
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "2"
with(Chicken) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
var l115E5653_0 = __dnd_lives >= 2;
}
if(l115E5653_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 71F24550
	/// @DnDApplyTo : other
	/// @DnDParent : 115E5653
	with(other) instance_destroy();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A4A3EC1
	/// @DnDApplyTo : {Chicken}
	/// @DnDParent : 115E5653
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "ratCount"
	with(Chicken) {
	ratCount += 1;
	
	}

	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 6E508F47
	/// @DnDParent : 115E5653
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 485403F6
else
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 6A45BF33
	/// @DnDParent : 485403F6
	
	__dnd_lives = real(0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 328A078C
	/// @DnDApplyTo : {Chicken}
	/// @DnDParent : 485403F6
	with(Chicken) instance_destroy();

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 266BFBF6
	/// @DnDParent : 485403F6
	/// @DnDArgument : "room" "Lose"
	/// @DnDSaveInfo : "room" "Lose"
	room_goto(Lose);
}