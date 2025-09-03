extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(get_viewport().get_visible_rect())
	position = get_viewport().get_visible_rect().size / 2


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position = get_viewport().get_mouse_position()
