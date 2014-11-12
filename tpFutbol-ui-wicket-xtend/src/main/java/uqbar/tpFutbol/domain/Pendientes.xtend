package uqbar.tpFutbol.domain

import org.uqbar.commons.utils.Observable
import javax.persistence.Entity
import java.io.Serializable
import javax.persistence.Id
import javax.persistence.GeneratedValue
import javax.persistence.ManyToOne

@Entity
@Observable

class Pendientes implements Serializable {
	
	private Long id
	private Jugador jugador
	
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
	
	
	@ManyToOne 
	def getJugador() {
		jugador
	}
	
	

	def void setJugador(Jugador value) {
		jugador = value
	}
	
	
}