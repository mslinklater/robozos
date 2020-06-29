extends Node2D

onready var mainContainer = $CanvasLayer/MainContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_DebugButton_button_down():
	if mainContainer.visible:
		mainContainer.visible = false
	else:
		mainContainer.visible = true

