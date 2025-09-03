extends Node2D

@export var bomb_scene : PackedScene
var spawn_pad : float = 10
var viewport_size : Vector2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	viewport_size = get_viewport_rect().size
	var bomb = bomb_scene.instantiate()
	var side : int = randi_range(1,4)
	var spawnX : float
	var spawnY : float
	if side%2!=0:
		# top and bottom
		spawnX = randf_range(0,viewport_size.x)
		spawnY = -spawn_pad if side==1 else (viewport_size.y + spawn_pad) 
	else:
		# right and left
		spawnY = randf_range(0, viewport_size.y)
		spawnX = -spawn_pad if side==4 else (viewport_size.x + spawn_pad) 
	bomb.position = Vector2(spawnX, spawnY)
	
	add_child(bomb) # this adds bomb to the scene_tree, else it will be killed after _ready
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
