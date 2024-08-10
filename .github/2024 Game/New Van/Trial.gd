extends VehicleBody3D

const MAX_STEER = 0.35
const ENGINE_POWER = 40


@onready var camera_pivot = $CameraPivot
@onready var camera_3d = $CameraPivot/Camera3D

var look_at

# Called when the node enters the scene tree for the first time.
func _ready():
	look_at = global_position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	steering = move_toward(steering, Input.get_axis("ui_right", "ui_left") * MAX_STEER, delta * 2.5)
	engine_force = (Input.get_action_strength("ui_up") - Input.get_action_strength("ui_down")) * ENGINE_POWER
	camera_pivot.global_position = camera_pivot.global_position.lerp(global_position, delta * 5.0)
	camera_pivot.transform = camera_pivot.transform.interpolate_with(transform, delta * 2.5)
	look_at = look_at.lerp(global_position + linear_velocity, delta * 2.5)
	camera_3d.look_at(look_at)
