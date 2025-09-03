extends Node2D

@export var bomb_scene : PackedScene
var launch_padding : float = 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var bomb = bomb_scene.instantiate()
	var side : int = randi_range(1,4)
	var launchX : float
	var launchY : float
	if side==1 or side==3:
		launchX = randf_range(0,get_viewport_rect().size.x)
		launchY = -launch_padding if side==1 else (get_viewport_rect().size.y + launch_padding) 
	else:
		launchY = randf_range(0, get_viewport_rect().size.y)
		launchX = -launch_padding if side==4 else (get_viewport_rect().size.y + launch_padding) 
	bomb.position = Vector2(launchX, launchY)
	
	add_child(bomb) # this adds bomb to the scene_tree, else it will be killed after _ready
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
