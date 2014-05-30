package builders

import proyecto.Jugadorimport proyecto.TipoDeSuscripcion

class CreadorNuevoJugadorBuilder {
	
	@Property Jugador jugador = new Jugador
	
	def agregarNombre(String nombre){
		this.jugador.nombreJugador = nombre
	}
	
	def agregarFechaDeNacimiento(int dia, int mes, int anio){
		this.jugador.fechaDeNacimiento.dia = dia
		this.jugador.fechaDeNacimiento.mes = mes
		this.jugador.fechaDeNacimiento.anio = anio
	}
	
	def agregarAmigo(Jugador jugador){
		this.jugador.agregaAmigo(jugador)
	}
	
	def agregaMail(String mail){
		this.jugador.mail = mail
	}
	
	def agregaFormaDeInscripcion(TipoDeSuscripcion tipo){
		this.jugador.formaDeInscripcion = tipo
	}
	
	def buildJugador(){
		return jugador	
	}
}