package proyecto

class Jugador {
	@Property double nivelAdvertencia
	@Property double contadorPartidos
	
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
def jugoUnPartido(){
	this.contadorPartidos = this.contadorPartidos + 1
}

def faltoAUnPartido(){
	this.nivelAdvertencia = this.nivelAdvertencia +1
}

}