extends Control


signal change_scene(to: String)
  


func _on_start_button_pressed():
    change_scene.emit("res://scenes/intro/intro.tscn")


func _on_options_button_pressed():
    pass
    #Options.show_options()
