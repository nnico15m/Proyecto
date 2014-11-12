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

class Solidaria implements TipoDeSuscripcion {
	
	@Property int prioridad = 1

	override prioridad() {
		this.getPrioridad
	}


}


	
