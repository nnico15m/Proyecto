package uqbar.tpFutbol.inscripcion


import java.io.Serializable
import uqbar.tpFutbol.domain.Jugador

import javax.persistence.Id
import javax.persistence.GeneratedValue



abstract class TipoDeSuscripcion  implements Serializable{
	 
 	private Long id
 	private Long idPartido
 	private Long idJugador
 	private Long idTipoeInscripcion
//	private List<Jugador> jugadores
	
	new() {
	}
	
	
	@Id
	@GeneratedValue
	def getId() {
		id
	}

	def setId(Long value) {
		id = value
	}
	
	def getIdPartido() {
		idPartido
	}

	def setIdPartido(Long value) {
		idPartido = value
	}
	
	def getIdJugador() {
		idJugador
	}

	def setIdJugador(Long value) {
		idJugador = value
	}
	
	def getIdTipoeInscripcion() {
		idTipoeInscripcion
	}

	def setIdTipoeInscripcion(Long value) {
		idTipoeInscripcion = value
	}
	
	
	
/* 
	@OneToMany(cascade=CascadeType.ALL, orphanRemoval=true)
	def getJugadores() {
		jugadores
	}
	
	

	def void setJugadores(List<Jugador> value) {
		jugadores = value
	}
*/	

	def  int getPrioridad()
	def  int setPrioridad(int n)
	
}