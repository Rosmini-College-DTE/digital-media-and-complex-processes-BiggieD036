extends CanvasLayer

var packagecollected = 0

func _ready():
	$Label.text = "Pakages Delivered: " + str(packagecollected)


func _on_package_body_entered(body):
	packagecollected += 1 
	$Label.text = "Pakages Delivered: " + str(packagecollected)
