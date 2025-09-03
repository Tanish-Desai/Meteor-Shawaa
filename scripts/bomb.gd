extends RigidBody2D

var speed : float = 600
var mouse_pos : Vector2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	gravity_scale = 0
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	follow_mouse()
	pass

func follow_mouse():
	mouse_pos = get_viewport().get_mouse_position()
	var dir = (mouse_pos - position).normalized() # normalized() returns the unit vector in same direction
	linear_velocity = dir * speed
