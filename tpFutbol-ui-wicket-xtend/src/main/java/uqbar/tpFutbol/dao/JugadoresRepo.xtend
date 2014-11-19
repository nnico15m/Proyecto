package uqbar.tpFutbol.dao

import java.util.List


import static org.hibernate.criterion.Restrictions.*
import static uqbar.tpFutbol.dao.SessionManager.*
import uqbar.tpFutbol.domain.Jugador
import java.util.Date

class JugadoresRepo {

	def List<Jugador> buscar(String nombre, String apodo, Date fecha, int desdeHandicap, int hastaHandicap,int desdePromUltPart,int hastaPromUltPart, boolean tieneInfracciones) {
		
		
		val query = session.createCriteria(Jugador)
 		if (nombre != null) {
			query.add(like("nombre", "%" + nombre + "%"))
		}
		if (apodo != null) {
			query.add(like("apodo", "%" + apodo+ "%"))
		}
		if (fecha != null) {
			query.add(eq("fecha", fecha))
		}
		if (desdeHandicap != 0) {
			query.add(eq("desdeHandicap", desdeHandicap))
		}
		if (hastaHandicap != 0) {
			query.add(eq("hastaHandicap", hastaHandicap))
		}
		if (desdePromUltPart != 0) {
			query.add(eq("desdePromUltPart", desdePromUltPart))
		}
		if (hastaPromUltPart != 0) {
			query.add(eq("hastaPromUltPart", hastaPromUltPart))
		}
		
		if (tieneInfracciones != false) {
			query.add(eq("tieneInfracciones", tieneInfracciones))
		}
		
		query.list()
	}
	
	def List<Jugador> getAll() {
		val query =  session.createQuery("from Jugadores")
		query.list()
	}
}


