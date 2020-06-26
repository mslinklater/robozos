extends Node2D

export(int) var mapWidth = 64
export(int) var mapHeight = 64

onready var lowTileMap = $LowTileMap

func _init():
	print("game._init()")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
