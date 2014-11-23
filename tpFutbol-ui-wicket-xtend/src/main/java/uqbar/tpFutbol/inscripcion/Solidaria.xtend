package uqbar.tpFutbol.inscripcion

import java.io.Serializable
import javax.persistence.Id
import javax.persistence.GeneratedValue
import javax.persistence.OneToMany
import javax.persistence.CascadeType
import uqbar.tpFutbol.domain.Jugador
import javax.persistence.Entity
import org.uqbar.commons.utils.Observable
import javax.persistence.Table
import javax.persistence.DiscriminatorValue
import javax.persistence.Transient

//@Entity
//@Table(name="inscripcion")
//@DiscriminatorValue(value="S")
@Observable

class Solidaria extends TipoDeSuscripcion {
	
	private int prioridad = 1
	private Long id
	
	new() {
	}
	
	
	@Id
	@GeneratedValue
	override getId() {
		id
	}

	override setId(Long value) {
		id = value
	}
	
	@Transient
	override getPrioridad() {
		prioridad
	}
	

	
	override setPrioridad(int n) {
		prioridad = n
	}


}


	
