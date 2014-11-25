package uqbar.tpFutbol.dao

import java.util.List


import static org.hibernate.criterion.Restrictions.*
import static uqbar.tpFutbol.dao.SessionManager.*
import uqbar.tpFutbol.domain.Jugador
import java.util.Date
import uqbar.tpFutbol.domain.Infracciones
import uqbar.tpFutbol.domain.Amigos
import uqbar.tpFutbol.domain.Partido
import uqbar.tpFutbol.inscripcion.TipoDeSuscripcion
import uqbar.tpFutbol.inscripcion.Inscripciones
import org.hibernate.criterion.Restrictions

class JugadoresRepo {

	def List<Jugador> buscarJug(String nombre, String apodo, Date fecha, int desdeHandicap, int hastaHandicap,int desdePromUltPart,int hastaPromUltPart, boolean tieneInfracciones) {
		
		
		val query = session.createCriteria(Jugador)
 		if (nombre != null) {
			query.add(like("nombreJugador", "%" + nombre + "%"))
		}
		if (apodo != null) {
			query.add(like("apodo", "%" + apodo+ "%"))
		}
		if (fecha != null) {
			query.add(eq("fechaDeNacimiento", fecha))
		}
		if ((desdeHandicap != 0)&&(hastaHandicap != 0)) {
			query.add(between("nivelDeJuego", desdeHandicap, hastaHandicap))
		}
		if ((desdePromUltPart != 0)&&(hastaPromUltPart != 0)) {
			query.add(between("promedioCalificacionesUltPart", desdePromUltPart,hastaPromUltPart))
		}
		
		if (tieneInfracciones != false) {
			
			query.createAlias("infracciones", "infraccion")
			query.add(isNotNull("infraccion.jugador_id"))
			
		}
		
		query.list()
	}
	
	def List<Jugador> buscarDatos(Jugador jugadorPedido) {
		val query =  session.createCriteria(Jugador)
		val nombreJugador = jugadorPedido.nombreJugador
		val apodo = jugadorPedido.apodo
		val nivelDeJuego= jugadorPedido.nivelDeJuego
		val fechaDeNacimiento = jugadorPedido.fechaDeNacimiento

		
		if (nombreJugador != null) {
			query.add(like("nombreJugador", "%" + nombreJugador + "%"))
		}
		if (apodo != null) {
			query.add(like("apodo", "%" + apodo+ "%"))
		}
		if (fechaDeNacimiento != null) {
			query.add(eq("fechaDeNacimiento", fechaDeNacimiento))
		}
		if (nivelDeJuego != 0) {
			query.add(eq("nivelDeJuego", nivelDeJuego))
		}
		
		
		
		
		
		
		query.list()
		
	
	}
	
	def List<Infracciones> buscarInfracciones(Jugador jugadorPedido) {
		val query =  session.createCriteria(Infracciones)
		val id =  jugadorPedido.getId()
			query.add(eq("jugador_id", id))
				query.list()
				
	}
	
	def List<Jugador> buscarAmigos(Jugador jugadorPedido) {
		val query = session.createCriteria(Amigos)
		val idJugador = jugadorPedido.id
 		if (idJugador != null) {
			query.add(eq("jugadores_id", "%" + idJugador + "%"))
		}
		query.list()
	}
	
	def List<Jugador> getAll() {
		val query =  session.createQuery("from Jugador")
		query.list()
		
	
	}
	
	def Inscripciones actualizarEquipo(Jugador jugadorPed, Partido partidoPed ,int numero){
		val query =  session.createCriteria(Inscripciones)
		val id = partidoPed.getId()
		val idJ = jugadorPed.getId()
		query.add(Restrictions.eq("partido_id", id)).add(Restrictions.eq("jugador_id", idJ))
		query.list().head
		
	}
	
}


