extends Node2D
signal garlic_collected

func _on_area_2_body_entered(body: Node2D) -> void:
	if body.has_method('player'):
		if self.visible:
			emit_signal("garlic_collected")
			self.hide()
