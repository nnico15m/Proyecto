package uqbar.tpFutbol.domain

import org.uqbar.commons.utils.Observable
import javax.persistence.Entity
import java.io.Serializable
import javax.persistence.Id
import javax.persistence.GeneratedValue
import javax.persistence.ManyToOne

@Entity
@Observable


class Mensajero implements Serializable {
	
	private Long id
	
	
	@Id
	@GeneratedValue
	def getId() {
		id
	}

	def setId(Long value) {
		id = value
	}
	
	new() {
	}
}