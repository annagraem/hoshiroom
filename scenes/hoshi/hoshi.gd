extends CharacterBody2D

@export var speed := 50.0
@onready var animations = $AnimationPlayer

func update_animations() -> void:
    if velocity.length() == 0:
        if (animations.is_playing()):
            animations.stop()
    else:
        var direction = "down"
        if velocity.x < 0:
            direction = "left"
        elif velocity.x > 0:
            direction = "right"
        elif velocity.y < 0:
            direction = "up" 
        animations.play("walk_" + direction)
    

func _physics_process(delta: float) -> void:
    var input_direction = Input.get_vector("left", "right", "up", "down").normalized()
    velocity = input_direction * speed
    update_animations()
    move_and_slide()
