/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 22FF82DB
/// @DnDApplyTo : {Chicken}
/// @DnDArgument : "var" "ratCount"
/// @DnDArgument : "value" "1"
with(Chicken) var l22FF82DB_0 = ratCount == 1;
if(l22FF82DB_0)
{

}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 6F9EE957
/// @DnDArgument : "x" "64"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "64"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "Chicken"
/// @DnDSaveInfo : "object" "Chicken"
var l6F9EE957_0 = instance_place(x + 64, y + 64, Chicken);
if ((l6F9EE957_0 > 0))
{
	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 5AD3C727
	/// @DnDApplyTo : {Chicken}
	/// @DnDParent : 6F9EE957
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "3"
	with(Chicken) {
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	var l5AD3C727_0 = __dnd_lives >= 3;
	}
	if(l5AD3C727_0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 013356A2
		/// @DnDApplyTo : {Rat}
		/// @DnDParent : 5AD3C727
		with(Rat) instance_destroy();
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7FEF903F
	/// @DnDParent : 6F9EE957
	else
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 47ACF406
		/// @DnDApplyTo : {Chicken}
		/// @DnDParent : 7FEF903F
		with(Chicken) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 1DC5AA4E
		/// @DnDParent : 7FEF903F
		
		__dnd_lives = real(0);
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 05A9C128
		/// @DnDParent : 7FEF903F
		/// @DnDArgument : "room" "Lose"
		/// @DnDSaveInfo : "room" "Lose"
		room_goto(Lose);
	}
}