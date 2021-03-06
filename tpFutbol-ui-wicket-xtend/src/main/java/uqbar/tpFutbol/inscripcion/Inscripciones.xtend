package uqbar.tpFutbol.inscripcion 
import javax.persistence.Entity
import org.uqbar.commons.utils.Observable
import java.io.Serializable
import javax.persistence.GeneratedValue
import javax.persistence.Id
import javax.persistence.Table
import javax.persistence.Column
import javax.persistence.Transient
import uqbar.tpFutbol.domain.Partido
import uqbar.tpFutbol.domain.Jugador
import javax.persistence.ManyToOne
import java.util.List
import uqbar.tpFutbol.dao.PartidosRepo
import java.util.ArrayList
import uqbar.tpFutbol.dao.SessionManager

@Entity
@Observable
@Table(name="inscripciones") 
class Inscripciones  implements Serializable{
	 
 	private Long id
 	private Partido partido
 	private Jugador jugador
 	private Long idTipoeInscripcion
 	private Long partido_id
 	private Long jugador_id
 	private int equipo_id
	private List<Jugador> participantes = new ArrayList (10)
	
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
	@ManyToOne
	def getPartido() {
		partido
	}

	def setPartido(Partido value) {
		partido = value
	}
	@ManyToOne
	def getJugador() {
		jugador
	}

	def setJugador(Jugador value) {
		jugador = value
	}
	@Column(name = "jugador_id", insertable = false, updatable = false)
	def getJugador_id() {
		jugador_id
	}

	def setJugador_id(Long value) {
		jugador_id = value
	}
	
	@Column(name = "partido_id", insertable = false, updatable = false)
	def getPartido_id() {
		partido_id
	}

	def setPartido_id(Long value) {
		partido_id = value
	}
	
	
	@Transient
	@Column(name="inscripcion_id")
	def getIdTipoeInscripcion() {
		idTipoeInscripcion
	}

	def setIdTipoeInscripcion(Long value) {
		idTipoeInscripcion = value
	}
	
	@Column(name = "equipo_id")
	def getEquipo_id() {
		equipo_id
	}

	def setEquipo_id(int value) {
		equipo_id = value
	}
	
	
	
	def List<String> nombreJug(){
		
		val inscriptos = new PartidosRepo().getAllInscriptos(partido)
		inscriptos.map[nombreJugador]
	 }
	 
	def actualizateEnLaBase(int numero){
		this.setEquipo_id(numero)
		
		SessionManager::getSession().saveOrUpdate(this)
		SessionManager::commit()
		SessionManager::closeSession		
		SessionManager::openSession

			
		}
	}
	 
	 