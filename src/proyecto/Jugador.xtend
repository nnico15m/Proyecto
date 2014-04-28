package proyecto
class Jugador {
	@Property double nivelAdvertencia // me parece que sirve para definir el getter por lo cual no hace falta crear el mensaje
	@Property double contadorPartidos
	@Property int nivelDePrioridad
	
	
new() {
		nivelAdvertencia = 0
		contadorPartidos = 0
		
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