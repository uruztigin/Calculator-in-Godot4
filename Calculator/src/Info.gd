extends ColorRect
#SINGLETONS
#Herhangi bir isim değişikliği ve ya dosya değişikliği yaparsam sadece bu değişken ile scriptin tümünde güncellenmesi için.
var global = Global

#INFO_işlemleri için.
var IMGinfo_array: Array
var TXTinfo_array: Array

var IMGadd_array: Array
var IMGsub_array: Array
var IMGmulti_array: Array
var IMGdiv_array: Array

var TXTadd_array: Array
var TXTsub_array: Array
var TXTmulti_array: Array
var TXTdiv_array: Array

@onready var IMGinfo = $IMGinfo
@onready var LBLinfo = $LBLinfo

#METİNLER(LANGUAGE_TEXT)
#ADD
var ADD_TXT00: String = tr("ADD_info00") + "\n" + tr("ADD_info01")
var ADD_TXT01: String = tr("ADD_info02")
#SUB
var SUB_TXT00: String = tr("SUB_info00")
var SUB_TXT01: String = tr("SUB_info01")
var SUB_TXT02: String = tr("SUB_info02")
var SUB_TXT03: String = tr("SUB_info03")
#MULTI
var MULTI_TXT00: String = tr("MULTI_info00")
var MULTI_TXT01: String = tr("MULTI_info01")
var MULTI_TXT02: String = tr("MULTI_info02")
var MULTI_TXT03: String = tr("MULTI_info03")
#DIV
var DIV_TXT00: String = tr("DIV_info00")
var DIV_TXT01: String = tr("DIV_info01")
var DIV_TXT02: String = tr("DIV_info02")
var DIV_TXT03: String = tr("DIV_info03")
var DIV_TXT04: String = tr("DIV_info04")
var DIV_TXT05: String = tr("DIV_info05")
var DIV_TXT06: String = tr("DIV_info06")
var DIV_TXT07: String = tr("DIV_info07")

#GÖRSELLER
#Klasörlerimin düzenini ve ya ismini değiştirdiğimde karışıklığı önlemek ve basitce durumu güncellemek için.
var img_res: String = "res://content/info/"
#ADD
var ADD_IMG00 = load(img_res + "add00.jpg")
var ADD_IMG01 = load(img_res + "add01.jpg")
#SUB
var SUB_IMG00 = load(img_res + "sub00.jpg")
var SUB_IMG01 = load(img_res + "sub01.jpg")
var SUB_IMG02 = load(img_res + "sub02.jpg")
var SUB_IMG03 = load(img_res + "sub03.jpg")
#MULTI
var MULTI_IMG00 = load(img_res + "multi00.jpg")
var MULTI_IMG01 = load(img_res + "multi01.jpg")
var MULTI_IMG02 = load(img_res + "multi02.jpg")
var MULTI_IMG03 = load(img_res + "multi03.jpg")
#DIV
var DIV_IMG00 = load(img_res + "div00.jpg")
var DIV_IMG01 = load(img_res + "div01.jpg")
var DIV_IMG02 = load(img_res + "div02.jpg")
var DIV_IMG03 = load(img_res + "div03.jpg")
var DIV_IMG04 = load(img_res + "div04.jpg")
var DIV_IMG05 = load(img_res + "div05.jpg")
var DIV_IMG06 = load(img_res + "div06.jpg")
var DIV_IMG07 = load(img_res + "div07.jpg")


# Called when the node enters the scene tree for the first time.
func _ready():
	#Uygulama çalıştırıldığında dizilerimin elemanlarını güncelle.
	#ADD
	IMGadd_array = [ADD_IMG00, ADD_IMG01]
	TXTadd_array = [ADD_TXT00, ADD_TXT01]
	#SUB
	IMGsub_array = [SUB_IMG00, SUB_IMG01, SUB_IMG02, SUB_IMG03]
	TXTsub_array = [SUB_TXT00, SUB_TXT01, SUB_TXT02, SUB_TXT03]
	#MULTI
	IMGmulti_array = [MULTI_IMG00, MULTI_IMG01, MULTI_IMG02, MULTI_IMG03]
	TXTmulti_array = [MULTI_TXT00, MULTI_TXT01, MULTI_TXT02, MULTI_TXT03]
	#DIV
	IMGdiv_array = [DIV_IMG00, DIV_IMG01, DIV_IMG02, DIV_IMG03, DIV_IMG04, DIV_IMG05, DIV_IMG06, DIV_IMG07]
	TXTdiv_array = [DIV_TXT00, DIV_TXT01, DIV_TXT02, DIV_TXT03, DIV_TXT04, DIV_TXT05, DIV_TXT06, DIV_TXT07]
	
	_on_update_text()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if global.INFOmode:
		_on_update_info()
	else: pass
	
	if global.SELECTEDlanguage_mode: #Bu mode ... -> false
		_on_update_text()
	else: pass


#METİNLER(LANGUAGE_TEXT) GÜNCELLE
func _on_update_text():
	#ADD
	ADD_TXT00 = tr("ADD_info00") + "\n" + tr("ADD_info01")
	ADD_TXT01 = tr("ADD_info02")
	#SUB
	SUB_TXT00 = tr("SUB_info00")
	SUB_TXT01 = tr("SUB_info01")
	SUB_TXT02 = tr("SUB_info02")
	SUB_TXT03 = tr("SUB_info03")
	#MULTI
	MULTI_TXT00 = tr("MULTI_info00")
	MULTI_TXT01 = tr("MULTI_info01")
	MULTI_TXT02 = tr("MULTI_info02")
	MULTI_TXT03 = tr("MULTI_info03")
	#DIV
	DIV_TXT00 = tr("DIV_info00")
	DIV_TXT01 = tr("DIV_info01")
	DIV_TXT02 = tr("DIV_info02")
	DIV_TXT03 = tr("DIV_info03")
	DIV_TXT04 = tr("DIV_info04")
	DIV_TXT05 = tr("DIV_info05")
	DIV_TXT06 = tr("DIV_info06")
	DIV_TXT07 = tr("DIV_info07")
	#TEXT_ARRAYS
	#Metinleri, güncellemiş olsakta yazdırırken dizilerimizden çekiyoruz. Bu sebeble dizileride güncelleriz.
	TXTadd_array = [ADD_TXT00, ADD_TXT01]
	TXTsub_array = [SUB_TXT00, SUB_TXT01, SUB_TXT02, SUB_TXT03]
	TXTmulti_array = [MULTI_TXT00, MULTI_TXT01, MULTI_TXT02, MULTI_TXT03]
	TXTdiv_array = [DIV_TXT00, DIV_TXT01, DIV_TXT02, DIV_TXT03, DIV_TXT04, DIV_TXT05, DIV_TXT06, DIV_TXT07]


#INFO_PANELLERİMİ GÜNCELLE
func _on_update_info():
	if global.INFOadd_mode:
		IMGinfo_array = IMGadd_array
		TXTinfo_array = TXTadd_array
	elif global.INFOsub_mode:
		IMGinfo_array = IMGsub_array
		TXTinfo_array = TXTsub_array
	elif global.INFOmulti_mode:
		IMGinfo_array = IMGmulti_array
		TXTinfo_array = TXTmulti_array
	elif global.INFOdiv_mode:
		IMGinfo_array = IMGdiv_array
		TXTinfo_array = TXTdiv_array
	else: pass
	
	if IMGinfo_array.size() > 0 && TXTinfo_array.size() > 0:
		IMGinfo.texture = IMGinfo_array[global.i]
		LBLinfo.text = TXTinfo_array[global.i]


#Info Panel yön tuşları.
func _on_up_pressed():
	if global.i >= 0 and global.i < TXTinfo_array.size() - 1: #IMGinfo_array or TXTinfo_array.
		global.i += 1

func _on_down_pressed():
	if global.i > 0:
		global.i -= 1
