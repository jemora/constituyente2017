
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

export (Theme) var Tema_pequenyo
export (Theme) var Tema_grande


func _ready():
	get_node("CanvasLayer/flechas/AnimationPlayer").play("flecha")
	get_node("CanvasLayer/flechas1/AnimationPlayer").play("flecha")

	#color = randomize() # resetea el cada vez que inicia
	VisualServer.set_default_clear_color(Color(0.0,0.1,0.4,1.0))
	get_node("CanvasLayer/PopupPanel/Panel/RichTextLabel").set_size(get_node("CanvasLayer/PopupPanel/Panel").get_size() - Vector2(50, 50) )

	get_node("TextureButton_1/Label_1").set_text("Definición de los sectores sociales y mecanismos de abordaje")
	get_node("TextureButton_2/Label_1").set_text("Temas propuestos de la constituyente")
	get_node("TextureButton_3/Label_1").set_text("Nuevo desencadenante histórico")
	get_node("TextureButton_4/Label_1").set_text("Los 9 objetivos programáticos de la Asamblea Nacional Constituyente")
	get_node("TextureButton_5/Label_1").set_text("14 preguntas y respuestas sobre la Constituyente")



	get_node("TextureButton_1").connect("pressed", self, "boton_1")
	get_node("TextureButton_2").connect("pressed", self, "boton_2")
	get_node("TextureButton_3").connect("pressed", self, "boton_3")
	get_node("TextureButton_4").connect("pressed", self, "boton_4")
	get_node("TextureButton_5").connect("pressed", self, "boton_5")



	get_node("CanvasLayer/PopupPanel/volver").connect("pressed", self, "volver")
	get_node("CanvasLayer/TextureButton_volver").connect("pressed", self, "volver_menu")

	get_node("Button").connect("pressed", self, "idioma")



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
	get_node("CanvasLayer/PopupPanel/Panel/RichTextLabel").set_theme(Tema_pequenyo)
	get_node("CanvasLayer/PopupPanel").set_exclusive(true)
	get_node("CanvasLayer/PopupPanel").popup()
	get_tree().set_pause(true)
	get_node("CanvasLayer/PopupPanel/Label_textos").set_text("sectores_sociales")
	get_node("CanvasLayer/PopupPanel/Panel/RichTextLabel").set_bbcode(get_node("CanvasLayer/PopupPanel/Label_textos").get_text())
	get_node("CanvasLayer/TextureButton_volver").hide()

func boton_2():
	get_node("CanvasLayer/PopupPanel/Panel/RichTextLabel").set_theme(Tema_pequenyo)
	get_node("CanvasLayer/PopupPanel").set_exclusive(true)
	get_node("CanvasLayer/PopupPanel").popup()
	get_tree().set_pause(true)
	get_node("CanvasLayer/PopupPanel/Label_textos").set_text("temas_constituyente")
	get_node("CanvasLayer/PopupPanel/Panel/RichTextLabel").set_bbcode(get_node("CanvasLayer/PopupPanel/Label_textos").get_text())
	get_node("CanvasLayer/TextureButton_volver").hide()

func boton_3():
	get_node("CanvasLayer/PopupPanel/Panel/RichTextLabel").set_theme(Tema_pequenyo)
#	get_tree().change_scene("res://miembros_comision.scn")
	get_node("CanvasLayer/PopupPanel").set_exclusive(true)
	get_node("CanvasLayer/PopupPanel").popup()
	get_tree().set_pause(true)
	get_node("CanvasLayer/PopupPanel/Label_textos").set_text("desencadenante_historico")
	get_node("CanvasLayer/PopupPanel/Panel/RichTextLabel").set_bbcode(get_node("CanvasLayer/PopupPanel/Label_textos").get_text())
	get_node("CanvasLayer/TextureButton_volver").hide()

func boton_4():
	get_node("CanvasLayer/PopupPanel/Panel/RichTextLabel").set_theme(Tema_pequenyo)
	get_node("CanvasLayer/PopupPanel").set_exclusive(true)
	get_node("CanvasLayer/PopupPanel").popup()
	get_tree().set_pause(true)
	get_node("CanvasLayer/PopupPanel/Label_textos").set_text("9_objetivos")
	get_node("CanvasLayer/PopupPanel/Panel/RichTextLabel").set_bbcode(get_node("CanvasLayer/PopupPanel/Label_textos").get_text())
	get_node("CanvasLayer/TextureButton_volver").hide()

func boton_5():
	get_node("CanvasLayer/PopupPanel/Panel/RichTextLabel").set_theme(Tema_pequenyo)
	get_node("CanvasLayer/PopupPanel").set_exclusive(true)
	get_node("CanvasLayer/PopupPanel").popup()
	get_tree().set_pause(true)
	get_node("CanvasLayer/PopupPanel/Label_textos").set_text("preguntas")
	get_node("CanvasLayer/PopupPanel/Panel/RichTextLabel").set_bbcode(get_node("CanvasLayer/PopupPanel/Label_textos").get_text())
	get_node("CanvasLayer/TextureButton_volver").hide()


func volver():
	get_node("CanvasLayer/PopupPanel").hide()
	get_tree().set_pause(false)
	get_node("CanvasLayer/TextureButton_volver").show()


func volver_menu():
	get_tree().change_scene("res://menu_constituyente.scn")



func idioma():
	TranslationServer.set_locale("es")
	get_tree().reload_current_scene()


