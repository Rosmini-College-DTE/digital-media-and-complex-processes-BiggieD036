extends Control

var packagecollected = 0
@export var stopwatch_label = Label
@onready var package_71 = $packages/Package71

var stopwatch : Stopwatch

func _ready():
	$Label.text = "Packages Delivered: " + str(packagecollected)
	stopwatch = get_tree().get_first_node_in_group("stopwatch")

func _process(delta):
	update_stopwatch_label()

func update_stopwatch_label():
	stopwatch_label.text = stopwatch.time_to_string()

func _on_package_body_entered(body):
	packagecollected += 1 
	$Label.text = "Packages Delivered: " + str(packagecollected)
