#DEĞİŞKENLER
var number1 = 0
var number2 = 0
var result = 0
var NEWnumber1
var NEWnumber2

var IMAGE: Array
var IMAGE2: Array
var ACCEPTkey

var TEXTURE = preload("res://icon.svg")
var TEXTURE2 = preload("res://icon.svg")

var TEXTUREmode: bool = false
var NEWtextmode: bool = false
var TRANSACTIONmode1: bool = false
var TRANSACTIONmode2: bool = false

#@onready var NUMBER1: LineEdit = $VBoxNumber/HBoxNumber/EditNumber1
#@onready var NUMBER2: LineEdit = $VBoxNumber/HBoxNumber2/EditNumber2
#@onready var RESULT: Label = $Result

#@onready var IMAGE0s1: TextureRect = $VBoxNumber/HBoxNumber/Texture0s1
#@onready var IMAGE1s1: TextureRect = $VBoxNumber/HBoxNumber/Texture1s1
#@onready var IMAGE2s1: TextureRect = $VBoxNumber/HBoxNumber/Texture2s1
#@onready var IMAGE3s1: TextureRect = $VBoxNumber/HBoxNumber/Texture3s1
#@onready var IMAGE4s1: TextureRect = $VBoxNumber/HBoxNumber/Texture4s1
#@onready var IMAGE5s1: TextureRect = $VBoxNumber/HBoxNumber/Texture5s1
#@onready var IMAGE6s1: TextureRect = $VBoxNumber/HBoxNumber/Texture6s1
#@onready var IMAGE7s1: TextureRect = $VBoxNumber/HBoxNumber/Texture7s1
#@onready var IMAGE8s1: TextureRect = $VBoxNumber/HBoxNumber/Texture8s1
#@onready var IMAGE9s1: TextureRect = $VBoxNumber/HBoxNumber/Texture9s1

#@onready var IMAGE0s2: TextureRect = $VBoxNumber/HBoxNumber2/Texture0s2
#@onready var IMAGE1s2: TextureRect = $VBoxNumber/HBoxNumber2/Texture1s2
#@onready var IMAGE2s2: TextureRect = $VBoxNumber/HBoxNumber2/Texture2s2
#@onready var IMAGE3s2: TextureRect = $VBoxNumber/HBoxNumber2/Texture3s2
#@onready var IMAGE4s2: TextureRect = $VBoxNumber/HBoxNumber2/Texture4s2
#@onready var IMAGE5s2: TextureRect = $VBoxNumber/HBoxNumber2/Texture5s2
#@onready var IMAGE6s2: TextureRect = $VBoxNumber/HBoxNumber2/Texture6s2
#@onready var IMAGE7s2: TextureRect = $VBoxNumber/HBoxNumber2/Texture7s2
#@onready var IMAGE8s2: TextureRect = $VBoxNumber/HBoxNumber2/Texture8s2
#@onready var IMAGE9s2: TextureRect = $VBoxNumber/HBoxNumber2/Texture9s2

#@onready var IMAGEresult: TextureRect = $TextureResult

# Called when the node enters the scene tree for the first time.
func _ready():
	IMAGE = []#[IMAGE0s1, IMAGE1s1,IMAGE2s1, IMAGE3s1, IMAGE4s1, IMAGE5s1, IMAGE6s1, IMAGE7s1, IMAGE8s1, IMAGE9s1]
	IMAGE2 = []#[IMAGE0s2, IMAGE1s2,IMAGE2s2, IMAGE3s2, IMAGE4s2, IMAGE5s2, IMAGE6s2, IMAGE7s2, IMAGE8s2, IMAGE9s2]
	ACCEPTkey = [KEY_0, KEY_1, KEY_2, KEY_3, KEY_4, KEY_5, KEY_6, KEY_7, KEY_8, KEY_9, KEY_BACKSPACE]

func _input(event):
	if event is InputEventKey:
		if KEY_0:
			pass
		else:
			event.accept_event()

func _process(_delta):
	#DURUMA GÖRE GÖRSELERİ YÜKLEME
	if TEXTUREmode != true:
		for i in range(IMAGE.size()):
			if NEWtextmode != false:
				IMAGE[i].texture = TEXTURE2
			else:
				IMAGE[i].texture = TEXTURE
		for i in range(IMAGE2.size()):
			if NEWtextmode != false:
				IMAGE2[i].texture = TEXTURE2
			else:
				IMAGE2[i].texture = TEXTURE
	else:
		for i in range(IMAGE.size()):
			IMAGE[i].texture = null
		for i in range(IMAGE2.size()):
			IMAGE2[i].texture = null
			

#İŞLEMLER
func _on_total_pressed():
	if TRANSACTIONmode1 != true and TRANSACTIONmode2 != true:
		#number1 = float(NUMBER1.text)
		#number2 = float(NUMBER2.text)
		result = number1 + number2
		#RESULT.text = str(result)
		
		#YAPILAN İŞLEME GÖRE GÖRSEL YÜKLE
		NEWtextmode = false
	else:
		#GİRİLEN SAYI KOŞULLLARI SAĞLANMIYORSA ES GEÇ
		pass


func _on_subtract_pressed():
	if TRANSACTIONmode1 != true and TRANSACTIONmode2 != true:
		#number1 = float(NUMBER1.text)
		#number2 = float(NUMBER2.text)
		result = number1 - number2
		#RESULT.text = str(result)
		
		#YAPILAN İŞLEME GÖRE GÖRSEL YÜKLE
		NEWtextmode = true
	else:
		#GİRİLEN SAYI KOŞULLLARI SAĞLANMIYORSA ES GEÇ
		pass



func _on_multiplication_pressed():
	if TRANSACTIONmode1 != true and TRANSACTIONmode2 != true:
		#number1 = float(NUMBER1.text)
		#number2 = float(NUMBER2.text)
		#result = number1 * number2
		#RESULT.text = str(result)
		pass
	else:
		#GİRİLEN SAYI KOŞULLLARI SAĞLANMIYORSA ES GEÇ
		pass


func _on_division_pressed():
	if TRANSACTIONmode1 != true and TRANSACTIONmode2 != true:
		#number1 = float(NUMBER1.text)
		#number2 = float(NUMBER2.text)
		result = number1 / number2
		#RESULT.text = str(result)
	else:
		#GİRİLEN SAYI KOŞULLLARI SAĞLANMIYORSA ES GEÇ
		pass


#GÖRSELLERİ ÇAĞIRMAK
func _on_edit_number_1_text_changed(new_text):
	NEWnumber1 = int(new_text)
	for i in range(IMAGE.size()):
		IMAGE[i].visible = (i < NEWnumber1)
		
	#YENİ DEĞER GİRİLDİĞİNDE SONUCU SIFIRLA
	#RESULT.text = str("0")
	#Yeni değer girildiğinde görselleri resetle.
	NEWtextmode = false
	
	#GİRİLECEK SAYI ARALIĞI KONTROLÜ(ve bu aralığa bağlı texture yükleme durumu.)
	if number1 >= 0 and number1 <= 10 and number1 >= number2 && NEWnumber2 != null:
		number1 = number1
		TEXTUREmode =false
		TRANSACTIONmode1 = false
	else:
		TEXTUREmode = true
		TRANSACTIONmode1 = true
		print("hatalı değer")
		


func _on_edit_number_2_text_changed(new_text):
	NEWnumber2 = int(new_text)
	for i in range(IMAGE2.size()):
		IMAGE2[i].visible = (i < NEWnumber2)
		
	#RESULT.text = str("0")
	#Yeni değer girildiğinde görselleri resetle.
	NEWtextmode = false
		
	#GİRİLECEK SAYI ARALIĞI KONTROLÜ(ve bu aralığa bağlı texture yükleme durumu.)
	if number2 >= 0 and number2 <= 10 and number1 >= number2 && NEWnumber1 :
		number2 = number2
		TEXTUREmode = false
		TRANSACTIONmode2 = false
	else:
		TEXTUREmode = true
		TRANSACTIONmode2= true
		print("hatalıdeğer2")

