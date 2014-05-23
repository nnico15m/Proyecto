package proyecto

import java.util.ArrayList			
import java.util.List
import observers.NotificadorObserver

class Partido {
	
	@Property FechaPartido fecha
	@Property double hora
	@Property List<Jugador> participantes = new ArrayList (10) //Es la lista de participantes en donde si el jugador que se quisiera anotar fuera estandar, directamente el tipo de inscripcion lo anota aca 									
	@Property List<Jugador> comunidad = new ArrayList(25)
	@Property List<NotificadorObserver> observers = new ArrayList

	

	
	def cantParticipantes() { // mide la longitud de la lista de participantes
		this.participantes.length
	}
	
	def inscribiSiPodesA(Jugador jugador){ //PREGUNTO SI ESTA EN LA LISTA COMUNIDAD Y SI NO ESTA ANOTADO. SI CUMPLE; ORDENO LA LISTA Y VEO SI HAY LUGAR
		if (this.esDeLaComunidad(jugador) && !this.yaEstaAnotado(jugador)){
			this.inscribirSiHayLugarA(jugador)
		//	this.ordenarListaParticipantes()
			jugador.avisarQueSeAnotoASusAmigos()
			
		}
	}
	
//	def ordenarListaParticipantes(){
 //	participantes.sortBy[prioridad]
 //}
	
	def yaEstaAnotado(Jugador jugador) {
		this.participantes.contains(jugador)
	}
	
	def inscribirSiHayLugarA(Jugador jugador){
		if (this.quedaLugar()) {
			this.participantes.add(jugador)
		}else{
			//SI LA LISTA ESTA LLENA,SACO EL DE MENOS PRIORIDAD. 
			this.sacarElDeMenosPrioridad()
			this.participantes.add(jugador)
		}
	}
	
	//Es mejor que sea un mensaje en Jugador
	//def anotarA(Jugador jugador) {
		//participantes.add(jugador)
		//observers.forEach[obs|obs.avisarALosAmigos(this, jugador)]
	//}
	//CUANDO USA ESTO ???
	
	def avisarQueSeAnotoASusAmigos(Jugador jugador) {
		observers.forEach[obs|obs.avisarALosAmigos(this, jugador)]
		
		}
	
	
		def avisarSiYaTenemos10() {
		if (!this.quedaLugar()){
			observers.forEach[obs|obs.avisarPartidoConfirmado(this)]
		}
	}
	
	
	
	def sacarElDeMenosPrioridad(){
		if 
		(!this.sonTodosEstandar()){
			this.encontrarElDeMenosPrioridadParaEliminar()
					
			
			
		
		
		}
		else{
			throw new ElCupoEstaLlenoException
			//ESTA LLENO DE ESTANDAR EL PARTIDO
		}
		}
		
	
	
	def quedaLugar() {
		this.cantParticipantes < 10
	}
	
	def esDeLaComunidad(Jugador jugador){
		comunidad.contains(jugador)
	}
	
		
	def encontrarElDeMenosPrioridadParaEliminar(){
		val elDeMenosPrioridad = participantes.filter [ prioridad == 2 ||prioridad == 1].sortBy[-prioridad].head
		participantes.remove(elDeMenosPrioridad)//FILTRO LA LISTA BUSCANDO SOLIDARIOS Y CONDICIONALES. INVIERTO EL ORDEN, PARA QUE ME QUEDEN LOS CONDICIONALES AL PRINCIPIO Y SACO EL PRIMERO. SI NO HAY CONDICIONALES, VA A SACAR EL SOLIDARIO QUE CORRESPONDA
		
	}
	
	def confirmarEquipo (){
		this.generarFormacion()
		this.darAvisoAlAdministrador()
		this.confirmarEquipos()
	}

	def generarFormacion(){
		
	}
	
	def confirmarEquipos(){
		this.anotarAusentesYSancionarlos()
	}
	
	def anotarAusentesYSancionarlos(){
		var List<Jugador> ausentes
		ausentes.forEach[jug|jug.generarInfraccionParaInfractor()]
		
	}
	
	
//	def void organizarParticipantes(){ // La manera de confirmar equipo seria que los jugadores estandar se agregar automaticamente pero tantos los solidarios y los condicionales se debe verificar primero la cantidad de jugadores inscriptos y acorde de eso agregar los jugadores que poseen cada uno en su lista
//         this.ordenarListaPorTipoSuscripcion()
//    }
	/*
	def inscribirCondicional(Jugador jugador) {
		var Jugador reemplazado = this.obtenerInscriptoCondicional()
		this.cambiar(reemplazado, jugador)
	}
	
//	def inscribirSolidario(Jugador jugador) {
//		var Jugador reemplazado = participantes.findFirst(unJugador| unJugador.prioridad() > 0)
//		this.cambiar(reemplazado, jugador)
//	}
	
	def inscribirEstandarOSolidario(Jugador jugador) {
		var Jugador reemplazado = this.obtenerInscriptoDeMenorPrioridad() //participantes.findFirst(unJugador| unJugador.prioridad() > 0)
		this.cambiar(reemplazado, jugador)
	}
	
	def obtenerInscriptoDeMenorPrioridad() {
		var jugador = this.obtenerInscriptoCondicional()
		if (jugador == null){
			jugador = this.obtenerInscriptoSolidario()
		}
		jugador
	}
	
	def obtenerInscriptoSolidario() {
		participantes.findFirst(unJugador| unJugador.prioridad() == 1)
	}
	
	def obtenerInscriptoCondicional() {
		participantes.findFirst(unJugador| unJugador.prioridad() == 2)
	}
	* 
	*  */
	
	
	def cambiar(Jugador saliente, Jugador entrante) {
		if (saliente != null){
			this.participantes.remove(saliente)
			this.participantes.add(entrante)
		}else{
			throw new ElCupoEstaLlenoException
		}
	}
	
	



	def darDeBajaJugador(Jugador jugador){
		
		observers.forEach[obs|obs.avisarQueSeBajoUno(this,jugador)]
		this.participantes.remove(jugador)
		
		}
	
	def sonTodosEstandar(){
		 val cantidadEstandar =participantes.filter [ jugador | jugador.prioridad == 0].size
 		cantidadEstandar == 10
	
	

 }	//ACA ME QUEDAN DUDAS SI FUNCIONA, ESTA BUSCANDO LOS QUE TIENEN PRIORIDAD 0. SI SON 10 ES QUE SON TODOS ESTANDAR
 
def darAvisoAlAdministrador(){
	//MENSAJE PARA AVISARLE AL OBSERVER
}
 
 def generarInfraccionParaInfractor(Jugador jugador){
		
		
		
		
	}

}
	
    	
	
 
        



