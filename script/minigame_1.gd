extends Node2D
@onready var themed_timer: Node2D = $ThemedTimer 
@onready var collectable: Node2D = $collectable
@onready var collectable2: Node2D = $collectable2

var garlic_collected = 0
var timer_end = false

func _ready() -> void:
	collectable.garlic_collected.connect(garlic_collect)
	collectable2.garlic_collected.connect(garlic_collect)
	await themed_timer.Timer(10.0)
	timer_end = true

func _process(delta: float) -> void:
	if garlic_collected == 2:
		if Global.minigames_done > 3:
			get_tree().change_scene_to_file("res://scenes/done_screen.tscn")
		else:
			get_tree().change_scene_to_file("res://scene/level_scene.tscn")
	
	if timer_end:
		Global.minigames_done -= 1
		Global.lives -= 1
		get_tree().change_scene_to_file("res://scene/level_scene.tscn")

func garlic_collect() -> void:
	garlic_collected = garlic_collected + 1
	return
