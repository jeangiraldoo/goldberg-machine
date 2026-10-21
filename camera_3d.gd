
extends Camera3D

@export var target: RigidBody3D
@export var follow_speed: float = 5.0

var offset: Vector3

func _ready() -> void:
	offset = global_position - target.global_position

func _physics_process(delta: float) -> void:
	var target_position = target.global_position + offset
	global_position = global_position.lerp(
		target_position,
		follow_speed * delta
	)
