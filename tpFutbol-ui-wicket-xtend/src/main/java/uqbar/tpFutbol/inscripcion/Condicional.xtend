package uqbar.tpFutbol.inscripcion
import java.io.Serializable
import javax.persistence.Id
import javax.persistence.GeneratedValue
import javax.persistence.OneToMany
import javax.persistence.CascadeType
import uqbar.tpFutbol.domain.Jugador
import org.uqbar.commons.utils.Observable
import javax.persistence.Entity

@Entity
@Observable

class Condicional implements TipoDeSuscripcion {
	
	@Property int prioridad = 2
	
		
	
	
	override prioridad() {
		this.getPrioridad
	}
			
} 
	
	
	
	
