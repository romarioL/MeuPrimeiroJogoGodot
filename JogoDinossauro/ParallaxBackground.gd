extends ParallaxBackground

var parallax_offset = 0

func _ready():
	get_node("ParallaxLayer/chao").set_position(Vector2(0, 710))
	
func _process(delta):
	parallax_offset -= get_node("/root/Main").velocidade.x * -delta 
	set_scroll_offset(Vector2(parallax_offset, 0))


