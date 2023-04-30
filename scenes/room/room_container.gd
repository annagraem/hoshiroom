extends Node2D


func _ready():
    CameraData.viewport_container = $SubViewportContainer
    CameraData.viewport = $SubViewportContainer/SubViewport
