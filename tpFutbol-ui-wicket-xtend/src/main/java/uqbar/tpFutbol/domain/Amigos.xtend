package uqbar.tpFutbol.domain
import org.uqbar.commons.utils.Observable
import javax.persistence.Entity
import java.io.Serializable
import javax.persistence.Id
import javax.persistence.GeneratedValue
import javax.persistence.ManyToOne
import javax.persistence.Table
import javax.persistence.Column
import javax.persistence.Transient

@Entity

@Table(name="jugadores_jugadores")
@Observable

class Amigos implements Serializable {
	
	
	
	private Long id
	private Jugador jugadores_id
	private Jugador amigos_id


	
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
	@Column(name = "jugadores_id", insertable = false, updatable = false)
	def getJugadores_id() {
		jugadores_id
	}

	def setJugadores_id(Jugador value) {
		jugadores_id = value
	}
	
	@Column(name = "amigos_id", insertable = false, updatable = false)
	def getAmigos_id() {
		amigos_id
	}

	def setAmigos_id(Jugador value) {
		amigos_id = value
	}
	
	
	
	}
	
	