extends Node2D

@export var clicks_needed= 5
var times_pressed = 0 
@onready var themed_timer: Node2D = $ThemedTimer
@onready var click_count = $click_count
# Called when the node enters the scene tree for the first time.
var timer_end = false

func _ready() -> void:
	await themed_timer.Timer(7.0)
	#after this is completed...
	timer_end = true 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	click_count.text = "TOTAL CLICKS:"+str(times_pressed)+"/"+str(clicks_needed)
	if times_pressed == clicks_needed:
		if Global.minigames_done > 3:
			get_tree().change_scene_to_file("res://scenes/done_screen.tscn")
		else:
			get_tree().change_scene_to_file("res://scene/level_scene.tscn")
	
	if timer_end:
		Global.lives -= 1
		Global.minigames_done -=1
		get_tree().change_scene_to_file("res://scene/level_scene.tscn")
