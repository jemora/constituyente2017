
extends Node2D

const CAVE_LIMITxd = 2000
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

	get_node("TextureButton_1/Label_1").set_text("elias_web")
	get_node("TextureButton_2/Label_1").set_text("vicepresidencia")
	get_node("TextureButton_3/Label_1").set_text("ministro")
	get_node("TextureButton_4/Label_1").set_text("fundacite")
	get_node("TextureButton_5/Label_1").set_text("ü°…Šü¶«“°")


	get_node("TextureButton_1").connect("pressed", self, "boton_1")
	get_node("TextureButton_2").connect("pressed", self, "boton_2")
	get_node("TextureButton_3").connect("pressed", self, "boton_3")
	get_node("TextureButton_4").connect("pressed", self, "boton_4")
	get_node("TextureButton_5").connect("pressed", self, "boton_5")

	get_node("twitter").connect("pressed", self, "twitter_elias")
	get_node("face").connect("pressed", self, "face_elias")
	get_node("blog").connect("pressed", self, "blog_elias")

	get_node("twitter_hugber").connect("pressed", self, "twitter_hugber")
	get_node("email").connect("pressed", self, "email_fundacite")
	get_node("web").connect("pressed", self, "web_fundacite")


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
#	OS.shell_open("http://fundacite-amazonas.gob.ve/portal/wp-content/uploads/2017/05/Gaceta-Oficial-Extraordinaria-N%C2%B0-6.295.pdf")
#	get_node("CanvasLayer/PopupPanel/Panel/RichTextLabel").set_theme(Tema_pequenyo)
#	get_node("CanvasLayer/PopupPanel").set_exclusive(true)
#	get_node("CanvasLayer/PopupPanel").popup()
#	get_tree().set_pause(true)
#	get_node("CanvasLayer/PopupPanel/Label_textos").set_text("sectores_sociales")
#	get_node("CanvasLayer/PopupPanel/Panel/RichTextLabel").set_bbcode(get_node("CanvasLayer/PopupPanel/Label_textos").get_text())
#	get_node("CanvasLayer/TextureButton_volver").hide()
	pass

func boton_2():
#	OS.shell_open("http://fundacite-amazonas.gob.ve/portal/wp-content/uploads/2017/05/Gaceta-Oficial-Extraordinaria-N%C2%B0-6.295.pdf")
#	get_node("CanvasLayer/PopupPanel/Panel/RichTextLabel").set_theme(Tema_pequenyo)
#	get_node("CanvasLayer/PopupPanel").set_exclusive(true)
#	get_node("CanvasLayer/PopupPanel").popup()
#	get_tree().set_pause(true)
#	get_node("CanvasLayer/PopupPanel/Label_textos").set_text("sectores_sociales")
#	get_node("CanvasLayer/PopupPanel/Panel/RichTextLabel").set_bbcode(get_node("CanvasLayer/PopupPanel/Label_textos").get_text())
#	get_node("CanvasLayer/TextureButton_volver").hide()
	pass
	
func boton_3():
#	OS.shell_open("http://fundacite-amazonas.gob.ve/portal/wp-content/uploads/2017/05/Gaceta-Oficial-Extraordinaria-N%C2%B0-6.295.pdf")
#	get_node("CanvasLayer/PopupPanel/Panel/RichTextLabel").set_theme(Tema_pequenyo)
#	get_node("CanvasLayer/PopupPanel").set_exclusive(true)
#	get_node("CanvasLayer/PopupPanel").popup()
#	get_tree().set_pause(true)
#	get_node("CanvasLayer/PopupPanel/Label_textos").set_text("sectores_sociales")
#	get_node("CanvasLayer/PopupPanel/Panel/RichTextLabel").set_bbcode(get_node("CanvasLayer/PopupPanel/Label_textos").get_text())
#	get_node("CanvasLayer/TextureButton_volver").hide()
	pass
	
func boton_4():
#	OS.shell_open("http://fundacite-amazonas.gob.ve/portal/wp-content/uploads/2017/05/Gaceta-Oficial-Extraordinaria-N%C2%B0-6.295.pdf")
#	get_node("CanvasLayer/PopupPanel/Panel/RichTextLabel").set_theme(Tema_pequenyo)
#	get_node("CanvasLayer/PopupPanel").set_exclusive(true)
#	get_node("CanvasLayer/PopupPanel").popup()
#	get_tree().set_pause(true)
#	get_node("CanvasLayer/PopupPanel/Label_textos").set_text("sectores_sociales")
#	get_node("CanvasLayer/PopupPanel/Panel/RichTextLabel").set_bbcode(get_node("CanvasLayer/PopupPanel/Label_textos").get_text())
#	get_node("CanvasLayer/TextureButton_volver").hide()
	pass
	
func boton_5():
#	OS.shell_open("http://fundacite-amazonas.gob.ve/portal/?attachment_id=808")
#	get_node("CanvasLayer/PopupPanel/Panel/RichTextLabel").set_theme(Tema_pequenyo)
#	get_node("CanvasLayer/PopupPanel").set_exclusive(true)
#	get_node("CanvasLayer/PopupPanel").popup()
#	get_tree().set_pause(true)
#	get_node("CanvasLayer/PopupPanel/Label_textos").set_text("sectores_sociales")
#	get_node("CanvasLayer/PopupPanel/Panel/RichTextLabel").set_bbcode(get_node("CanvasLayer/PopupPanel/Label_textos").get_text())
#	get_node("CanvasLayer/TextureButton_volver").hide()
	pass


func twitter_elias():
	OS.shell_open("https://twitter.com/jauamiranda?lang=es")

func face_elias():
	OS.shell_open("https://www.facebook.com/pages/El%C3%ADas-Jaua-Milano/108052829217032")

func blog_elias():
	OS.shell_open("https://eliasjauavzla.wordpress.com/")


func twitter_hugber():
	OS.shell_open("https://twitter.com/hugbelpsuv?lang=es")


func email_fundacite():
	OS.shell_open("cdt@fundacite-amazonas.gob.ve")
	
func web_fundacite():
	OS.shell_open("http://fundacite-amazonas.gob.ve")




func volver():
	get_node("CanvasLayer/PopupPanel").hide()
	get_tree().set_pause(false)
	get_node("CanvasLayer/TextureButton_volver").show()


func volver_menu():
	get_tree().change_scene("res://menu_constituyente.scn")



func idioma():
	TranslationServer.set_locale("es")
	get_tree().reload_current_scene()


