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

func debug_draw():
	var pointArray = get_points()
	
	#draw Points
	for i in range(0, pointArray.size()):
		pass
	
