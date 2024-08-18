extends VBoxContainer

const MAIN_MENU = "res://Main Menu.tscn"

func _on_return_pressed():
	get_tree().change_scene_to_file(MAIN_MENU)
