extends Control


const MAIN_MENU = "res://Main Menu.tscn"

func _on_quit_pressed():
	get_tree().quit()

func _on_return_to_menu_pressed():
	get_tree().change_scene_to_file(MAIN_MENU)
