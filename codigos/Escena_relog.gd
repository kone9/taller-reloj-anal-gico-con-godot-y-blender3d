extends Spatial

var tiempoSistema
var hora
var minutos
var segundos


func _process(delta):#esta funcion se ejecuta 60 veces por segundo
	tiempoSistema = OS.get_time()#toma el tiempo del sistema
	hora = tiempoSistema.hour#toma la hora del sistema
	minutos = tiempoSistema.minute#toma los minutos de sistema
	segundos = tiempoSistema.second#toma los sgegundos del sistema
	
	print(hora,":",minutos,":",segundos)
	
	#minutos y segundos
	#60 * x = 360
	#x = 360 / 60
	"""x = 6"""
	#60 * 6 = 360 por lo tanto tenemos que multiplicar el valor de los minutos y segundos por 6
	
	#horas
	#12 * x = 360
	#x = 360 / 12
	"""x = 30"""
	#12 * 30 = 360 por lo tanto tenemos que multiplicar el valor de la hora por 30
	
	#$segundos.rotation_degrees.y = -segundos * 6 #rota la aguja segundos
	#$minutos.rotation_degrees.y = -minutos * 6 #rota la aguja minutos
	#$horas.rotation_degrees.y = -hora * 30 #rota la aguja horas
	
	$segundos.rotation_degrees.y = - 1* ((segundos * 6) - 360)
	$minutos.rotation_degrees.y = - 1* ((minutos * 6) + (segundos / 10) - 360)
	$horas.rotation_degrees.y = - 1* ((hora * 30) + (minutos / 2) + (segundos / 120) - 360)
	
	