extends Area2D

var pick: bool = false

func _process(delta: float) -> void:
	if pick:
		position = get_global_mouse_position()

func _on_Interactuable_mouse_entered() -> void:
	print("> on mouse entered")


func _on_Interactuable_mouse_exited() -> void:
	print("> on mouse exited")


func _on_Interactuable_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		var mouse_event: = event as InputEventMouseButton
		print("> button index: ", mouse_event.button_index)
		print("> double click: ", mouse_event.doubleclick)
		print("> pressed: ", mouse_event.pressed)
		
		if mouse_event.button_index == 1:
			pick = mouse_event.pressed
		
