extends Area3D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate_y(0.01)
	
func _on_body_entered(body):
	$Coinsound.play()
	$package.queue_free()

func _on_coinsound_finished():
	queue_free()
