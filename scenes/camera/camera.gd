extends Camera2D


@export var zoom_factor: float = 4

@onready var top_left = $Limits/TopLeft
@onready var bottom_right = $Limits/BottomRight


func _ready():
    zoom = Vector2(zoom_factor, zoom_factor)
    limit_top = top_left.position.y
    limit_left = top_left.position.x
    limit_bottom = bottom_right.position.y
    limit_right = bottom_right.position.x


func get_pixel_position_on_screen(pixel_position: Vector2) -> Vector2:
    var viewport_center = get_viewport().get_visible_rect().size / 2
    return (pixel_position - get_screen_center_position()) * zoom_factor + viewport_center
