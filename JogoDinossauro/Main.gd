extends Node

var velocidade = Vector2(-500,0)
var comecou = false
var acabou = false
var potuacaoCacto  = 10
var pontos  = 0
var record = 0



func _ready():
	pass 
	
func _process(delta):
	if not comecou:
		return 
	velocidade.x += delta/20