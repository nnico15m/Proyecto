package uqbar.tpFutbol.domain

import java.util.List
import java.util.ArrayList
import org.uqbar.commons.utils.Observable
import javax.persistence.Entity
import java.io.Serializable
import javax.persistence.OneToMany
import javax.persistence.CascadeType
import javax.persistence.Id
import javax.persistence.GeneratedValue
import javax.persistence.Table

@Entity

@Table(name="Comunidades")
@Observable
class ComunidadFutbolera implements Serializable {
	
	//@Property List<Jugador> miembros = new ArrayList(25)
	//@Property List<Partido> partidos = new ArrayList(25)
	//@Property Administrador admin
	private Long id
	private List<Jugador> jugadores = new ArrayList(25)
	private List<Partido> partidos = new ArrayList(25)
	private Administrador admin
	
	
	@Id
	@GeneratedValue
	def getId() {
		id
	}

	def setId(Long value) {
		id = value
	}
	
	/** Constructor que necesita Hibernate */	
	new() {
		
	}
	 
	//@OneToMany(cascade=CascadeType.ALL, orphanRemoval=true, mappedBy="comunidadfutbolera")
	@OneToMany(cascade=CascadeType.ALL, orphanRemoval=true,  mappedBy="comunidad")
	def getJugadores(){ 
		this.jugadores
	}
	
	def setJugadores(List<Jugador>c) {
		this.jugadores = c
	}
	 
	//@OneToMany(cascade=CascadeType.ALL, orphanRemoval=true, mappedBy="comunidadFutbolera")
	@OneToMany(cascade=CascadeType.ALL, orphanRemoval=true, mappedBy="comunidad")
	def getPartidos(){ 
		this.partidos
	}
	
	
	def setPartidos(List<Partido> c) {
		this.partidos = c
	}
	
	
	def getAdmin(){ 
		this.admin
	}
	
	def setAdmin(Administrador c) {
		this.admin = c
	}
	
	def esDeLaComunidad(Jugador jugador){
		this.jugadores.contains(jugador)
	}
	
	def void sugerirMiembro(Jugador jugador){
		admin.sugerirMiembro(jugador)
	}
	
	def agregarALaComunidad(Jugador jugador) {
		this.jugadores.add(jugador)
		jugador.sosDeLaComunidad(this)
	}
	
	def agregaPartido(Partido partido) {
		this.partidos.add(partido)
		partido.tuComunidadEs(this)
	}
	
}