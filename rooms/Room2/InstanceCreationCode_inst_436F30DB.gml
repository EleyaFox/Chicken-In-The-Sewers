/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 6030170C
/// @DnDArgument : "x" "64"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "64"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "Chicken"
/// @DnDSaveInfo : "object" "Chicken"
var l6030170C_0 = instance_place(x + 64, y + 64, Chicken);
if ((l6030170C_0 > 0))
{
	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 63386456
	/// @DnDApplyTo : {Chicken}
	/// @DnDParent : 6030170C
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "2"
	with(Chicken) {
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	var l63386456_0 = __dnd_lives >= 2;
	}
	if(l63386456_0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6E6A4A11
		/// @DnDApplyTo : {Rat}
		/// @DnDParent : 63386456
		with(Rat) instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2353891C
		/// @DnDApplyTo : {Chicken}
		/// @DnDParent : 63386456
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "ratCount"
		with(Chicken) {
		ratCount += 1;
		
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 60D09AF8
	/// @DnDParent : 6030170C
	else
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 66128061
		/// @DnDApplyTo : {Chicken}
		/// @DnDParent : 60D09AF8
		with(Chicken) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 3E2BD7A4
		/// @DnDParent : 60D09AF8
		
		__dnd_lives = real(0);
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 3FDF4855
		/// @DnDParent : 60D09AF8
		/// @DnDArgument : "room" "Lose"
		/// @DnDSaveInfo : "room" "Lose"
		room_goto(Lose);
	}
}