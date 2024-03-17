extends Node
#KAYDEDİLECEK DEĞERLER(2 adet dizi)
#Ana İşlemler için.
var ITEMindex_array: Array
var ITEMtext_array: Array

#SELECTED LANGUAGE INDEX
#Seçil dilin indexini saklayacağım dizi.
var ITEMindex_language: Array
var SELECTEDlanguage_mode: bool = false

#KAYIT DURUMU
var SAVEmode: bool = false
var ERRORmodeS: bool = false
#GÖRSELLERİN GÜNCELLENME DURUMU
var UPDATEmode: bool = false
var EXITEDmode: bool = false
var CREDITSmode: bool = false

#INFO_PANEL DURUMU:
var INFOmode: bool = false #Genel olarak tüm info panellerini iligilendiren işlemler için(güncellmek gibi). 
var INFOadd_mode: bool = false
var INFOsub_mode: bool = false
var INFOmulti_mode: bool = false
var INFOdiv_mode: bool = false

#INFO_PANEL PAGE NUMBER
var i: int = 0 

#Global değişkenlerimi tanımlıyor ve default bir değer veriyorum.
var TEXTUREtype0 = preload("res://content/icon/apple3x3I0.png")
var TEXTUREtype1 = preload("res://content/icon/apple3x3I1.png")
var TEXTUREtype2 = preload("res://content/icon/apple3x3I2.png")
var TEXTUREtype3 = preload("res://content/icon/apple3x3I3.png")
var TEXTUREtype4 = preload("res://content/icon/apple3x3I4.png")
var TEXTUREtype5 = preload("res://content/icon/apple3x3I5.png")
var TEXTUREtype6 = preload("res://content/icon/apple3x3I6.png")
var TEXTUREtype7 = preload("res://content/icon/apple3x3I7.png")
var TEXTUREtype8 = preload("res://content/icon/apple3x3I8.png")
var TEXTUREtype9 = preload("res://content/icon/apple3x3I9.png")
var TEXTUREtype10 = preload("res://content/icon/apple3x3I10.png")
var TEXTUREtype11 = preload("res://content/icon/apple3x3I11.png")


func _ready():
	loadData()
	updateSettings()
	#NOTLAR
	#"return" Eğer bir fonksiyonun içinde bir noktada işlevin sonlanması gerekiyorsa, o değeri döndürerek fonksiyonu sonlandırabilir.
	#"preload" uygulama başlatıldığında, önceden yüklenmesini istersek...
	#"load" uygulama çalıştığı sırada, o an yüklenmesini istersek...
	#!"min()" DAHİL EDİLEN HER DİZİNİN BOYUTLARI AYNI OLMALIDIR!(aksi taktirde küçük olan dizi işlenir.)
	#Dizinin değeri "[0]" gibi bir değer ise "0" a çevirmek için elemanları "[0][0]" alınır.
	#!Sıralamada, sık kullanılan ve kısaları başa koy her işlem için yukarıdan aşağı okuyor. Mantığını kur.(örneğin resim yüklemek.)


func _process(_delta):
	#apply a basıldı mı?
	if SAVEmode != false:
		saveData()
	else: pass
	
	if SELECTEDlanguage_mode:
		updateSettings()
	else: pass


#SEÇİLEN DİLE GÖRE YÜKLENİCEK METİNLERİ SEÇİYORUZ.
func updateSettings():
	if ITEMindex_language.size() > 0:
		match ITEMindex_language[0]:
			0:
				TranslationServer.set_locale("tr")
			1:
				TranslationServer.set_locale("eng")
			2:
				TranslationServer.set_locale("polski")
	else: pass


func saveData():
	var config = ConfigFile.new()
	#DİZİLER
	config.set_value("Arrays", "ITEMindex_array", ITEMindex_array)
	config.set_value("Arrays", "ITEMtext_array", ITEMtext_array)
	config.set_value("Arrays", "ITEMindex_language", ITEMindex_language)
	#TEXTURE
	config.set_value("TEXTUREtype", "TEXTUREtype0", TEXTUREtype0)
	config.set_value("TEXTUREtype", "TEXTUREtype1", TEXTUREtype1)
	config.set_value("TEXTUREtype", "TEXTUREtype2", TEXTUREtype2)
	config.set_value("TEXTUREtype", "TEXTUREtype3", TEXTUREtype3)
	config.set_value("TEXTUREtype", "TEXTUREtype4", TEXTUREtype4)
	config.set_value("TEXTUREtype", "TEXTUREtype5", TEXTUREtype5)
	config.set_value("TEXTUREtype", "TEXTUREtype6", TEXTUREtype6)
	config.set_value("TEXTUREtype", "TEXTUREtype7", TEXTUREtype7)
	config.set_value("TEXTUREtype", "TEXTUREtype8", TEXTUREtype8)
	config.set_value("TEXTUREtype", "TEXTUREtype9", TEXTUREtype9)
	config.set_value("TEXTUREtype", "TEXTUREtype10", TEXTUREtype10)
	config.set_value("TEXTUREtype", "TEXTUREtype11", TEXTUREtype11)
	var error = config.save("user://data.cfg")
	if error != OK:
		ERRORmodeS = true
		print("Kaydetme_hatası:", error)
	else:
		ERRORmodeS = false
		print("Kayıt_yapıldı:", error)
		
	SAVEmode = false


func loadData():
	var config = ConfigFile.new()
	var error = config.load("user://data.cfg")
	if error == OK:
		#DİZİLER
		ITEMindex_array = config.get_value("Arrays", "ITEMindex_array")
		ITEMtext_array = config.get_value("Arrays", "ITEMtext_array")
		ITEMindex_language = config.get_value("Arrays", "ITEMindex_language")
		#TEXTURE
		TEXTUREtype0 = config.get_value("TEXTUREtype", "TEXTUREtype0")
		TEXTUREtype1 = config.get_value("TEXTUREtype", "TEXTUREtype1")
		TEXTUREtype2 = config.get_value("TEXTUREtype", "TEXTUREtype2")
		TEXTUREtype3 = config.get_value("TEXTUREtype", "TEXTUREtype3")
		TEXTUREtype4 = config.get_value("TEXTUREtype", "TEXTUREtype4")
		TEXTUREtype5 = config.get_value("TEXTUREtype", "TEXTUREtype5")
		TEXTUREtype6 = config.get_value("TEXTUREtype", "TEXTUREtype6")
		TEXTUREtype7 = config.get_value("TEXTUREtype", "TEXTUREtype7")
		TEXTUREtype8 = config.get_value("TEXTUREtype", "TEXTUREtype8")
		TEXTUREtype9 = config.get_value("TEXTUREtype", "TEXTUREtype9")
		TEXTUREtype10 = config.get_value("TEXTUREtype", "TEXTUREtype10")
		TEXTUREtype11 = config.get_value("TEXTUREtype", "TEXTUREtype11")
		print("Yukleme_yapıldı:", error)
	else:
		print("Yukleme_hatası:", error)
	
	UPDATEmode = true
