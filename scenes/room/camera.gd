extends Camera2D

@export var player: Node2D

var game_size = Vector2i(320, 180)
@onready var window_scale: float = (get_window().size / game_size).x
@onready var actual_cam_pos = global_position


func _process(delta):
    actual_cam_pos = lerp(actual_cam_pos, player.global_position, delta*5)
    var subpixel_position = actual_cam_pos.round() - actual_cam_pos
    CameraData.viewport_container.material.set_shader_parameter("cam_offset", subpixel_position)
    global_position = actual_cam_pos.round()
