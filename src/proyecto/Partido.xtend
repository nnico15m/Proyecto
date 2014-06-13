package proyecto

import java.util.ArrayList			
import java.util.List
import observers.NotificadorDeAdministradorObserver
import excepciones.NoSePudoAnotarException
import excepciones.ElCupoEstaLlenoException
import commands.OrganizadorCommand
import commands.OrdenamientoPorHandicap

class Partido  {
	
	@Property Fecha fecha
	@Property double hora
	@Property List<Jugador> participantes = new ArrayList (10) //Es la lista de participantes en donde si el jugador que se quisiera anotar fuera estandar, directamente el tipo de inscripcion lo anota aca 									
	@Property ComunidadFutbolera comunidad
	@Property NotificadorDeAdministradorObserver observer
	@Property OrganizadorCommand criterioDeOrdenamiento 
	@Property int codPartido



	
	def cantParticipantes() { // mide la longitud de la lista de participantes
		this.participantes.length
	}
	
	// ESTE ES EL MÉTODO QUE USAMOS PARA INSCRIBIR JUGADORES		
	def void inscribiSiPodesA(Jugador jugador){ //PREGUNTO SI ESTA EN LA LISTA COMUNIDAD Y SI NO ESTA ANOTADO. SI CUMPLE; ORDENO LA LISTA Y VEO SI HAY LUGAR
		if (this.esDeLaComunidad(jugador) && !this.yaEstaAnotado(jugador)){
			//this.ordenarListaParticipantes()
			this.inscribirSiHayLugarA(jugador)
				
		}
		else{
			throw new NoSePudoAnotarException
		}
	}
	
def ordenarListaParticipantes(){		//¿NOS SIRVE DE ALGO ORDENAR LA LISTA?
 participantes.sortBy[prioridad]
 }

	def yaEstaAnotado(Jugador jugador) {
		this.participantes.contains(jugador)
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
	
	def anotaA(Jugador jugador) {
		this.participantes.add(jugador)
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
		this.participantes.forall[anotado| anotado.prioridad < jugador.prioridad]
	}
		
	
	def quedaLugar() {
		this.cantParticipantes < 10
	}
	
	def esDeLaComunidad(Jugador jugador){
		this.comunidad.esDeLaComunidad(jugador)
	}
	
		
	def encontrarElDeMenosPrioridadParaEliminar(){
		val elDeMenosPrioridad = participantes.filter [ prioridad == 2 ||prioridad == 1].sortBy[-prioridad].head
		participantes.remove(elDeMenosPrioridad)//FILTRO LA LISTA BUSCANDO SOLIDARIOS Y CONDICIONALES. INVIERTO EL ORDEN, PARA QUE ME QUEDEN LOS CONDICIONALES AL PRINCIPIO Y SACO EL PRIMERO. SI NO HAY CONDICIONALES, VA A SACAR EL SOLIDARIO QUE CORRESPONDA
		
	}
	
/*	def confirmarEquipo (){						ESTOS 5 MÉTODOS SON INTERESANTES, PERO AHORA NO LOS NECESITAMOS [v]
		this.generarFormacion()
		this.darAvisoAlAdministrador()			(NO SABEMOS EXACTAMENTE CÓMO DEBEN FUNCIONAR)
		this.confirmarEquipos()
	}
	
	def darAvisoAlAdministrador() {
	}

	def generarFormacion(){
		
	}
	
	def confirmarEquipos(){
		this.anotarAusentesYSancionarlos()
	}
	
	def anotarAusentesYSancionarlos(){
		var List<Jugador> ausentes
		ausentes.forEach[jug|jug.generarInfraccionParaInfractor()]												[^]
		
	}
*/	





	
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
	
	
/*	def cambiar(Jugador saliente, Jugador entrante) {   			NO ESTAMOS USANDO ESTE MÉTODO
		if (saliente != null){
			this.participantes.remove(saliente)
			this.participantes.add(entrante)
		}else{
			throw new ElCupoEstaLlenoException
		}
	}
*/	
	def dameDeBaja(Jugador jugador){
		
		this.darDeBajaJugador(jugador)
		this.generarInfraccionParaInfractor(jugador) 
		
	}
	
	def reemplazameCon(Jugador jugador, Jugador reemplazante){
		
		this.darDeBajaJugador(jugador)
		this.inscribiSiPodesA(reemplazante)
		
	}

	def darDeBajaJugador(Jugador jugador){
		
		this.avisarSiDejoDeEstarConfirmado()
		this.participantes.remove(jugador)
		
	}
	
	def avisarSiDejoDeEstarConfirmado() {
		if (!this.quedaLugar){
			observer.avisarQueSeBajoUno()
		}
	}
	
/* 	def sonTodosEstandar(){
		val cantidadEstandar = participantes.filter [ jugador | jugador.prioridad == 0].size
 		cantidadEstandar == 10
	
	}	//ACA ME QUEDAN DUDAS SI FUNCIONA, ESTA BUSCANDO LOS QUE TIENEN PRIORIDAD 0. SI SON 10 ES QUE SON TODOS ESTANDAR
*/
 
 	def generarInfraccionParaInfractor(Jugador jugador){
		
		var infraccion = new Infracciones
		jugador.sancionateCon(infraccion)
		
	}
	
	def tuComunidadEs(ComunidadFutbolera comunidad){
		this.comunidad = comunidad
	}
	
	def seJugoElPartido(){
		this.seCalificanLosJugadoresDespuesDeJugarElPartido()	
	}
	
	def seCalificanLosJugadoresDespuesDeJugarElPartido(){
		this.participantes.forEach[jug|jug.calificarYCriticarACadaJug(participantes)]
	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
							//Entrega 4 //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////							
							
	def ordenarLaListaPorCriterio(OrganizadorCommand criterio,int n) {
		
		this.setCriterioDeOrdenamiento(criterio) // guardo el criterio por si me lo piden
		//this.criterioDeOrdenamiento.ordenarLaLista(this)
		criterio.ordenarLaLista(this,n)
		
	
	}
	
	def ordenarLaListaPorPromedioDeVariosCriterios(Partido partidoAOrganizar,List<OrganizadorCommand> listaCriterios){
		
	}
	
	//def ordenaLista() {
		
		// participantes.sortBy[nivelDeJuego]
		
	//	participantes.forEach[jugador|jugador.listaCriterioDelJugador.add(jugador.nivelDeJuego)]
		
//	}
	
//	def ordenarListaPorPromedioCalificacionesUltimoPartido(){
		
//	}
	
//




}
	
    	
	
 
        



