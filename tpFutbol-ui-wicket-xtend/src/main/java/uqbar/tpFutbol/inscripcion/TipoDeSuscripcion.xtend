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
import javax.persistence.Inheritance
import javax.persistence.InheritanceType
import javax.persistence.DiscriminatorColumn
import javax.persistence.DiscriminatorValue
import javax.persistence.DiscriminatorType

@Entity
@Table(name="inscripciones")
@Observable
abstract class TipoDeSuscripcion  implements Serializable{
	 
 	private Long id
 	private Long idPartido
//	private List<Jugador> jugadores
	
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
	
	def getIdPartido() {
		idPartido
	}

	def setIdPartido(Long value) {
		idPartido = value
	}
	
	
	
/* 
	@OneToMany(cascade=CascadeType.ALL, orphanRemoval=true)
	def getJugadores() {
		jugadores
	}
	
	

	def void setJugadores(List<Jugador> value) {
		jugadores = value
	}
*/	

	def  int getPrioridad()
	def  int setPrioridad(int n)
	
}