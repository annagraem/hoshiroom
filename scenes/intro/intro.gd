extends Control


signal change_scene(to: String)


# Called when the node enters the scene tree for the first time.
func _ready():
    DialogueManager.dialogue_ended.connect(_on_dialogue_ended)
    DialogueManager.show_example_dialogue_balloon(load("res://dialogue/intro.dialogue"), "intro")

func _on_dialogue_ended(resource: DialogueResource):
    print("dialogue ended, chose color ",
        Data.ColorEnum.keys()[Data.hair_color])
    change_scene.emit("res://scenes/room/room_container.tscn")
