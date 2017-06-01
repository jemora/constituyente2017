
extends Node2D

const CAVE_LIMITxd = 700
const CAVE_LIMITxi = 0
const CAVE_LIMITyu = 0
const CAVE_LIMITyd = 0


export var Cx = 0
var Cy = -300
var bajar = 1
export var limite_bajar = 30
var zx = 1.0
var zy = 1.0




func _ready():


	get_node("RichTextLabel").set_selection_enabled(true)

	
	#color = randomize() # resetea el cada vez que inicia
	VisualServer.set_default_clear_color(Color(0.0,0.1,0.4,1.0))
	
	get_node("CanvasLayer/flechas/AnimationPlayer").play("flecha")
	get_node("CanvasLayer/flechas1/AnimationPlayer").play("flecha")

	get_node("TextureButton_1/Label_1").set_text("Constituyente en la constituciü‹™¾¯°üŽ“²ª¨üŽ•“ˆü†¥¹¨ü‹š—ƒüŽ‘®›¨üŽ¡’ˆüŽ”¯ˆüŽ°Ã³n de la RBV")
	get_node("TextureButton_2/Label_1").set_text("Convocatoria (decretos)")
	get_node("TextureButton_3/Label_1").set_text("Material para el debate")
	get_node("TextureButton_4/Label_1").set_text("Recursos Web")
	get_node("TextureButton_5/Label_1").set_text("Contacto / InformaciÃ³n")
	get_node("TextureButton_6/Label_1").set_text("Proceso comicial para la ANC")


	get_node("TextureButton_1").connect("pressed", self, "boton_1")
	get_node("TextureButton_2").connect("pressed", self, "boton_2")
	get_node("TextureButton_3").connect("pressed", self, "boton_3")
	get_node("TextureButton_4").connect("pressed", self, "boton_4")
	get_node("TextureButton_5").connect("pressed", self, "boton_5")
	get_node("TextureButton_6").connect("pressed", self, "boton_6")
	
	get_node("CanvasLayer/TextureButton").connect("pressed", self, "salir")


	set_process(true)
	pass


func _process(delta):
	set_process_input(true)
#	print(bajar)

	if bajar == 1:
		if Cy < -(limite_bajar):
			Cy += 10
	if Cy == 0:
		bajar = 0

	var camara = get_node("Camera2D")
	camara.set_offset(Vector2( Cx, Cy))







func _input(event):
	if (event.type == InputEvent.MOUSE_MOTION and event.button_mask&1):

		var rel_x = event.relative_x
		var rel_y = event.relative_y
		var cavepos = get_node("Camera2D").get_pos()
		cavepos.x -= rel_x
		cavepos.y -= rel_y
		if (cavepos.x > CAVE_LIMITxd):
			cavepos.x = CAVE_LIMITxd
		if (cavepos.x < CAVE_LIMITxi):
			cavepos.x = CAVE_LIMITxi

		if (cavepos.y < CAVE_LIMITyu):
			cavepos.y = CAVE_LIMITyu
		if (cavepos.y > CAVE_LIMITyd):
			cavepos.y = CAVE_LIMITyd

		get_node("Camera2D").set_pos(cavepos)

func boton_1():
	get_tree().change_scene("res://escena_1.scn")

func boton_2():
	get_tree().change_scene("res://decretos.scn")

func boton_3():
	get_tree().change_scene("res://debate.scn")

func boton_4():
	get_tree().change_scene("res://web.scn")
#	OS.shell_open("http://google.com")

func boton_5():
	get_tree().change_scene("res://contacto.scn")
#	OS.shell_open("http://google.com")

func boton_6():
	get_tree().change_scene("res://cne.scn")
#	OS.shell_open("http://google.com")


func salir():
	get_tree().quit()



