extends AStar


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func debug_draw(node2d):
	var pointArray = get_points()
	
	var x = node2d.position.x
	var y = node2d.position.y
	
	#draw Points
	for i in range(0, pointArray.size()):
		var pointId = pointArray[i]
		var pointPos = get_point_position(pointId)
#		node2d.draw_rect(Rect2(Vector2(pointPos.x - 1 - x, pointPos.y - 1 - y),Vector2(2,2)), Color(1,1,1))
	
		var array = get_point_connections(pointId)
		for j in range(0, array.size()):
			var secondPointId = array[j]
			var secondPointPos = get_point_position(secondPointId)
			node2d.draw_line(Vector2(pointPos.x - x, pointPos.y - y), Vector2(secondPointPos.x - x, secondPointPos.y - y), Color(1,0,0))



