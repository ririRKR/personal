extends Area2D

var s1area
var imgtexture

# Called when the node enters the scene tree for the first time.
func _ready():
	s1area = get_node("/root/Node2D/star1/s1area")
	var imgtexture = preload("res://tester.png")

	#t.create_from_image(img.load("res:///tester.png"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	var s1d = s1area.dragging
	if overlaps_area(s1area) and s1d == false:
		get_parent().set_texture(imgtexture)
	
