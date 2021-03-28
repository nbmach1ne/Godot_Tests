extends Sprite

var cursor_0 = load("res://Assets/Sprites/mouse_0.png")
var cursor_1 = load("res://Assets/Sprites/mouse_1.png")


func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	
func _process(delta: float) -> void:
	position = get_global_mouse_position()
