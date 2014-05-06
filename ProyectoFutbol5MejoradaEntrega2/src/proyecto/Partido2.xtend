package proyecto

import java.util.ArrayList			
import java.util.List


class Partido2 {
	
	@Property double fecha
	@Property double hora
	@Property List<Jugador2> participantes = new ArrayList //Es la lista de participantes en donde si el jugador que se quisiera anotar fuera estandar, directamente el tipo de inscripcion lo anota aca 									
	@Property List<Jugador2> inscriptosSolidarios = new ArrayList //Esta lista es la de solidarios en donde la prioridad de solidarios la tendran de acuerdo como se vayan anotando
	@Property List<Jugador2> inscriptosCondicionales = new ArrayList //Esta lista es la de condicionales en donde la prioridad de condicionales la tendran de acuerdo como se vayan anotando
	
	
	def inscribimeApartido(Jugador2 jugador2){
		
		jugador2.ComoTeQueresInscribir(this)
		
		
	}


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

}