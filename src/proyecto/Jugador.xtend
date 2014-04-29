package proyecto
class Jugador {
	
	@Property String nombreJugador
	@Property double nivelAdvertencia // me parece que sirve para definir el getter por lo cual no hace falta crear el mensaje
	@Property double contadorPartidos
	@Property int nivelDePrioridad

	
	
	@Property String estiloParaPartido //creo este atributo de tipo string para que cuando se pase 
	//por paramentro a este jugador, tengo que ver de que manera decidir a que tipo de inscripcion entrara, 
	//lo que hago es comparar con el atributo de cada uno de los tipos de suscripcion con un if y
	// entrara en el que cumpla con este requisito
	
	
	def inscribirPartido(Partido partido )
	{
		
		partido.inscribimeAlaLista(this)
		
	}
	
	
	
	new() {
		nivelAdvertencia = 0 //atributo de jugador
		contadorPartidos = 0 //atributo de jugador
		
	}
	
	def getestiloParaPartido( ){
		
		this.estiloParaPartido
		
	}
	
	
	
	def double getNivelAdvertencia() {
		this.nivelAdvertencia
	
	}

	def double getContadorPartidos() {
		this.contadorPartidos
		
		}
	def jugoUnPartido(){ //Aumento en 1 uno si el jugador jugo un partido, esta bien porque el que jugo fue el, el se incrementa
		this.contadorPartidos = this.contadorPartidos + 1
	}

	def faltoAUnPartido(){ //Si falta a un partido el debera anotarse con un nivel de advertencia
		this.nivelAdvertencia = this.nivelAdvertencia +1
	}

}