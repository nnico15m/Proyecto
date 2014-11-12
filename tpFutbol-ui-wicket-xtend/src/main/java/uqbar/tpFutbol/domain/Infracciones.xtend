package uqbar.tpFutbol.domain

import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.Id
import javax.persistence.ManyToOne
import org.uqbar.commons.utils.Observable
import java.io.Serializable

@Entity
@Observable
class Infracciones  implements Serializable{
	//@Property String motivo
	//@Property double duracion
	private Long id
	private String motivo
	private double duracion
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
	
	
	def getMotivo() {
		motivo
	}

	def void setMotivo(String value) {
		motivo = value
	}
	
	def getDuracion() {
		duracion
	}

	def void setDuracion(double value) {
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

