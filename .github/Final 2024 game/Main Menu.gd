extends Node3D

@onready var pivot = $Pivot

var rotation_speed = 8

func _process(delta):
	pivot.rotation_degrees.y += delta * rotation_speed
