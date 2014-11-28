package uqbar.tpFutbol.dao
 import java.util.List
import uqbar.tpFutbol.domain.Partido
import static uqbar.tpFutbol.dao.SessionManager.*
import static org.hibernate.criterion.Restrictions.*
import uqbar.tpFutbol.domain.Jugador
import uqbar.tpFutbol.inscripcion.TipoDeSuscripcion
import uqbar.tpFutbol.inscripcion.Inscripciones
import org.hibernate.criterion.Restrictions
import java.util.Set

class PartidosRepo {
	def List<Partido> getAll() {
		val query = session.createQuery("from Partido")
		query.list()
	}
	
	
	def List<Jugador> getAllInscriptos(Partido partidoPed){
		val query =  session.createCriteria(Jugador)
		val id = partidoPed.getId()
		query.createAlias("inscripcionesP", "inscripcion")
		query.add(eq("inscripcion.partido_id", id))
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
	
	def Set<Partido> obtenerLosQueTienenUnEquipo(){
		val query = session.createCriteria(Partido)
		query.createAlias("inscripcionesP", "inscripcion")
		query.add(eq("inscripcion.equipo_id", 1))or(eq("inscripcion.equipo_id", 2))
		
		

		
		query.list().toSet
		
	}
	
	def Partido obtenerCriterioDivision(Partido partidoPed){
		val query =  session.createCriteria(Partido)
		val id = partidoPed.getId()
		query.add(eq("id", id))
		query.list().head
		
	}
	
	def Partido obtenerCriterioOrd(Partido partidoPed){
		val query =  session.createCriteria(Partido)
		val id = partidoPed.getId()
		query.add(eq("id", id))
		query.list().head
		
	}
	
	
	
	}
	
