extends Node

var lives = 5
var minigames_done = 0
var ships_killed =0
var ship_needed = 10

func _process(delta: float) -> void:
	if lives == 0:
		get_tree().change_scene_to_file("res://scene/deathscreen.tscn")
		lives =5
		minigames_done = 0
	if ships_killed == ship_needed:
		get_tree().change_scene_to_file("res://scene/real_winscreen.tscn")
		ships_killed = 0
