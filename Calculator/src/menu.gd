extends Control
#SIGNALS
signal exit_menu() #spacial signal name

#SINGLETONS
#Herhangi bir isim değişikliği ve ya dosya değişikliği yaparsam sadece bu değişken ile scriptin tümünde güncellenmesi için.
var global = Global

#DEĞİŞKENLER
#DEĞİŞKENLER(6x6)
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

#DURUM KONTROLLERİ(GLOBAL)
#var UPDATEmode: bool
var DEFAULTmode: bool = false

#DİZİLER
var ITEMtext_array: Array
#3X3
var TEXTURE3x3_array0: Array
var TEXTURE3x3_array1: Array
var TEXTURE3x3_array2: Array
var TEXTURE3x3_array3: Array
var TEXTURE3x3_array4: Array
var TEXTURE3x3_array5: Array
var TEXTURE3x3_array6: Array
var TEXTURE3x3_array7: Array
var TEXTURE3x3_array8: Array
var TEXTURE3x3_array9: Array
var TEXTURE3x3_array10: Array
var TEXTURE3x3_array11: Array
#6X6
var TEXTURE6x6_array0: Array
var TEXTURE6x6_array1: Array
var TEXTURE6x6_array2: Array
var TEXTURE6x6_array3: Array
var TEXTURE6x6_array4: Array
var TEXTURE6x6_array5: Array
var TEXTURE6x6_array6: Array
var TEXTURE6x6_array7: Array
var TEXTURE6x6_array8: Array
var TEXTURE6x6_array9: Array
var TEXTURE6x6_array10: Array
var TEXTURE6x6_array11: Array

#DÜĞÜMLERİM
@onready var OPTIONlanguage: OptionButton = $BGcolor/OptionLanguage
@onready var ITEMlist1: ItemList = $BGcolor/ItemList1
@onready var TEXTUREname: Label = $BGcolor/ImagePanel/TextureText
@onready var WARNINGtext: Label = $BGcolor/ImagePanel/Warning
@onready var ITEMexplanation: Label = $BGcolor/ImagePanel/Explanation
@onready var BTN00info: TextureRect = $BGcolor/BUTTONinfo/Img00
#Menüler
@onready var BTNexit: Button = $BGcolor/BUTTONmenu/Exit
@onready var BTNresume: Button = $BGcolor/BUTTONmenu/Resume
@onready var BTNapply: Button = $BGcolor/BUTTONmenu/Apply
@onready var BTNdefault: Button = $BGcolor/BUTTONmenu/Default
@onready var BTNcredits: Button = $BGcolor/BUTTONmenu/Credits
#6X6
@onready var TEXTURE0: TextureRect = $BGcolor/ImagePanel/CONTAINERtexture/line0/Texture0
@onready var TEXTURE1: TextureRect = $BGcolor/ImagePanel/CONTAINERtexture/line0/Texture1
@onready var TEXTURE2: TextureRect = $BGcolor/ImagePanel/CONTAINERtexture/line0/Texture2
@onready var TEXTURE3: TextureRect = $BGcolor/ImagePanel/CONTAINERtexture/line0/Texture3
@onready var TEXTURE4: TextureRect = $BGcolor/ImagePanel/CONTAINERtexture/line1/Texture0
@onready var TEXTURE5: TextureRect = $BGcolor/ImagePanel/CONTAINERtexture/line1/Texture1
@onready var TEXTURE6: TextureRect = $BGcolor/ImagePanel/CONTAINERtexture/line1/Texture2
@onready var TEXTURE7: TextureRect = $BGcolor/ImagePanel/CONTAINERtexture/line1/Texture3
@onready var TEXTURE8: TextureRect = $BGcolor/ImagePanel/CONTAINERtexture/line2/Texture0
@onready var TEXTURE9: TextureRect = $BGcolor/ImagePanel/CONTAINERtexture/line2/Texture1
@onready var TEXTURE10: TextureRect = $BGcolor/ImagePanel/CONTAINERtexture/line2/Texture2
@onready var TEXTURE11: TextureRect = $BGcolor/ImagePanel/CONTAINERtexture/line2/Texture3

#Credits menu sahnesini çağırmak için.
var credits = load("res://scn/credits.tscn")
var credits_instance: Control = null

#METİNLER(LANGUAGE_TEXT)
#Warning
var TXTsave_successful: String = tr("SAVE_SUCCESSFUL")
var TXTsave_error: String = tr("SAVE_ERROR")

#GÖRSELLER
#Klasörlerimin düzenini ve ya ismini değiştirdiğimde karışıklığı önlemek ve basitce durumu güncellemek için.
var img_res: String = "res://content/icon/"
#3X3"
#0
var IMG3x0_1 = load(img_res + "apple3x3I0.png")
var IMG3x0_2 = load(img_res + "orange3x3I0.png")
var IMG3x0_3 = load(img_res + "cherry3x3I0.png")
var IMG3x0_4 = load(img_res + "strawberry3x3I0.png")
#1
var IMG3x1_1 = load(img_res + "apple3x3I1.png")
var IMG3x1_2 = load(img_res + "orange3x3I1.png")
var IMG3x1_3 = load(img_res + "cherry3x3I1.png")
var IMG3x1_4 = load(img_res + "strawberry3x3I1.png")
#2
var IMG3x2_1 = load(img_res + "apple3x3I2.png")
var IMG3x2_2 = load(img_res + "orange3x3I2.png")
var IMG3x2_3 = load(img_res + "cherry3x3I2.png")
var IMG3x2_4 = load(img_res + "strawberry3x3I2.png")
#3
var IMG3x3_1 = load(img_res + "apple3x3I3.png")
var IMG3x3_2 = load(img_res + "orange3x3I3.png")
var IMG3x3_3 = load(img_res + "cherry3x3I3.png")
var IMG3x3_4 = load(img_res + "strawberry3x3I3.png")
#4
var IMG3x4_1 = load(img_res + "apple3x3I4.png")
var IMG3x4_2 = load(img_res + "orange3x3I4.png")
var IMG3x4_3 = load(img_res + "cherry3x3I4.png")
var IMG3x4_4 = load(img_res + "strawberry3x3I4.png")
#5
var IMG3x5_1 = load(img_res + "apple3x3I5.png")
var IMG3x5_2 = load(img_res + "orange3x3I5.png")
var IMG3x5_3 = load(img_res + "cherry3x3I5.png")
var IMG3x5_4 = load(img_res + "strawberry3x3I5.png")
#6
var IMG3x6_1 = load(img_res + "apple3x3I6.png")
var IMG3x6_2 = load(img_res + "orange3x3I6.png")
var IMG3x6_3 = load(img_res + "cherry3x3I6.png")
var IMG3x6_4 = load(img_res + "strawberry3x3I6.png")
#7
var IMG3x7_1 = load(img_res + "apple3x3I7.png")
var IMG3x7_2 = load(img_res + "orange3x3I7.png")
var IMG3x7_3 = load(img_res + "cherry3x3I7.png")
var IMG3x7_4 = load(img_res + "strawberry3x3I7.png")
#8
var IMG3x8_1 = load(img_res + "apple3x3I8.png")
var IMG3x8_2 = load(img_res + "orange3x3I8.png")
var IMG3x8_3 = load(img_res + "cherry3x3I8.png")
var IMG3x8_4 = load(img_res + "strawberry3x3I8.png")
#9
var IMG3x9_1 = load(img_res + "apple3x3I9.png")
var IMG3x9_2 = load(img_res + "orange3x3I9.png")
var IMG3x9_3 = load(img_res + "cherry3x3I9.png")
var IMG3x9_4 = load(img_res + "strawberry3x3I9.png")
#10
var IMG3x10_1 = load(img_res + "apple3x3I10.png")
var IMG3x10_2 = load(img_res + "orange3x3I10.png")
var IMG3x10_3 = load(img_res + "cherry3x3I10.png")
var IMG3x10_4 = load(img_res + "strawberry3x3I10.png")
#11
var IMG3x11_1 = load(img_res + "apple3x3I11.png")
var IMG3x11_2 = load(img_res + "orange3x3I11.png")
var IMG3x11_3 = load(img_res + "cherry3x3I11.png")
var IMG3x11_4 = load(img_res + "strawberry3x3I11.png")
#6X6
#0
var IMG6x0_1 = load(img_res + "apple6x6I0.png")
var IMG6x0_2 = load(img_res + "orange6x6I0.png")
var IMG6x0_3 = load(img_res + "cherry6x6I0.png")
var IMG6x0_4 = load(img_res + "strawberry6x6I0.png")
#1
var IMG6x1_1 = load(img_res + "apple6x6I1.png")
var IMG6x1_2 = load(img_res + "orange6x6I1.png")
var IMG6x1_3 = load(img_res + "cherry6x6I1.png")
var IMG6x1_4 = load(img_res + "strawberry6x6I1.png")
#2
var IMG6x2_1 = load(img_res + "apple6x6I2.png")
var IMG6x2_2 = load(img_res + "orange6x6I2.png")
var IMG6x2_3 = load(img_res + "cherry6x6I2.png")
var IMG6x2_4 = load(img_res + "strawberry6x6I2.png")
#3
var IMG6x3_1 = load(img_res + "apple6x6I3.png")
var IMG6x3_2 = load(img_res + "orange6x6I3.png")
var IMG6x3_3 = load(img_res + "cherry6x6I3.png")
var IMG6x3_4 = load(img_res + "strawberry6x6I3.png")
#4
var IMG6x4_1 = load(img_res + "apple6x6I4.png")
var IMG6x4_2 = load(img_res + "orange6x6I4.png")
var IMG6x4_3 = load(img_res + "cherry6x6I4.png")
var IMG6x4_4 = load(img_res + "strawberry6x6I4.png")
#5
var IMG6x5_1 = load(img_res + "apple6x6I5.png")
var IMG6x5_2 = load(img_res + "orange6x6I5.png")
var IMG6x5_3 = load(img_res + "cherry6x6I5.png")
var IMG6x5_4 = load(img_res + "strawberry6x6I5.png")
#6
var IMG6x6_1 = load(img_res + "apple6x6I6.png")
var IMG6x6_2 = load(img_res + "orange6x6I6.png")
var IMG6x6_3 = load(img_res + "cherry6x6I6.png")
var IMG6x6_4 = load(img_res + "strawberry6x6I6.png")
#7
var IMG6x7_1 = load(img_res + "apple6x6I7.png")
var IMG6x7_2 = load(img_res + "orange6x6I7.png")
var IMG6x7_3 = load(img_res + "cherry6x6I7.png")
var IMG6x7_4 = load(img_res + "strawberry6x6I7.png")
#8
var IMG6x8_1 = load(img_res + "apple6x6I8.png")
var IMG6x8_2 = load(img_res + "orange6x6I8.png")
var IMG6x8_3 = load(img_res + "cherry6x6I8.png")
var IMG6x8_4 = load(img_res + "strawberry6x6I8.png")
#9
var IMG6x9_1 = load(img_res + "apple6x6I9.png")
var IMG6x9_2 = load(img_res + "orange6x6I9.png")
var IMG6x9_3 = load(img_res + "cherry6x6I9.png")
var IMG6x9_4 = load(img_res + "strawberry6x6I9.png")
#10
var IMG6x10_1 = load(img_res + "apple6x6I10.png")
var IMG6x10_2 = load(img_res + "orange6x6I10.png")
var IMG6x10_3 = load(img_res + "cherry6x6I10.png")
var IMG6x10_4 = load(img_res + "strawberry6x6I10.png")
#11
var IMG6x11_1 = load(img_res + "apple6x6I11.png")
var IMG6x11_2 = load(img_res + "orange6x6I11.png")
var IMG6x11_3 = load(img_res + "cherry6x6I11.png")
var IMG6x11_4 = load(img_res + "strawberry6x6I11.png")


# Called when the node enters the scene tree for the first time.
func _ready():
	#menu sahnesi instance edildiğinde escape tuşuna basılırsa menu sahnesini sil.
	global.EXITEDmode = true
	
	#GÖRSELLERİ DİZİLERE EKLE
	#3X3
	TEXTURE3x3_array0 = [IMG3x0_1, IMG3x0_2, IMG3x0_3, IMG3x0_4]
	TEXTURE3x3_array1 = [IMG3x1_1, IMG3x1_2, IMG3x1_3, IMG3x1_4]
	TEXTURE3x3_array2 = [IMG3x2_1, IMG3x2_2, IMG3x2_3, IMG3x2_4]
	TEXTURE3x3_array3 = [IMG3x3_1, IMG3x3_2, IMG3x3_3, IMG3x3_4]
	TEXTURE3x3_array4 = [IMG3x4_1, IMG3x4_2, IMG3x4_3, IMG3x4_4]
	TEXTURE3x3_array5 = [IMG3x5_1, IMG3x5_2, IMG3x5_3, IMG3x5_4]
	TEXTURE3x3_array6 = [IMG3x6_1, IMG3x6_2, IMG3x6_3, IMG3x6_4]
	TEXTURE3x3_array7 = [IMG3x7_1, IMG3x7_2, IMG3x7_3, IMG3x7_4]
	TEXTURE3x3_array8 = [IMG3x8_1, IMG3x8_2, IMG3x8_3, IMG3x8_4]
	TEXTURE3x3_array9 = [IMG3x9_1, IMG3x9_2, IMG3x9_3, IMG3x9_4]
	TEXTURE3x3_array10 = [IMG3x10_1, IMG3x10_2, IMG3x10_3, IMG3x10_4]
	TEXTURE3x3_array11 = [IMG3x11_1, IMG3x11_2, IMG3x11_3, IMG3x11_4]
	#6X6
	TEXTURE6x6_array0 = [IMG6x0_1, IMG6x0_2, IMG6x0_3, IMG6x0_4]
	TEXTURE6x6_array1 = [IMG6x1_1, IMG6x1_2, IMG6x1_3, IMG6x1_4]
	TEXTURE6x6_array2 = [IMG6x2_1, IMG6x2_2, IMG6x2_3, IMG6x2_4]
	TEXTURE6x6_array3 = [IMG6x3_1, IMG6x3_2, IMG6x3_3, IMG6x3_4]
	TEXTURE6x6_array4 = [IMG6x4_1, IMG6x4_2, IMG6x4_3, IMG6x4_4]
	TEXTURE6x6_array5 = [IMG6x5_1, IMG6x5_2, IMG6x5_3, IMG6x5_4]
	TEXTURE6x6_array6 = [IMG6x6_1, IMG6x6_2, IMG6x6_3, IMG6x6_4]
	TEXTURE6x6_array7 = [IMG6x7_1, IMG6x7_2, IMG6x7_3, IMG6x7_4]
	TEXTURE6x6_array8 = [IMG6x8_1, IMG6x8_2, IMG6x8_3, IMG6x8_4]
	TEXTURE6x6_array9 = [IMG6x9_1, IMG6x9_2, IMG6x9_3, IMG6x9_4]
	TEXTURE6x6_array10 = [IMG6x10_1, IMG6x10_2, IMG6x10_3, IMG6x10_4]
	TEXTURE6x6_array11 = [IMG6x11_1, IMG6x11_2, IMG6x11_3, IMG6x11_4]
	
	#Config dosyamda bir kayıt yoksa uygulama ilk açıldığında varsayılan bir değer verildi.
	#Yapılan işlemlerimin ana referansı Itemindexarrya olduğu için sadece bu diziye varsayılan bir değer vermem şuanlık yeterli.
	if global.ITEMindex_array.size() > 0: pass
	else: 
		global.ITEMindex_array = [[0]]
		#Görsel yükleme işlemini metinlerini referans aldığım için 6x6 görsellerin yüklennmesi için varsayılan bir değer veriyorum.
		global.ITEMtext_array = [0]
	
	on_update_process()
	_on_update_text()


func _input(_event):
	if Input.is_action_just_pressed("Escape") and credits_instance == null:
		emit_signal("exit_menu", _on_resume_pressed())


func _process(_delta):
	if global.SELECTEDlanguage_mode:
		_on_update_text()
	else: pass


#METİNLER(LANGUAGE_TEXT) GÜNCELLE
func _on_update_text():
	#Button
	BTNexit.text = tr("BTNmenu_exit")
	BTNresume.text = tr("BTNmenu_resume")
	BTNapply.text = tr("BTNmenu_apply")
	BTNdefault.text = tr("BTNmenu_default")
	BTNcredits.text = tr("BTNmenu_credits")
	
	#Warning
	TXTsave_successful = tr("SAVE_SUCCESSFUL")
	TXTsave_error = tr("SAVE_ERROR")
	
	#ITEM_NAME
	if global.ITEMindex_array.size() > 0:
		var index: int = global.ITEMindex_array[0][0]
		match index:
			0: 
				TEXTUREname.text = tr("ITEM00_name")
				ITEMexplanation.text = tr("ITEM00_explanation")
			1: 
				TEXTUREname.text = tr("ITEM01_name")
				ITEMexplanation.text = tr("ITEM01_explanation")
			2: 
				TEXTUREname.text = tr("ITEM02_name")
				ITEMexplanation.text = tr("ITEM02_explanation")
			3: 
				TEXTUREname.text = tr("ITEM03_name")
				ITEMexplanation.text = tr("ITEM03_explanation")


#GÖRSELLERİ GÜNCELLE
func on_update_process():
	#Selected Language.Seçili olan ıtem ı güncelle(tekrar seç).
	OPTIONlanguage.select(global.ITEMindex_language[0])
	
	#Menu her açıldığında ve ya bir işlem yapıldığında uyarı panelini sıfırla.
	WARNINGtext.text = ""
	
	if global.ITEMindex_array.size() > 0 and  global.ITEMtext_array.size() > 0:
		if DEFAULTmode != false:
			#Defaulta basıldıysa dizinin 0 ıncı elemanının değerini(get_selected_items()) "[0]" yap.
			global.ITEMindex_array = []
			global.ITEMindex_array.append([0])
		else:
			pass #Default a basılmadıysa burayı geç mevcut  değeri kullan.
		
		#Dizinin değeri "[0]" gibi bir değer ise "0" a çevirmek için elemanları "[0][0]" alınır.
		var index: int = global.ITEMindex_array[0][0]
		#Seçili olan ıtem ı güncelle(tekrar seç).
		ITEMlist1.select(index)
		
		#!"min()" DAHİL EDİLEN HER DİZİNİN BOYUTLARI AYNI OLMALIDIR!(aksi taktirde küçük olan dizi işlenir.)
		for i in range(min(global.ITEMtext_array.size(), TEXTURE6x6_array1.size(), TEXTURE6x6_array2.size())):
			#TEXTUREname.text = global.ITEMtext_array[index] #(Bu işlem _ON_UPDATE_TEXT fonksiyonuna taşındı.)
			
			TEXTUREtype0 = TEXTURE6x6_array0[index]
			TEXTURE0.texture = TEXTUREtype0
			
			TEXTUREtype1 = TEXTURE6x6_array1[index]
			TEXTURE1.texture = TEXTUREtype1
			
			TEXTUREtype2 = TEXTURE6x6_array2[index]
			TEXTURE2.texture = TEXTUREtype2
			
			TEXTUREtype3 = TEXTURE6x6_array3[index]
			TEXTURE3.texture = TEXTUREtype3
			
			TEXTUREtype4 = TEXTURE6x6_array4[index]
			TEXTURE4.texture = TEXTUREtype4
			
			TEXTUREtype5 = TEXTURE6x6_array5[index]
			TEXTURE5.texture = TEXTUREtype5
			
			TEXTUREtype6 = TEXTURE6x6_array6[index]
			TEXTURE6.texture = TEXTUREtype6
			
			TEXTUREtype7 = TEXTURE6x6_array7[index]
			TEXTURE7.texture = TEXTUREtype7
			
			TEXTUREtype8 = TEXTURE6x6_array8[index]
			TEXTURE8.texture = TEXTUREtype8
			
			TEXTUREtype9 = TEXTURE6x6_array9[index]
			TEXTURE9.texture = TEXTUREtype9
			
			TEXTUREtype10 = TEXTURE6x6_array10[index]
			TEXTURE10.texture = TEXTUREtype10
			
			TEXTUREtype11 = TEXTURE6x6_array11[index]
			TEXTURE11.texture = TEXTUREtype11
			
			global.TEXTUREtype0 = TEXTURE3x3_array0[index]
			global.TEXTUREtype1 = TEXTURE3x3_array1[index]
			global.TEXTUREtype2 = TEXTURE3x3_array2[index]
			global.TEXTUREtype3 = TEXTURE3x3_array3[index]
			global.TEXTUREtype4 = TEXTURE3x3_array4[index]
			global.TEXTUREtype5 = TEXTURE3x3_array5[index]
			global.TEXTUREtype6 = TEXTURE3x3_array6[index]
			global.TEXTUREtype7 = TEXTURE3x3_array7[index]
			global.TEXTUREtype8 = TEXTURE3x3_array8[index]
			global.TEXTUREtype9 = TEXTURE3x3_array9[index]
			global.TEXTUREtype10 = TEXTURE3x3_array10[index]
			global.TEXTUREtype11 = TEXTURE3x3_array11[index]
			
	#Buton bilgi panelimdeki resmi seçili olana göre güncelle.
	BTN00info.texture = global.TEXTUREtype2
			
	global.UPDATEmode = true
	print("guncelle_selected:", global.UPDATEmode)
	DEFAULTmode = false


func _on_item_list_1_item_selected(index):
	#Sadece besılan ıtem ı, ilgili diziye eklemek için.
	global.ITEMindex_array = []
	global.ITEMtext_array = [] #Dizyi her seferinde sıfırlamazsam üst üste aynı item seçildiğimde outputta hata veriyor.#Burada ilk işlem sadece yeni değeri tutmak için,  diziyi boş yapmak.
	print("item_index_array_temizlendi", global.ITEMindex_array)
	#Seçilen item ın index ini global bir diziye yazdırıyorum(global olmasa sahneyi sildiğimde değerim resetlenir).
	for i in range(ITEMlist1.get_item_count()):
		print(ITEMlist1.get_item_count())
		var item_index = ITEMlist1.get_selected_items()
		global.ITEMindex_array.append(item_index)
		print(global.ITEMindex_array)
		#seçilen item ın isimlerini yazdırıyorum.(Bu işlem ON_UPDATE_TEXT() taşındı.)
		var item_text = ITEMlist1.get_item_text(index)
		global.ITEMtext_array.append(item_text)
		print(global.ITEMtext_array)
		
	_on_update_text()
	on_update_process()


func _on_default_pressed():
	DEFAULTmode = true
	on_update_process()


func _on_apply_pressed():
	if global.ERRORmodeS != true:
		WARNINGtext.text = TXTsave_successful
	else:
		WARNINGtext.label_settings.font_color = Color("#921728")
		WARNINGtext.text = TXTsave_error
		
	global.SAVEmode = true


func _on_resume_pressed():
	global.EXITEDmode = false #menu sahnesi silindikten sonra escape tuşuma basılırsa menu sahnesini instance et.
	self.queue_free() #self, bu fonksiyonu içinde bulunduran sahneyi sil.


func _on_exit_pressed():
	get_tree().quit()


func _on_option_button_item_selected(_index):
	global.SELECTEDlanguage_mode = true
	
	global.ITEMindex_language = [] #Burada ilk işlem sadece yeni değeri tutmak için,  diziyi boş yapmak. Amaç sadece 1 eleman tutmak.
	var item_index = OPTIONlanguage.get_selected_id()
	global.ITEMindex_language.append(item_index)
	print("selected_lng:", global.ITEMindex_language)


func _on_credits_pressed():
	global.CREDITSmode = true
	credits_instance = credits.instantiate()
	get_tree().get_root().add_child(credits_instance)
