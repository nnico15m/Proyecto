package uqbar.tpFutbol.dao

import org.hibernate.Session
import org.hibernate.SessionFactory
import org.hibernate.cfg.Configuration
import uqbar.tpFutbol.domain.Jugador
import uqbar.tpFutbol.domain.Partido
import uqbar.tpFutbol.domain.Infracciones
import uqbar.tpFutbol.domain.Calificaciones
import uqbar.tpFutbol.domain.ComunidadFutbolera
import uqbar.tpFutbol.domain.Amigos
import uqbar.tpFutbol.domain.Pendientes
import uqbar.tpFutbol.domain.Mensajero
import uqbar.tpFutbol.inscripcion.TipoDeSuscripcion
import uqbar.tpFutbol.inscripcion.Estandar
import uqbar.tpFutbol.inscripcion.Condicional
import uqbar.tpFutbol.inscripcion.Solidaria
import uqbar.tpFutbol.division.DividirEquiposCommand
import uqbar.tpFutbol.inscripcion.Inscripciones

class SessionManager {
	static ThreadLocal<Session> tlSession = new ThreadLocal
	static SessionFactory sessionFactory;

	def static getSession(){
		tlSession.get
	}
	
	def static setSession(Session session){
		tlSession.set(session)
	}
	
	def synchronized static SessionFactory getSessionFactory() {
		if (sessionFactory == null) {
			val cfg = new Configuration();
			cfg.configure();
			
			addClasses(cfg)
			
			sessionFactory = cfg.buildSessionFactory();
		}

		return sessionFactory;
	}
	
	def static addClasses(Configuration cfg) {
		cfg.addAnnotatedClass(Jugador)
		cfg.addAnnotatedClass(Partido)
		cfg.addAnnotatedClass(Infracciones)
		cfg.addAnnotatedClass(Calificaciones)
		cfg.addAnnotatedClass(ComunidadFutbolera)
		cfg.addAnnotatedClass(Amigos)
		cfg.addAnnotatedClass(Pendientes)
//		cfg.addAnnotatedClass(Mensajero)
		cfg.addAnnotatedClass(Estandar)
		cfg.addAnnotatedClass(Condicional)
		cfg.addAnnotatedClass(Solidaria)
		cfg.addAnnotatedClass(DividirEquiposCommand)
		cfg.addAnnotatedClass(Inscripciones)
	}
	
	def static startApplication(){
		getSessionFactory
	}
	
	def static closeApplication(){
		if(sessionFactory != null)
			sessionFactory.close	
	}
	
	def static openSession(){
		var Session session = getSession;
		if(session == null){
			session = getSessionFactory().openSession();
			session.beginTransaction();
			tlSession.set(session)
		}
	}
	
	def static commit(){
		if(session != null){
			println("Commit de la transaccion")
			session.flush
			session.transaction.commit
		}				
	}

	def static closeSession(){
		var Session session = getSession;
		if(session != null){
			println("Cierro la transaccion")
			if(session.transaction.active)
				session.transaction.rollback
			session.close
			tlSession.set(null)
		}		
	}	
	
}