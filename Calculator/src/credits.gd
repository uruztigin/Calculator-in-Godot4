extends Control
#SIGNALS
signal exit_credits() #spacial signal name

#SINGLETONS
var global = Global

#Düğümler
@onready var BTNexit: TextureButton = $BGcolor/Exit

#DÜĞÜMLER
@onready var TITLEmain: Label = $BGcolor/TXTcredits/Part0/Title
@onready var TXTexplanation: Label = $BGcolor/TXTcredits/Part1/Text


func _ready():
	#Kredi sahnemiz açıkken anlık olarak görseller değiştirilemeyeceği için başlatıldığında güncellenmesi yeterli.
	BTNexit.texture_normal = global.TEXTUREtype1
	BTNexit.texture_hover = global.TEXTUREtype2
	on_update_text()


func _input(_event):
	if Input.is_action_just_pressed("Escape"):
		emit_signal("exit_credits", _on_exit_pressed())
	else: pass


func _process(_delta):
	if global.SELECTEDlanguage_mode:
		on_update_text()
	else: pass


func on_update_text():
	TITLEmain.text = tr("TITLEmain00_credits")
	TXTexplanation.text = tr("EXPLANATION00_credits")


func _on_exit_pressed():
	self.queue_free()

#İLERİDE CREDİT MENU DE GÖRSEL ve ya BENZER DEĞİŞİKLİKLER YAPMAK İSTENİRSE DİYE AYRI BİR SCRİPT KULLANILDI.
