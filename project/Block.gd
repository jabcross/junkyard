tool
class_name Block
extends Node2D

const size: Vector2 = Vector2(100,100)

static func get_packed_scene():
	return load("res://Block.tscn")

func _ready():
	pass

func _draw():
	draw_rect(Rect2(Vector2(3,3), size + Vector2(3,3)),Color(0,0,0))
	draw_rect(Rect2(Vector2(2,2), size - Vector2(3,3)),Color(1,1,1))	

func _process(_delta):
	update()
