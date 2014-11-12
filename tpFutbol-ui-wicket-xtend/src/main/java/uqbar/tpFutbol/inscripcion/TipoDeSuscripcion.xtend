package uqbar.tpFutbol.inscripcion

import javax.persistence.Entity
import org.uqbar.commons.utils.Observable
import java.io.Serializable
import uqbar.tpFutbol.domain.Jugador

import javax.persistence.Id
import javax.persistence.GeneratedValue
import javax.persistence.ManyToOne
import javax.persistence.OneToMany
import javax.persistence.CascadeType
import java.util.List
import javax.persistence.Table

@Entity
@Table(name="inscripcion")
@Observable
interface TipoDeSuscripcion  {
	
/* 	private Long id
	private List<Jugador> jugadores
	
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
	
	
	@OneToMany(cascade=CascadeType.ALL, orphanRemoval=true)
	def getJugadores() {
		jugadores
	}
	
	

	def void setJugadores(Jugador value) {
		jugadores = value
	}
	
	*/	
	def  int prioridad()
	
}