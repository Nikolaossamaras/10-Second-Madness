extends Node2D
@onready var timer: Timer = $Timer

var garlic_collected = 0
var timer_end = false

func _ready() -> void:
	timer.wait_time = 10.0
	timer.one_shot = true
	timer.start()

func _on_timer_timeout() -> void:
	timer_end = true

func _process(_delta: float) -> void:
	if garlic_collected >= 2:
		if Global.minigames_done > 3:
			get_tree().change_scene_to_file("res://scene/done_screen.tscn")
		else:
			get_tree().change_scene_to_file("res://scene/level_scene.tscn")
	
	if timer_end:
		Global.minigames_done -= 1
		Global.lives -= 1
		get_tree().change_scene_to_file("res://scene/level_scene.tscn")



func _on_collectable_2_garlic_collected() -> void:
	print('print')
	garlic_collected += 1


func _on_collectable_garlic_collected() -> void:
	print('print')
	garlic_collected += 1
