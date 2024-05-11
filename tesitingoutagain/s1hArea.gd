extends Area2D

var s1area
var imgtexture

# Called when the node enters the scene tree for the first time.
func _ready():
	s1area = get_node("/root/Node2D/star1/s1area")
	imgtexture = preload("res://yellowcircle.png")

	#t.create_from_image(img.load("res:///tester.png"))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var s1d = s1area.dragging
	
	if overlaps_area(s1area) and s1d == false and not s1area.done:
		get_parent().set_texture(imgtexture)
		s1area.done = true
		s1area.get_parent().visible = false #remove draggable star sprite
