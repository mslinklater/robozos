extends Node2D

var nav = null
var game = null

func _ready():
	nav = load("res://Systems/MyAStar.gd").new()
	position = Vector2(Graphics.kTileSize / 2.0, Graphics.kTileSize / 2.0)
#	initialise_nav()
	print("Robot is set up")

func _draw():
	pass
#	nav.debug_draw(self)
	
func set_game_node(gameNode):
	game = gameNode

func initialise_nav():
	for x in range(0,game.mapWidth):
		for y in range(0,game.mapHeight):
			var pointId = y * game.mapWidth + x
			nav.add_point(pointId, Vector3(8 + 16 * x, 8 + 16 * y, 0))
	
	for x in range(0, game.mapWidth - 1):
		for y in range(0, game.mapHeight - 1):
			var pointId = y * game.mapWidth + x
			nav.connect_points(pointId, pointId + 1)
			nav.connect_points(pointId, pointId + game.mapWidth)
	
	
