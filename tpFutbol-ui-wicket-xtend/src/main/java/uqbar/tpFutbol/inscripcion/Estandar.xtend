package uqbar.tpFutbol.inscripcion

import java.io.Serializable
import javax.persistence.Id
import javax.persistence.GeneratedValue
import javax.persistence.OneToMany
import javax.persistence.CascadeType
import uqbar.tpFutbol.domain.Jugador
import javax.persistence.Entity
import org.uqbar.commons.utils.Observable

@Entity
@Observable

class Estandar implements TipoDeSuscripcion {
	
	@Property int prioridad = 0
	


	
	
	override prioridad() {
		this.getPrioridad
	}
	
		
}
	
	
//AHORA EL MESNSAJE ES POLIMORFICO A LAS 3 CLASES, LO NICO QUE VARIA ES LA PRIORIDAD. QUIZAS SE PODRIA REDUCIR MAS PARA NO REPETIR CODIGO