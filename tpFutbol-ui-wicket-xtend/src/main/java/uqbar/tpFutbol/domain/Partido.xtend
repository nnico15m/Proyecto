package uqbar.tpFutbol.domain

import java.util.ArrayList			
import java.util.List

import uqbar.tpFutbol.inscripcion.TipoDeInscripcion
import uqbar.tpFutbol.ordenamiento.OrganizadorCommand
import uqbar.tpFutbol.inscripcion.InscripcionCerrada
import uqbar.tpFutbol.division.DividirEquiposCommand
import org.uqbar.commons.model.Entity

class Partido extends Entity {
	
	@Property Fecha fecha
	@Property double hora
	@Property ComunidadFutbolera comunidad
	@Property OrganizadorCommand criterioDeOrdenamiento
	@Property DividirEquiposCommand criterioDeDivision
	@Property int codPartido
	@Property List<Jugador> equipo1 = new ArrayList (5)
	@Property List<Jugador> equipo2 = new ArrayList (5)
	@Property TipoDeInscripcion inscripciones
	
	

//es una prueba
	def participantes(){
		this.inscripciones.participantes
	}
	
	def nombreParticipantes(){
		this.inscripciones.nombreParticipantes
	}
	
	def nombreJugadorEquipo1(){
		this.equipo1.map[nombreJugador]
	}
	
	def nombreJugadorEquipo2(){
		this.equipo2.map[nombreJugador]
	}
	
	
	
	
	// ESTE ES EL M�TODO QUE USAMOS PARA INSCRIBIR JUGADORES		
	def void inscribiSiPodesA(Jugador jugador){ //PREGUNTO SI ESTA EN LA LISTA COMUNIDAD Y SI NO ESTA ANOTADO. SI CUMPLE; ORDENO LA LISTA Y VEO SI HAY LUGAR
		this.inscripciones.inscribiA(jugador)
	}
	
/*def ordenarListaParticipantes(){		//�NOS SIRVE DE ALGO ORDENAR LA LISTA?
 this.participantes.sortBy[prioridad]
 }*/
		
	def esDeLaComunidad(Jugador jugador){
		this.comunidad.esDeLaComunidad(jugador)
	}
	

	def dameDeBaja(Jugador jugador){
		
		this.inscripciones.darDeBajaJugador(jugador)
		this.generarInfraccionParaInfractor(jugador) 
		
	}
	
	def reemplazameCon(Jugador jugador, Jugador reemplazante){
		
		this.inscripciones.darDeBajaJugador(jugador)
		this.inscribiSiPodesA(reemplazante)
		
	}
	
 	def generarInfraccionParaInfractor(Jugador jugador){
		
		var infraccion = new Infracciones("prueba",0)
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
	
	def ordenarLaListaPorCriterioPrueba(OrganizadorCommand criterio,int n) {
		
		//this.setCriterioDeOrdenamiento(criterio) // guardo el criterio por si me lo piden
		//this.criterioDeOrdenamiento.ordenarLaLista(this)
		criterio.ordenarLaListaPrueba(this,n)
		
	
	}
	
	def ordenarLaListaPorPromedioDeVariosCriterios(Partido partidoAOrganizar,List<OrganizadorCommand> listaCriterios, int n){
		partidoAOrganizar.participantes.forEach[jug|jug.valorPromedioDeVariosCriterios(this,listaCriterios, n)]
		partidoAOrganizar.participantes.sortBy[promedioConVariosCriteriosAplicados]
		
		
	}
	
	def ordenarLaListaPorPromedioDeVariosCriteriosPrueba(Partido partidoAOrganizar, int n){
		//partidoAOrganizar.participantes.forEach[jug|jug.valorPromedioDeVariosCriterios(this,listaCriterios, n)]
		val participantesOrd = partidoAOrganizar.participantes.sortBy[promedioConVariosCriteriosAplicados]
		partidoAOrganizar.inscripciones.participantes.clear
		partidoAOrganizar.inscripciones.participantes.addAll(participantesOrd)
		return partidoAOrganizar
		
		
		
	}
	
	def dividirEquipos(DividirEquiposCommand criterioDivision){
		criterioDivision.dividirEquipos(this)
	}
	
	def dividirEquiposPrueba(DividirEquiposCommand criterioDivision){
		criterioDivision.dividirEquiposPrueba(this)
	}
	
	def confirmaTusEquipos() {
		this.setInscripciones(new InscripcionCerrada(this, this.participantes))
	}
	
	def confirmaTusEquiposPrueba() {
		this.setInscripciones(new InscripcionCerrada(this, this.participantes))
		return this
	}
	
	//def ordenaLista() {
		
		// participantes.sortBy[nivelDeJuego]
		
	//	participantes.forEach[jugador|jugador.listaCriterioDelJugador.add(jugador.nivelDeJuego)]
		
//	}
	
//	def ordenarListaPorPromedioCalificacionesUltimoPartido(){
		
//	}
	
//

	
	

}
	
    	
	
 
        



