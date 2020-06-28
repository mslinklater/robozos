extends Node2D

var nav = null

func _ready():
	nav = load("res://Systems/MyAStar.gd").new()
	position = Vector2(Graphics.kTileSize/2, Graphics.kTileSize/2)
	print("Robot is set up")

func _draw():
	nav.debug_draw()
	
