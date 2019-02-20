extends Node2D

export (int,1,20) var width := 2
export (int,1,20) var height := 2

func _ready():
	var center = get_parent().rect_global_position + get_parent().rect_size/ 2
	var grid_size = Vector2(width * Block.size.x, height * Block.size.y)
	position = center - grid_size / 2
	for row in range(width):
		for column in range(height):
			var block = Block.get_packed_scene().instance()
			block.position = Vector2(Block.size.x * row, Block.size.y * column)
			add_child(block)