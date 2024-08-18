extends Control

var packagecollected = 0
var timeleft = 70
var game_over = false  # Flag to track game over state

@onready var end_menu = $"End Menu"
@onready var timer = $Timer
@onready var van = get_node("res://New Van/Trial.tscn")  # Adjust the path to match where your van node is in the scene tree

func _ready():
	$Label.text = "Packages Delivered: " + str(packagecollected)
	$timelabel.text = "Time Left: " + str(timeleft)
	end_menu.visible = false  # Ensure the end menu is hidden at the start

func _on_package_body_entered(body):
	if not game_over:
		packagecollected += 1 
		$Label.text = "Packages Delivered: " + str(packagecollected)

func _on_timer_timeout():
	timeleft -= 1 
	$timelabel.text = "Time Left: " + str(timeleft)
	if timeleft <= 0:
		end_game()

func end_game():
	if not game_over:  # Ensure end_game logic only runs once
		game_over = true  # Set the game over flag
		end_menu.visible = true  # Show the end menu
		timer.stop()  # Stop the timer
		Engine.time_scale = 0  # Pause the game
		if van and van.has_method("disable_controls"):
			van.disable_controls()  # Call a method to disable van controls
