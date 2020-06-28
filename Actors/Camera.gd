extends Camera2D

var wanted_zoom = 0.25
var camera_speed = 250

# Called when the node enters the scene tree for the first time.
func _ready():
	make_current()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var interp_zoom = zoom.x + ((wanted_zoom - zoom.x) * delta * 5)
	zoom = Vector2(interp_zoom, interp_zoom)

	if Input.is_action_just_pressed("ui_toggle_zoom"):
		if wanted_zoom < 0.5:
			wanted_zoom = 1.0
		else:
			wanted_zoom = 0.25

	if Input.is_action_pressed("ui_down"):
		offset.y += delta * camera_speed * zoom.x
		
	if Input.is_action_pressed("ui_up"):
		offset.y -= delta * camera_speed * zoom.x
		
	if Input.is_action_pressed("ui_left"):
		offset.x -= delta * camera_speed * zoom.x
		
	if Input.is_action_pressed("ui_right"):
		offset.x += delta * camera_speed * zoom.x
