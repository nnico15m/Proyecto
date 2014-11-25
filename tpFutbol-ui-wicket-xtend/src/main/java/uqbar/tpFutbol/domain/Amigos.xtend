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

@Table(name="amigos")
@Observable

class Amigos implements Serializable {
	
	
	
	private Long id
	private Jugador jugador_id
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
	@Column(name = "jugador_id", insertable = false, updatable = false)
	def getJugador_id() {
		jugador_id
	}

	def setJugador_id(Jugador value) {
		jugador_id = value
	}
	
	
	@ManyToOne
	def getJugador() {
		jugador
	}
	
	
	
	def void setJugador(Jugador value) {
		jugador = value
	}
	
	
	
	}
	
	