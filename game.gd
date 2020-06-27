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
			lowTileMap.set_cell(x, y, 0)

