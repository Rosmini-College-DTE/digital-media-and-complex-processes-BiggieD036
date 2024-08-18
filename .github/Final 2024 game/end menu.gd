extends Control

const MAIN_MENU_PATH = "res://Main Menu.tscn"

func _on_return_to_menu_pressed():
	# Perform any necessary cleanup or state resetting here
	get_tree().change_scene_to_file(MAIN_MENU_PATH)

func _on_quit_pressed():
	get_tree().quit()
