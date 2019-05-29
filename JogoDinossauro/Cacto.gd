extends Area2D

var chao  = Vector2(2400,670)
onready  var dinosauro = get_parent().get_node("Dinossauro")
var tempo_vida = 5


func _ready():
	set_position(chao)
	connect("area_entered", dinosauro,"colidiu")
	
func _physics_process(delta):
	set_position(get_position() + get_node("/root/Main").velocidade * delta)
	tempo_vida = tempo_vida - delta
	
	if tempo_vida <= 0:
		queue_free()
    
	
	
