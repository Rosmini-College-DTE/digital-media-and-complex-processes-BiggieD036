extends VBoxContainer

const LEVELS = "res://Level.tscn"
const CONTROLS = "res://controls.tscn"

func _on_start_game_pressed():
	get_tree().change_scene_to_file(LEVELS)

func _on_quit_pressed():
	get_tree().quit()

func _on_controls_pressed():
	get_tree().change_scene_to_file(CONTROLS)
