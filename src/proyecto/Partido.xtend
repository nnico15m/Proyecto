package proyecto

import java.util.ArrayList			
import java.util.List

class Partido {
	
	@Property FechaPartido fecha
	@Property double hora
	@Property List<Jugador> participantes = new ArrayList //Es la lista de participantes en donde si el jugador que se quisiera anotar fuera estandar, directamente el tipo de inscripcion lo anota aca 									
	@Property List<Jugador> inscriptosSolidarios = new ArrayList //Esta lista es la de solidarios en donde la prioridad de solidarios la tendran de acuerdo como se vayan anotando
	@Property List<Jugador> inscriptosCondicionales = new ArrayList //Esta lista es la de condicionales en donde la prioridad de condicionales la tendran de acuerdo como se vayan anotando
	@Property List<Jugador> comunidad = new ArrayList(50)
	
	
	
	
	
	

 	def quedaLugar() { // verifica que en la lista participantes queda lugar (10 jugadores maximo)
 		this.cantParticipantes() < 10
 	}
	
	def hayLugarParaSolidario() { // Hay lugar para solidarios si la cantidad de particpantes de solidarios y estandares no supera a 10
		(this.cantParticipantes() + this.cantSolidarios()) < 10
	}

	def hayLugarParaCondicional() {
		
		(this.cantParticipantes() + this.cantSolidarios() + this.cantCondicionales()) < 10
	}


	def cantCondicionales() { // mide la longitud de la lista condicionales
		this.inscriptosCondicionales.length
	}
	
	def cantParticipantes() { // mide la longitud de la lista de participantes
		this.participantes.length
	}
	
	def cantSolidarios() { //mide la longitud de la lista de solidarios
		this.inscriptosSolidarios.length
	}
	
	
	
	def void confirmarEquipo(){ // La manera de confirmar equipo seria que los jugadores estandar se agregar automaticamente pero tantos los solidarios y los condicionales se debe verificar primero la cantidad de jugadores inscriptos y acorde de eso agregar los jugadores que poseen cada uno en su lista

		if (this.quedaLugar()) {
			if (this.cantSolidarios() != 0) {
				this.completarConSolidarios()
			} else if (this.cantCondicionales() != 0){
				this.completarConCondicionales()
			}
		}
		if (this.quedaLugar() && this.noHayMasJugadores()) {
			throw new NoJuntamos10ParaElPartidoException
			}
			
		}
	
	def void completarConSolidarios() {
		var ultimoSolidario = this.inscriptosSolidarios.get(cantSolidarios()-1)
		this.participantes.add(ultimoSolidario)
		this.inscriptosSolidarios.remove(ultimoSolidario)
		this.confirmarEquipo()		
	}
	
	def void completarConCondicionales() {
		var ultimoCondicional = this.inscriptosCondicionales.get(cantCondicionales()-1)
		this.participantes.add(ultimoCondicional)
		this.inscriptosCondicionales.remove(ultimoCondicional)
		this.confirmarEquipo()		
	}
	
	
	
	def noHayMasJugadores() {
		(this.cantSolidarios() == 0) && (this.cantCondicionales() == 0)
	}
	

}