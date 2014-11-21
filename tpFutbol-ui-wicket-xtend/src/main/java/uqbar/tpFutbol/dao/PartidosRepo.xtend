package uqbar.tpFutbol.dao
 import java.util.List
import uqbar.tpFutbol.domain.Partido
import static uqbar.tpFutbol.dao.SessionManager.*
import static org.hibernate.criterion.Restrictions.*
import uqbar.tpFutbol.domain.Jugador
import uqbar.tpFutbol.inscripcion.TipoDeSuscripcion

class PartidosRepo {
	def List<Partido> getAll() {
		val query = session.createQuery("from Partido")
		query.list()
	}
	
	
	def List<Jugador> obtenerInscriptos(Partido partidoPed){
		val query =  session.createCriteria(TipoDeSuscripcion)
		val idPartido = partidoPed.id
		
			query.add(eq("idPartido", idPartido))
				query.list()
		
	}
	
	}
	
