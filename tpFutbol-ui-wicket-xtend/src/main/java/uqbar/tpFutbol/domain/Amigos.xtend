package uqbar.tpFutbol.domain
import org.uqbar.commons.utils.Observable
import javax.persistence.Entity
import java.io.Serializable
import javax.persistence.Id
import javax.persistence.GeneratedValue
import javax.persistence.ManyToOne
import javax.persistence.Table

@Entity

@Table(name="amigos")
@Observable

class Amigos implements Serializable {
	
	
	
	private Long id
	private Jugador jugador1
	private Jugador jugador2

	
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
	
	def getJugador1() {
		jugador1
	}
	
	

	def void setJugador1(Jugador value) {
		jugador1 = value
	}
	def getJugador2() {
		jugador2
	}
	
	

	def void setJugador2(Jugador value) {
		jugador2 = value
	}

	
	
	

	
}