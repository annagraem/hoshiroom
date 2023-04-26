extends Node


var current_scene: Node


func _ready() -> void:
    call_deferred("change_scene", "res://scenes/title/title.tscn")
    
    
func change_scene(to: String) -> void:
    if current_scene:
        current_scene.free()
    var packed = load(to)
    if not packed is PackedScene:
        push_error("Failed to load scene from %s!" % to)
        return
    current_scene = packed.instantiate()
    add_child(current_scene)
    if current_scene.has_signal("change_scene"):
        current_scene.change_scene.connect(change_scene, CONNECT_DEFERRED)
