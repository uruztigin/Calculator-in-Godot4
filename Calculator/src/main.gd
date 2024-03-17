extends Node
#SIGNALS 
signal open_menu()

#SINGLETONS
#Herhangi bir isim değişikliği ve ya dosya değişikliği yaparsam sadece bu değişken ile scriptin tümünde güncellenmesi için.
var global = Global

#DEĞİŞKENLER
var number1: int = 0
var number2: int = 0
var result: int = 0

#MENU SAHNEM İLE ORTAK DEĞİŞKENLER(GLOBAL)
var TEXTUREtype0
var TEXTUREtype1
var TEXTUREtype2
var TEXTUREtype3
var TEXTUREtype4
var TEXTUREtype5
var TEXTUREtype6
var TEXTUREtype7
var TEXTUREtype8
var TEXTUREtype9
var TEXTUREtype10
var TEXTUREtype11


#DURUM KONTROOLERİ
var SUBTRACTIOANmode: bool = false
var MULTIPLICATIONmode: bool = false
var DIVISIONmode: bool = false
var INPUT1mode: bool = false
var INPUT2mode: bool = false
var WARNINGmode: bool = false
#var INFOmode: bool = false #Global bir değer olarak kullanıyorum.
var UP_DOWNmode: bool = false

#DİZİLER
var IMGinput1: Array
var IMGinput2: Array
var IMGresult: Array

#DÜĞÜMLER
@onready var TEXTinput1: LineEdit = $BGcolor2/TEXTinputs/Line1/Input1
@onready var TEXTinput2: LineEdit = $BGcolor2/TEXTinputs/Line2/Input2
@onready var RESULTtext: Label =  $BGcolor2/CONTAINERresult/CONTAINERresult2/TEXTresult
@onready var WARNINGtext: Label = $BGcolor2/CONTAINERresult/Warning
@onready var EXITED: TextureButton = $BGcolor2/Exit
#INFOp
@onready var INFO: Control = $BGinfo
@onready var INFOtitle : TextureRect = $BGinfo/BGinfo2/Container1/INFotitle
@onready var INFOup : TextureButton = $BGinfo/BGinfo2/Container2/Up
@onready var INFOdown : TextureButton = $BGinfo/BGinfo2/Container2/Down
#OPERATIONS
@onready var ADD: Button = $BGcolor2/CONTAINERbutton/BUTTONoperations/Addition
@onready var SUB: Button = $BGcolor2/CONTAINERbutton/BUTTONoperations/Subtraction
@onready var MULTI: Button = $BGcolor2/CONTAINERbutton/BUTTONoperations/Multiplication
@onready var DIV: Button = $BGcolor2/CONTAINERbutton/BUTTONoperations/Division
#OPRATIONSinfo
@onready var ADDinfo: Button = $BGcolor2/CONTAINERbutton/BUTTONinfo/AddInfo
@onready var SUBinfo: Button = $BGcolor2/CONTAINERbutton/BUTTONinfo/SubInfo
@onready var MULTIDinfo: Button = $BGcolor2/CONTAINERbutton/BUTTONinfo/MultiInfo
@onready var DIVDinfo: Button = $BGcolor2/CONTAINERbutton/BUTTONinfo/DivInfo
#NUMBERSbutton
@onready var BTNupdown: Button = $BGcolor2/NumberList1/Container2/UpDown
@onready var BTN1: Button = $BGcolor2/NumberList1/Container/n1
@onready var BTN2: Button = $BGcolor2/NumberList1/Container/n2
@onready var BTN3: Button = $BGcolor2/NumberList1/Container/n3
@onready var BTN4: Button = $BGcolor2/NumberList1/Container/n4
@onready var BTN5: Button = $BGcolor2/NumberList1/Container/n5
@onready var BTN6: Button = $BGcolor2/NumberList1/Container2/n6
@onready var BTN7: Button = $BGcolor2/NumberList1/Container2/n7
@onready var BTN8: Button = $BGcolor2/NumberList1/Container2/n8
@onready var BTN9: Button = $BGcolor2/NumberList1/Container2/n9
@onready var BTN10: Button = $BGcolor2/NumberList1/Container2/n10
#INPUT1 IMG
@onready var IMG0I1: TextureRect = $BGcolor2/TEXTinputs/Line1/IMG0I1
@onready var IMG1I1: TextureRect = $BGcolor2/TEXTinputs/Line1/IMG1I1
@onready var IMG2I1: TextureRect = $BGcolor2/TEXTinputs/Line1/IMG2I1
@onready var IMG3I1: TextureRect = $BGcolor2/TEXTinputs/Line1/IMG3I1
@onready var IMG4I1: TextureRect = $BGcolor2/TEXTinputs/Line1/IMG4I1
@onready var IMG5I1: TextureRect = $BGcolor2/TEXTinputs/Line1/IMG5I1
@onready var IMG6I1: TextureRect = $BGcolor2/TEXTinputs/Line1/IMG6I1
@onready var IMG7I1: TextureRect = $BGcolor2/TEXTinputs/Line1/IMG7I1
@onready var IMG8I1: TextureRect = $BGcolor2/TEXTinputs/Line1/IMG8I1
@onready var IMG9I1: TextureRect = $BGcolor2/TEXTinputs/Line1/IMG9I1
#INPUT2 IMG
@onready var IMG0I2: TextureRect = $BGcolor2/TEXTinputs/Line2/IMG0I2
@onready var IMG1I2: TextureRect = $BGcolor2/TEXTinputs/Line2/IMG1I2
@onready var IMG2I2: TextureRect = $BGcolor2/TEXTinputs/Line2/IMG2I2
@onready var IMG3I2: TextureRect = $BGcolor2/TEXTinputs/Line2/IMG3I2
@onready var IMG4I2: TextureRect = $BGcolor2/TEXTinputs/Line2/IMG4I2
@onready var IMG5I2: TextureRect = $BGcolor2/TEXTinputs/Line2/IMG5I2
@onready var IMG6I2: TextureRect = $BGcolor2/TEXTinputs/Line2/IMG6I2
@onready var IMG7I2: TextureRect = $BGcolor2/TEXTinputs/Line2/IMG7I2
@onready var IMG8I2: TextureRect = $BGcolor2/TEXTinputs/Line2/IMG8I2
@onready var IMG9I2: TextureRect = $BGcolor2/TEXTinputs/Line2/IMG9I2
#RESULT IMG1
@onready var IMGresult1: TextureRect = $BGcolor2/CONTAINERresult/IMGresults/IMGresult1
@onready var IMGresult2: TextureRect = $BGcolor2/CONTAINERresult/IMGresults/IMGresult2
@onready var IMGresult3: TextureRect = $BGcolor2/CONTAINERresult/IMGresults/IMGresult3
@onready var IMGresult4: TextureRect = $BGcolor2/CONTAINERresult/IMGresults/IMGresult4
@onready var IMGresult5: TextureRect = $BGcolor2/CONTAINERresult/IMGresults/IMGresult5
@onready var IMGresult6: TextureRect = $BGcolor2/CONTAINERresult/IMGresults/IMGresult6
@onready var IMGresult7: TextureRect = $BGcolor2/CONTAINERresult/IMGresults/IMGresult7
@onready var IMGresult8: TextureRect = $BGcolor2/CONTAINERresult/IMGresults/IMGresult8
@onready var IMGresult9: TextureRect = $BGcolor2/CONTAINERresult/IMGresults/IMGresult9
@onready var IMGresult10: TextureRect = $BGcolor2/CONTAINERresult/IMGresults/IMGresult10
@onready var IMGresult11: TextureRect = $BGcolor2/CONTAINERresult/IMGresults/IMGresult11
@onready var IMGresult12: TextureRect = $BGcolor2/CONTAINERresult/IMGresults/IMGresult12
@onready var IMGresult13: TextureRect = $BGcolor2/CONTAINERresult/IMGresults/IMGresult13
@onready var IMGresult14: TextureRect = $BGcolor2/CONTAINERresult/IMGresults/IMGresult14
@onready var IMGresult15: TextureRect = $BGcolor2/CONTAINERresult/IMGresults/IMGresult15
@onready var IMGresult16: TextureRect = $BGcolor2/CONTAINERresult/IMGresults/IMGresult16
@onready var IMGresult17: TextureRect = $BGcolor2/CONTAINERresult/IMGresults/IMGresult17
@onready var IMGresult18: TextureRect = $BGcolor2/CONTAINERresult/IMGresults/IMGresult18
@onready var IMGresult19: TextureRect = $BGcolor2/CONTAINERresult/IMGresults/IMGresult19
@onready var IMGresult20: TextureRect = $BGcolor2/CONTAINERresult/IMGresults/IMGresult20
#RESULT IMG2
@onready var IMGresult0: TextureRect  = $BGcolor2/CONTAINERresult/CONTAINERresult2/IMGresult0

#METİNLER(LANGUAGE_TEXT)
#ADD-SUB-MULTI-DIV
var TXTinput_warning00: String = tr("INPUT_warning00")
var TXTsub_warning00: String = tr("SUB_warning00")
var TXTsub_warning01: String = tr("SUB_warning01")
var TXTdiv_warning00: String = tr("DIV_warning00")
var TXTdiv_warning01: String = tr("DIV_warning01")
var TXTdiv_warning02: String = tr("DIV_warning02")

#ESCAPE ve _on_exit_pressed - menu sahnesini çağırmak için.
var menu = load("res://scn/menu.tscn")
var menu_instance: Control = null

func _ready():
	#BAŞLATILDIĞINDA GERÇEKLEŞECEK OLAYLAR
	#(İlk başlatıldığında tüm görselleri günceller ve "_on_update_process()" son satırında "false" çevrilir.)
	global.UPDATEmode = true
	
	#DİZİLERİMİN ELEMANLARINI BELİRLİYORUM
	IMGinput1 = [IMG0I1, IMG1I1, IMG2I1, IMG3I1, IMG4I1, IMG5I1, IMG6I1, IMG7I1, IMG8I1, IMG9I1]
	IMGinput2 = [IMG0I2, IMG1I2, IMG2I2, IMG3I2, IMG4I2, IMG5I2, IMG6I2, IMG7I2, IMG8I2, IMG9I2]
	IMGresult = [IMGresult1, IMGresult2, IMGresult3, IMGresult4, IMGresult5, IMGresult6, IMGresult7,
	IMGresult8, IMGresult9, IMGresult10, IMGresult11, IMGresult12, IMGresult13, IMGresult14,
	IMGresult15, IMGresult16, IMGresult17, IMGresult18, IMGresult19, IMGresult20]
	
	RESULTtext.text = str(result)
	
	_on_update_text()


func _input(_event):
	if Input.is_action_just_pressed("Escape") and INFO.visible:
		INFO.visible = false
	elif Input.is_action_just_pressed("Escape") and menu_instance == null:
		emit_signal("open_menu", _on_exit_pressed())
	else: pass


func _process(_delta):
	#BİR KOŞULA BAĞLI, ÖZEL BİR FONKSİYONLA GÖRSELLERİ  ve METİNLERİ GÜNCELLİYORUM.
	#Burada sürekli bir fonksiyondaki işlemleri tekrarlamak yerine belli bir durumu kontrol ediyorum.
	#GÜNCELLEME İŞLEMİNİ BİR OLAYA GÖRE BAŞLAT.(menu/itemlist1, değeri true yap.)
	if global.UPDATEmode != false:
		_on_update_process()
	else: pass
		
	if global.SELECTEDlanguage_mode:
		_on_update_text()
	else: pass


#METİNLER(LANGUAGE_TEXT) GÜNCELLE
func _on_update_text():
	#UI elemanları
	TEXTinput1.placeholder_text = tr("INPUT01_text")
	TEXTinput2.placeholder_text = tr("INPUT02_text")
	#ADD-SUB-MULTI-DIV
	TXTinput_warning00 = tr("INPUT_warning00")
	TXTsub_warning00 = tr("SUB_warning00")
	TXTsub_warning01 = tr("SUB_warning01")
	TXTdiv_warning00 = tr("DIV_warning00")
	TXTdiv_warning01 = tr("DIV_warning01")
	TXTdiv_warning02 = tr("DIV_warning02")
	


#GÖRSELLERİ GÜNCELLE
func _on_update_process():
	TEXTUREtype0 = global.TEXTUREtype0
	TEXTUREtype1 = global.TEXTUREtype1
	TEXTUREtype2 = global.TEXTUREtype2
	TEXTUREtype3 = global.TEXTUREtype3
	TEXTUREtype4 = global.TEXTUREtype4
	TEXTUREtype5 = global.TEXTUREtype5
	TEXTUREtype6 = global.TEXTUREtype6
	TEXTUREtype7 = global.TEXTUREtype7
	TEXTUREtype8 = global.TEXTUREtype8
	TEXTUREtype9 = global.TEXTUREtype9
	TEXTUREtype10 = global.TEXTUREtype10
	TEXTUREtype11 = global.TEXTUREtype11
	
	EXITED.texture_normal = TEXTUREtype1
	EXITED.texture_pressed = TEXTUREtype2
	EXITED.texture_hover = TEXTUREtype2
	
	ADD.icon = TEXTUREtype4
	SUB.icon = TEXTUREtype5
	MULTI.icon = TEXTUREtype6
	DIV.icon = TEXTUREtype7
	
	#info
	INFOup.texture_normal = TEXTUREtype11
	#INFOup.texture_pressed = TEXTUREtype8
	#INFOup.texture_hover = TEXTUREtype8
	INFOdown.texture_normal = TEXTUREtype10
	#INFOdown.texture_pressed = TEXTUREtype9
	#INFOdown.texture_hover = TEXTUREtype9
	
	#number
	if UP_DOWNmode != true:
		BTNupdown.icon = TEXTUREtype8
	else:
		BTNupdown.icon = TEXTUREtype9
	
	var a: int = 0
	var b: int = number2
	#SONUCU VE DURUMU TAKİP EDİP, SONUCA GÖRE GÖRSELLERİ GÜNCELLİYORUZ(IMGinput1-IMGinput2-IMGresult-IMGresult0)
	for i in range(min(IMGinput1.size(), IMGinput2.size())):
		#Bu işlem çıkarma mı?
		if SUBTRACTIOANmode != false:
			#sayı2 kadar giriş1 görsellerini I2 olarak güncelliyoruz. sayı1 - sayı2 kadar giriş1 görsellerini I1 olarak güncelliyoruz.
			while a < number2:
				IMGinput1[a].texture = TEXTUREtype2
				print(a)
				a += 1
			while b < number1:
				IMGinput1[b].texture = TEXTUREtype1
				print(b)
				b += 1
			IMGinput2[i].texture = TEXTUREtype2
		else: 
			#Girilen sayılara göre güncelle.
			IMGinput1[i].visible = (i < number1)
			IMGinput1[i].texture = TEXTUREtype1
			IMGinput2[i].visible = (i < number2)
			IMGinput2[i].texture = TEXTUREtype1
			
	#sonuc <= 20 mi?, UYARI GÖRSELİ mi?
	for i in range(IMGresult.size()):
		if result <= 20:
			IMGresult[i].visible = (i < result)
			IMGresult[i].texture = TEXTUREtype1
			if WARNINGmode != false:
				IMGresult0.visible = true
				IMGresult0.texture = TEXTUREtype0
			else:
				IMGresult0.visible = false
					
		else:
			IMGresult[i].visible = false
			IMGresult0.visible = true
			if WARNINGmode != false:
				IMGresult0.texture = TEXTUREtype0
			else:
				IMGresult0.texture = TEXTUREtype3
				
	#GÜNCELLEME İŞLEMİNİ SONLANDIR
	global.UPDATEmode = false
	print("guncelle:", global.UPDATEmode)


func _on_exit_pressed():
	if INFO.visible:
		INFO.visible = false
	else:
		menu_instance = menu.instantiate()
		get_tree().get_root().add_child(menu_instance)


#GİRDİ KONROLLERİ - TEXT
func _on_input_1_text_changed(new_text):
	SUBTRACTIOANmode = false
	WARNINGmode = false
	#GİRDİYİ, SADECE BU FONKSİYON İÇİNDEKİ BİR VERİYE HAPSET
	var SECURITYvalue1: int = 0
	SECURITYvalue1 = int(new_text)
	print("güvenlik_degeri1_güncelendi:", SECURITYvalue1)
	#GİRDİ KOŞULLARI - INPUT1
	if _is_numeric(new_text) and SECURITYvalue1 >= 0 and SECURITYvalue1 <= 10:
		number1 = int(new_text)
		print("ana_deger1_güncellendi:", number1)
		WARNINGtext.text = ""
		
		#Giriş bire bir değer girildi.(10 yazarken1,0 olarak girdiğim için son durumda, true, false oluyor.)
		if INPUT1mode != true || number1 == 10:
			INPUT1mode = true
		else:
			INPUT1mode = false
	else:
		INPUT1mode = false
		SECURITYvalue1 = 0
		print("güvenlik_degeri1_sıfırlandı:", SECURITYvalue1)
		number1 = 0
		print("ana_deger1_sıfırlandı:", number1)
		WARNINGmode = true
		TEXTinput1.text = ""
		WARNINGtext.text = TXTinput_warning00
		
	#HER YENİ GİRDİDE, SONUÇ SIFIRLANIR.
	result = 0
	print("girdi1_icin_sonuc_degeri_sıfırlandı:", result)
	RESULTtext.text = str(0)
	print("girdi1_icin_sonuç_cıktısı_güncellendi:", RESULTtext.text)
	print("giriş1:", INPUT1mode)
	global.UPDATEmode = true


func _on_input_2_text_changed(new_text):
	SUBTRACTIOANmode = false
	WARNINGmode = false
	#GİRDİYİ, SADECE BU FONKSİYON İÇİNDEKİ BİR VERİYE HAPSET
	var SECURITYvalue2: int = 0
	SECURITYvalue2 = int(new_text)
	print("güvenlik_degeri2_güncelendi:", SECURITYvalue2)
	#GİRDİ KOŞULLARI - INPUT2
	if _is_numeric(new_text) and SECURITYvalue2 >= 0 and SECURITYvalue2 <= 10:
		number2 = int(new_text)
		print("ana_deger2_güncellendi:", number2)
		WARNINGtext.text = ""
			
		#Giriş ikiye bir değer girildi.(10 yazarken1,0 olarak girdiğim için son durumda, true, false oluyor.)
		if INPUT2mode != true || number2 == 10:
			INPUT2mode = true
		else:
			INPUT2mode = false
	else:
		INPUT2mode = false
		SECURITYvalue2 = 0
		print("güvenlik_degeri2_sıfırlandı:", SECURITYvalue2)
		number2 = 0
		print("ana_deger2_sıfırlandı:", number2)
		WARNINGmode = true
		TEXTinput2.text = ""
		WARNINGtext.text = TXTinput_warning00
		
	#HER YENİ GİRDİDE, SONUÇ SIFIRLANIR.
	result = 0
	print("girdi2_icin_sonuc_degeri_sıfırlandı:", result)
	RESULTtext.text = str(0)
	print("girdi2_icin_sonuc_cıktısı_güncellendi:", RESULTtext.text)
	global.UPDATEmode = true


#GİRDİ KOŞULLARI - GİRDİ BİR TAMSAYI(int) MI?
func _is_numeric(text):
	return text.is_valid_int()


#MATEMATİK İŞLEMLERİ
func _on_addition_pressed():
	if INPUT1mode != false && INPUT2mode != false:
		SUBTRACTIOANmode = false
		WARNINGmode = false
		result = number1 + number2
		RESULTtext.text = str(result)
		
		WARNINGtext.text = ""
	else:
		WARNINGtext.text = TXTinput_warning00
		WARNINGmode = true
		
	global.UPDATEmode = true


func _on_subtraction_pressed():
	if INPUT1mode != false && INPUT2mode != false:
		SUBTRACTIOANmode = true
		WARNINGmode = false
		if number1 >= number2:
			result = number1 - number2
			RESULTtext.text = str(result)
			WARNINGtext.text = ""
		else:
			result = 0
			print("sonuc_degeri_sıfırlandı:", result)
			RESULTtext.text = str(result)
			WARNINGmode = true
			print("sonuc_cıktısı_güncellendi:", RESULTtext.text)
			WARNINGtext.text = TXTsub_warning00 + "\n" + TXTsub_warning01
			print("-_islemi_icin_uyarı_mesajı!")
	else:
		WARNINGtext.text = TXTinput_warning00
		WARNINGmode = true
		
	global.UPDATEmode = true


func _on_multiplication_pressed():
	if INPUT1mode != false && INPUT2mode != false:
		SUBTRACTIOANmode = false
		WARNINGmode = false
		result = number1 * number2
		RESULTtext.text = str(result)
		
		WARNINGtext.text = ""
	else:
		WARNINGtext.text = TXTinput_warning00
		WARNINGmode = true
		
	global.UPDATEmode = true


func _on_division_pressed():
	if INPUT1mode != false && INPUT2mode != false:
		SUBTRACTIOANmode = false
		WARNINGmode = false
		#Bölmede payda sıfır olamaz.
		if number2 != 0:
			#Pay 0 ise işlemi yap.
			if number1 == 0:
				result = number1 / number2
				RESULTtext.text = str(result)
				WARNINGtext.text = ""
			elif number1 >= number2:
				result = number1 / number2
				RESULTtext.text = str(result)
				WARNINGtext.text = ""
			else:
				result = 0
				print("sonuc_degeri_sıfırlandı:", result)
				RESULTtext.text = str(result)
				print("sonuc_cıktısı_güncellendi:", RESULTtext.text)
				WARNINGmode = true
				WARNINGtext.text = TXTdiv_warning00 + "\n" + TXTdiv_warning01
				print("/_islemi_icin_uyarı_mesajı!")
		else:
			result = 0
			print("sonuc_degeri_sıfırlandı:", result)
			RESULTtext.text = str(result)
			print("sonuc_cıktısı_güncellendi:", RESULTtext.text)
			WARNINGmode = true
			WARNINGtext.text = TXTdiv_warning02
			print("/_islemi_icin_uyarı_mesajı!")
	else:
		WARNINGtext.text = TXTinput_warning00
		WARNINGmode = true
		
	global.UPDATEmode = true


#NUMARA BUTONLARI (Biraz ilkel bir yöntem izlemiş olabilirim.)
func _on_n_0_pressed():
	#Çıkarma işlmeinden sonra yeni değerler girildiğinde  görsel tipini texturetype1 e döndürmek için her girdide çıkarma tuşuna basılmamış ise çıkarma modunu false yaparız.
	SUBTRACTIOANmode = false
	if UP_DOWNmode != true:
		INPUT1mode = true
		TEXTinput1.text = str(0)
		number1 = 0
	else:
		INPUT2mode = true
		TEXTinput2.text = str(0)
		number2 = 0
	#Uyarı görselini sıfırlamak için.
	WARNINGmode = false
	WARNINGtext.text = ""
	global.UPDATEmode = true

func _on_n_1_pressed():
	SUBTRACTIOANmode = false
	if UP_DOWNmode != true:
		INPUT1mode = true
		TEXTinput1.text = str(1)
		number1 = 1
	else:
		INPUT2mode = true
		TEXTinput2.text = str(1)
		number2 = 1
	#Uyarı görselini sıfırlamak için.
	WARNINGmode = false
	WARNINGtext.text = ""
	global.UPDATEmode = true

func _on_n_2_pressed():
	SUBTRACTIOANmode = false
	if UP_DOWNmode != true:
		INPUT1mode = true
		TEXTinput1.text = str(2)
		number1 = 2
	else:
		INPUT2mode = true
		TEXTinput2.text = str(2)
		number2 = 2
	#Uyarı görselini sıfırlamak için.
	WARNINGmode = false
	WARNINGtext.text = ""
	global.UPDATEmode = true

func _on_n_3_pressed():
	SUBTRACTIOANmode = false
	if UP_DOWNmode != true:
		INPUT1mode = true
		TEXTinput1.text = str(3)
		number1 = 3
	else:
		INPUT2mode = true
		TEXTinput2.text = str(3)
		number2 = 3
	#Uyarı görselini sıfırlamak için.
	WARNINGmode = false
	WARNINGtext.text = ""
	global.UPDATEmode = true

func _on_n_4_pressed():
	SUBTRACTIOANmode = false
	if UP_DOWNmode != true:
		INPUT1mode = true
		TEXTinput1.text = str(4)
		number1 = 4
	else:
		INPUT2mode = true
		TEXTinput2.text = str(4)
		number2 = 4
	#Uyarı görselini sıfırlamak için.
	WARNINGmode = false
	WARNINGtext.text = ""
	global.UPDATEmode = true

func _on_n_5_pressed():
	SUBTRACTIOANmode = false
	if UP_DOWNmode != true:
		INPUT1mode = true
		TEXTinput1.text = str(5)
		number1 = 5
	else:
		INPUT2mode = true
		TEXTinput2.text = str(5)
		number2 = 5
	#Uyarı görselini sıfırlamak için.
	WARNINGmode = false
	WARNINGtext.text = ""
	global.UPDATEmode = true

func _on_n_6_pressed():
	SUBTRACTIOANmode = false
	if UP_DOWNmode != true:
		INPUT1mode = true
		TEXTinput1.text = str(6)
		number1 = 6
	else:
		INPUT2mode = true
		TEXTinput2.text = str(6)
		number2 = 6
	#Uyarı görselini sıfırlamak için.
	WARNINGmode = false
	WARNINGtext.text = ""
	global.UPDATEmode = true

func _on_n_7_pressed():
	SUBTRACTIOANmode = false
	if UP_DOWNmode != true:
		INPUT1mode = true
		TEXTinput1.text = str(7)
		number1 = 7
	else:
		INPUT2mode = true
		TEXTinput2.text = str(7)
		number2 = 7
	#Uyarı görselini sıfırlamak için.
	WARNINGmode = false
	WARNINGtext.text = ""
	global.UPDATEmode = true

func _on_n_8_pressed():
	SUBTRACTIOANmode = false
	if UP_DOWNmode != true:
		INPUT1mode = true
		TEXTinput1.text = str(8)
		number1 = 8
	else:
		INPUT2mode = true
		TEXTinput2.text = str(8)
		number2 = 8
	#Uyarı görselini sıfırlamak için.
	WARNINGmode = false
	WARNINGtext.text = ""
	global.UPDATEmode = true

func _on_n_9_pressed():
	SUBTRACTIOANmode = false
	if UP_DOWNmode != true:
		INPUT1mode = true
		TEXTinput1.text = str(9)
		number1 = 9
	else:
		INPUT2mode = true
		TEXTinput2.text = str(9)
		number2 = 9
	#Uyarı görselini sıfırlamak için.
	WARNINGmode = false
	WARNINGtext.text = ""
	global.UPDATEmode = true

func _on_n_10_pressed():
	SUBTRACTIOANmode = false
	if UP_DOWNmode != true:
		INPUT1mode = true
		TEXTinput1.text = str(10)
		number1 = 10
	else:
		INPUT2mode = true
		TEXTinput2.text = str(10)
		number2 = 10
	#Uyarı görselini sıfırlamak için.
	WARNINGmode = false
	WARNINGtext.text = ""
	global.UPDATEmode = true

func _on_up_down_pressed():
	if UP_DOWNmode != true:
		UP_DOWNmode = true
	else:
		UP_DOWNmode = false
	global.UPDATEmode = true


#INFOpanel(butonlardan daha az kullanılıyor.)
func _on_add_info_pressed():
	global.INFOmode = true
	INFO.visible = true
	INFOtitle.texture = TEXTUREtype4
	global.INFOadd_mode = true
	global.INFOsub_mode = false
	global.INFOmulti_mode = false
	global.INFOdiv_mode = false
	
	global.i = 0 #İnfo paneli değişmiş ise indexi sıfırdan al ve ilgili panelin ilk resminden başla göstermeye.
	global.UPDATEmode = true #Başlık resmini güncellemek için.

func _on_sub_info_pressed():
	global.INFOmode = true
	INFO.visible = true
	INFOtitle.texture = TEXTUREtype5
	global.INFOadd_mode = false
	global.INFOsub_mode = true
	global.INFOmulti_mode = false
	global.INFOdiv_mode = false
	
	global.i = 0 #İnfo paneli değişmiş ise indexi sıfırdan al ve ilgili panelin ilk resminden başla göstermeye.
	global.UPDATEmode = true

func _on_multi_info_pressed():
	global.INFOmode = true
	INFO.visible = true
	INFOtitle.texture = TEXTUREtype6
	global.INFOadd_mode = false
	global.INFOsub_mode = false
	global.INFOmulti_mode = true
	global.INFOdiv_mode = false
	
	global.i = 0 #İnfo paneli değişmiş ise index i sıfırdan al ve ilgili panelin ilk resminden başla göstermeye.
	global.UPDATEmode = true

func _on_div_info_pressed():
	global.INFOmode = true
	INFO.visible = true
	INFOtitle.texture = TEXTUREtype7
	global.INFOadd_mode = false
	global.INFOsub_mode = false
	global.INFOmulti_mode = false
	global.INFOdiv_mode = true
	
	global.i = 0 #İnfo paneli değişmiş ise index i sıfırdan al ve seçili panelin ilk resminden başla göstermeye.
	global.UPDATEmode = true
