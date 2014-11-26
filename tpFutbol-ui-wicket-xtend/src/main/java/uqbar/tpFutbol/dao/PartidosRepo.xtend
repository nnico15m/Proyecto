package uqbar.tpFutbol.dao
 import java.util.List
import uqbar.tpFutbol.domain.Partido
import static uqbar.tpFutbol.dao.SessionManager.*
import static org.hibernate.criterion.Restrictions.*
import uqbar.tpFutbol.domain.Jugador
import uqbar.tpFutbol.inscripcion.TipoDeSuscripcion
import uqbar.tpFutbol.inscripcion.Inscripciones
import org.hibernate.criterion.Restrictions

class PartidosRepo {
	def List<Partido> getAll() {
		val query = session.createQuery("from Partido")
		query.list()
	}
	
	
	def List<Jugador> getAllInscriptos(Partido partidoPed){
		val query =  session.createCriteria(Jugador)
		val id = partidoPed.getId()
		//query.add( Restrictions.like("partido_id", id)).createCriteria("jugador").list()
		//query.createAlias("inscripcionesP.partido", "partido_id")
		query.createAlias("inscripcionesP", "inscripcion")
		//query.createAlias("inscripcion.partido", "partido")
		//val id = partidoPed.getId()
		
		query.add(eq("inscripcion.partido_id", id))
		
		//query.createAlias("inscripcionesP.jugador_id", "jugador_id")
		//query.add(Restrictions.eq("partido_id", id))
	
		query.list()
		
	}
	
	
	def Partido buscarPart(Partido partidoPed){
		val query = session.createCriteria(Partido)
		val id = partidoPed.id
		if (id != null) {
			query.add(eq("id",id))
		}
		query.list().head
	}
	
	def Jugador encontrarInscripto(Partido partidoPed, Jugador jugadorPed){
		val query =  session.createCriteria(Jugador)
		val id = partidoPed.getId()
		val idJ = jugadorPed.getId()
		query.createAlias("inscripcionesP", "inscripcion")
		query.add(eq("inscripcion.partido_id", id))
		query.add(eq("inscripcion.jugador_id", idJ))
		query.list().head
	}
	
	def List<Partido> obtenerLosQueTienenUnEquipo(){
		val query = session.createCriteria(Partido)
		query.createAlias("inscripcionesP", "inscripcion")
		query.add(eq("inscripcion.equipo_id", 1))or(eq("inscripcion.equipo_id", 2))
		
		

		
		query.list() 
		
	}
	
	def Partido obtenerCriterioDivision(Partido partidoPed){
		val query =  session.createCriteria(Partido)
		val id = partidoPed.getId()
		query.add(eq("id", id))
		query.list().head
		
	}
	
	
	
	}
	
