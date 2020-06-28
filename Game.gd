extends Node2D

export(int) var mapWidth = 64
export(int) var mapHeight = 64

onready var lowTileMap = $LowTileMap

func _init():
	print("game._init()")

# Called when the node enters the scene tree for the first time.
func _ready():
	print("game._ready()")
	
	print("Drawing background tilemap")
	
	for y in range(mapHeight):
		for x in range(mapWidth):
			lowTileMap.set_cell(x, y, Graphics.BGTiles.Grass)

	for y in range(-1, mapHeight+1):
		lowTileMap.set_cell(-1, y, Graphics.BGTiles.Warning)
		lowTileMap.set_cell(mapWidth, y, Graphics.BGTiles.Warning)

	for x in range(-1, mapWidth+1):
		lowTileMap.set_cell(x, -1, Graphics.BGTiles.Warning)
		lowTileMap.set_cell(x, mapHeight, Graphics.BGTiles.Warning)

func _process(_delta):
	if Input.is_action_just_pressed("quit_game"):
		get_tree().quit(0)
		
