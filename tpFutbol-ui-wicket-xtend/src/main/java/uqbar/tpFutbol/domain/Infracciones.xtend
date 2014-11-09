package uqbar.tpFutbol.domain

import org.uqbar.commons.utils.Observable
import javax.persistence.Entity
import java.io.Serializable
import javax.persistence.Id
import javax.persistence.GeneratedValue
import javax.persistence.ManyToOne

@Entity
@Observable
class Infracciones  implements Serializable{
	//@Property String motivo
	//@Property double duracion
	private Long id
	private String motivo
	private double duracion
	private Jugador jugador
	
	
	@Id
	@GeneratedValue
	def getId() {
		id
	}

	def setId(Long value) {
		id = value
	}
	
	/** Constructor que necesita Hibernate */	
	new() {
		
	}
	
	def getMotivo() {
		motivo
	}

	def void setMotivo(String value) {
		motivo = value
	}
	
	def getDuracion() {
		duracion
	}

	def void setDuracion(String value) {
		duracion= value
	}
	
	@ManyToOne
	def getJugador() {
		jugador
	}
	
	

	def void setJugador(Jugador value) {
		jugador = value
	}
	
	new(String motivo,double duracion){
		this.motivo = motivo
		this.duracion = duracion
		
}



}

