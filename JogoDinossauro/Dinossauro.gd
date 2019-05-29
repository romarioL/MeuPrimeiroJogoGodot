extends Area2D

var chao = Vector2(110,648)
var velocidade = Vector2()
var gravidade = 4000
var velocidadePulo = -1500
var modificadorGravidade = 2
var tempo = 0.0
var intervalo = 3
var intervaloMin = 0.5
var intervaloMax = 4.0

var cactos = [preload("res://CactoG1.tscn"), 
preload("res://CactoG2.tscn"),
preload("res://CactoG3.tscn"),
preload("res://CactoP1.tscn"),
preload("res://CactoP2.tscn"),
preload("res://CactoP3.tscn")
]

func _ready():
	set_position(chao) 
	randomize()
	
func _physics_process(delta):
	if not get_parent().comecou:
		return 
	
	tempo += delta
	
	if tempo >= intervalo:
		tempo = 0
		
		var c = rand_range(0, cactos.size())
		get_parent().add_child(cactos[c].instance())
		
		intervalo = rand_range(intervaloMin, intervaloMax)
	
	if Input.is_action_pressed("pular"):
	   velocidade.y += gravidade * delta
	else:
		velocidade.y +=gravidade * delta * modificadorGravidade
	
	if Input.is_action_just_pressed("pular") and position == chao:
		velocidade.y = velocidadePulo
		
		
		
	position += velocidade * delta 
	
	
		
	if get_position().y > chao.y:
		set_position(chao)
		velocidade = Vector2()
		

func colidiu(area):
	queue_free()
		
	


