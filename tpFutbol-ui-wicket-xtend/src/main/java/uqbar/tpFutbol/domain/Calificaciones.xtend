package uqbar.tpFutbol.domain

import org.uqbar.commons.utils.Observable
import javax.persistence.Entity
import java.io.Serializable
import javax.persistence.Id
import javax.persistence.GeneratedValue
import javax.persistence.ManyToOne

@Entity
@Observable

class Calificaciones implements Serializable {
	
	
	
	private Long id
	private int nota
	private String descripcion
	private int codPartidoJugado
	private Jugador jugador
	//@Property int codPartidoJugado
	//@Property int nota
	//@Property String descripcion
	
	
	@Id
	@GeneratedValue
	def getId() {
		id
	}

	def setId(Long value) {
		id = value
	}
	
	
	def getNota() {
		nota
	}

	def void setNota(int value) {
		nota = value
	}
	def getDescripcion() {
		descripcion
	}

	def void setDescripcion(String value) {
		descripcion = value
	}
	
	def getCodPartidoJugado() {
		codPartidoJugado
	}

	def void setCodPartidoJugado(int value) {
		codPartidoJugado = value
	}
	
	@ManyToOne
	def getJugador() {
		jugador
	}
	
	

	def void setJugador(Jugador value) {
		jugador = value
	}
	
	
	new(int codPartidoJugado,int nota, String descripcion){
		this.codPartidoJugado = codPartidoJugado
		this.nota = nota
		 this.descripcion = descripcion
}
	
	

}