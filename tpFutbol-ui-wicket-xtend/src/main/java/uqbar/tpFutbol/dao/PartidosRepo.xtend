package uqbar.tpFutbol.dao
 import java.util.List
import uqbar.tpFutbol.domain.Partido
import static uqbar.tpFutbol.dao.SessionManager.*
import static org.hibernate.criterion.Restrictions.*
import uqbar.tpFutbol.domain.Jugador
import uqbar.tpFutbol.inscripcion.TipoDeSuscripcion
import uqbar.tpFutbol.inscripcion.Inscripciones

class PartidosRepo {
	def List<Partido> getAll() {
		val query = session.createQuery("from Partido")
		query.list()
	}
	
	
	def List<Jugador> getAllInscriptos(Partido partidoPed){
		val query =  session.createCriteria(Inscripciones)
		val id = partidoPed.getId()
		
	
		
		query.add(eq("partido_id", id))
				query.list()
		
		
	}
	
	
	
	}
	
