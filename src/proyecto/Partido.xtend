package proyecto

import java.util.ArrayList			
import java.util.List
import commands.OrganizadorCommand
import commands.OrdenamientoPorHandicap
import commands.DividirEquiposCommand

class Partido  {
	
	@Property Fecha fecha
	@Property double hora
	@Property ComunidadFutbolera comunidad
	@Property OrganizadorCommand criterioDeOrdenamiento 
	@Property int codPartido
	@Property Iterable<Jugador> equipo1 = new ArrayList (5)
	@Property Iterable<Jugador> equipo2 = new ArrayList (5)
	@Property TipoDeInscripcion inscripciones


	def participantes(){
		this.inscripciones.participantes
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
	
	def ordenarLaListaPorPromedioDeVariosCriterios(Partido partidoAOrganizar,List<OrganizadorCommand> listaCriterios, int n){
		partidoAOrganizar.participantes.forEach[jug|jug.valorPromedioDeVariosCriterios(this,listaCriterios, n)]
		partidoAOrganizar.participantes.sortBy[promedioConVariosCriteriosAplicados]
		
		
	}
	
	def dividirEquipos(DividirEquiposCommand criterioDivision){
		criterioDivision.dividirEquipos(this)
	}
	
	def confirmaTusEquipos() {
		this.setInscripciones(new InscripcionCerrada(this))
	}
	
	//def ordenaLista() {
		
		// participantes.sortBy[nivelDeJuego]
		
	//	participantes.forEach[jugador|jugador.listaCriterioDelJugador.add(jugador.nivelDeJuego)]
		
//	}
	
//	def ordenarListaPorPromedioCalificacionesUltimoPartido(){
		
//	}
	
//




}
	
    	
	
 
        



