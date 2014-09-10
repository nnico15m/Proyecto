package uqbar.tpFutbol.inscripcion

import java.util.List
import java.util.ArrayList
import uqbar.tpFutbol.domain.Jugador
import uqbar.tpFutbol.domain.Partido
import uqbar.tpFutbol.observers.NotificadorDeAdministradorObserver
import uqbar.tpFutbol.excepciones.NoSePudoAnotarException
import uqbar.tpFutbol.excepciones.ElCupoEstaLlenoException

class InscripcionAbierta implements TipoDeInscripcion{
	
	@Property NotificadorDeAdministradorObserver observer
	@Property List<Jugador> participantes = new ArrayList (10)
	@Property Partido partido
	
	override participantes(){
		this.getParticipantes()
	}
	
	override partido(){
		this.getPartido()
	}
	
	new(Partido unPartido, NotificadorDeAdministradorObserver unObserver){
		this.setPartido(unPartido)
		this.setObserver(unObserver)
	}
	
	override inscribiA(Jugador jugador){ //PREGUNTO SI ESTA EN LA LISTA COMUNIDAD Y SI NO ESTA ANOTADO. SI CUMPLE; ORDENO LA LISTA Y VEO SI HAY LUGAR
		if (this.partido().esDeLaComunidad(jugador) && !this.yaEstaAnotado(jugador)){
			//this.ordenarListaParticipantes()
			this.inscribirSiHayLugarA(jugador)
		}
		else{
			throw new NoSePudoAnotarException
		}
	}
	
	def yaEstaAnotado(Jugador jugador) {
		this.participantes().contains(jugador)
	}
	
	def inscribirSiHayLugarA(Jugador jugador){
		if (this.quedaLugar()) {
			this.anotaA(jugador)
			this.avisarSiYaTenemos10()
		}else{
			//SI LA LISTA ESTA LLENA,SACO EL DE MENOS PRIORIDAD. 
			this.sacarElDeMenosPrioridad(jugador)
			this.anotaA(jugador)
		}
	}
	
	def quedaLugar() {
		this.cantParticipantes < 10
	}
	
	def cantParticipantes() { // mide la longitud de la lista de participantes
		this.participantes().length
	}
	
	def anotaA(Jugador jugador) {
		this.participantes().add(jugador)
		jugador.fuisteAnotadoAlPartido()
	}
	
	def avisarSiYaTenemos10() {
		if (!this.quedaLugar()){
			observer.avisarPartidoConfirmado()
		}
	}
	
	def sacarElDeMenosPrioridad(Jugador jugador){
		if (!this.todosTienenMayorPrioridadQue(jugador)){
			this.encontrarElDeMenosPrioridadParaEliminar()
		}
		else{
			throw new ElCupoEstaLlenoException
			//ESTA LLENO DE ESTANDAR EL PARTIDO
		}
	}
	
	def todosTienenMayorPrioridadQue(Jugador jugador) {
		this.participantes().forall[anotado| anotado.prioridad < jugador.prioridad]
	}
	
	def encontrarElDeMenosPrioridadParaEliminar(){
		val elDeMenosPrioridad = participantes().filter [ prioridad == 2 ||prioridad == 1].sortBy[-prioridad].head
		this.participantes().remove(elDeMenosPrioridad)//FILTRO LA LISTA BUSCANDO SOLIDARIOS Y CONDICIONALES. INVIERTO EL ORDEN, PARA QUE ME QUEDEN LOS CONDICIONALES AL PRINCIPIO Y SACO EL PRIMERO. SI NO HAY CONDICIONALES, VA A SACAR EL SOLIDARIO QUE CORRESPONDA
	}
	
	override darDeBajaJugador(Jugador jugador){
		
		this.avisarSiDejoDeEstarConfirmado()
		this.participantes().remove(jugador)
		
	}
	
	def avisarSiDejoDeEstarConfirmado() {
		if (!this.quedaLugar){
			this.observer.avisarQueSeBajoUno()
		}
	}
	
}