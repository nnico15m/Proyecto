package uqbar.tpFutbol.domain

import java.util.ArrayList			
import java.util.List

import uqbar.tpFutbol.inscripcion.TipoDeInscripcion
import uqbar.tpFutbol.ordenamiento.OrganizadorCommand
import uqbar.tpFutbol.inscripcion.InscripcionCerrada
import uqbar.tpFutbol.division.DividirEquiposCommand
import java.util.Date
import org.uqbar.commons.utils.Observable
import java.io.Serializable
import javax.persistence.Id
import javax.persistence.GeneratedValue
import javax.persistence.Entity
import javax.persistence.ManyToOne
import javax.persistence.OneToMany
import javax.persistence.CascadeType
import javax.persistence.Column
import javax.persistence.Transient
import javax.persistence.Table

@Entity 
@Observable
@Table(name ="Partidos")
class Partido  implements Serializable {
	
//	@Property Date fecha
	private Long id
	private Date fecha	
	private double hora
	//@Property double hora
	//@Property ComunidadFutbolera comunidad
	private ComunidadFutbolera comunidad
	//@Property OrganizadorCommand criterioDeOrdenamiento
	//@Property DividirEquiposCommand criterioDeDivision
	//@Property int codPartido
	private int codPartido
	//@Property List<Jugador> equipo1 = new ArrayList (5)
	//@Property List<Jugador> equipo2 = new ArrayList (5)
	//@Property TipoDeInscripcion inscripciones
	
	private List<Jugador> equipo1 = new ArrayList (5) 
	private List<Jugador> equipo2 = new ArrayList (5)
	
	
	
	private TipoDeInscripcion inscripciones
	private OrganizadorCommand criterioDeOrdenamiento
	private DividirEquiposCommand criterioDeDivision
	
/** Constructor que necesita Hibernate */	
	new() {
		
	}
	
	@Id
	@GeneratedValue
	def getId() {
		this.id
	}
	
	def setId(Long id) {
		this.id = id
	}
	
	def getFecha(){
		fecha
	}
	
	def setFecha(Date fecha) {
		this.fecha = fecha
	}	
	
	def getHora(){
		hora
	}
	
	def setHora(double hora) {
		this.hora = hora
	}
	
	@Transient
	def getCodPartido(){
		codPartido
	}
	
	def setCodPartido(int codPartido) {
		this.codPartido = codPartido
	}
	
	
	@ManyToOne
	def getComunidad(){
		this.comunidad
	}
	
	def setComunidad(ComunidadFutbolera c) {
		this.comunidad = c
	}
	
	@Transient
	//@OneToMany(cascade=CascadeType.ALL, orphanRemoval=true, mappedBy="equipo1")
	def getEquipo1(){
		this.equipo1
	}
	
	def setEquipo1(List<Jugador> equipo1) {
		this.equipo1 = equipo1
	}
	
	@Transient
	//@OneToMany(cascade=CascadeType.ALL, orphanRemoval=true, mappedBy="equipo2")
	def getEquipo2(){
		this.equipo2
	}
	
	def setEquipo2(List<Jugador> equipo2) {
		this.equipo2 = equipo2
	}
	 
	@Transient
	def getInscripciones(){
		inscripciones
	}
	
	def setInscripciones(TipoDeInscripcion inscripciones) {
		this.inscripciones = inscripciones
	}
	
	@Transient
	//@Column(name = "criterioOrdenamiento")
	def getCriterioDeOrdenamiento(){
		this.criterioDeOrdenamiento
	}
	
	def setCriterioDeOrdenamiento(OrganizadorCommand criterioDeOrdenamiento) {
		this.criterioDeOrdenamiento = criterioDeOrdenamiento
	}
	
	@Transient
	//@Column(name = "criterioDivision")
	def getCriterioDeDivision(){
		this.criterioDeDivision
	}
	
	def setCriterioDeDivision(DividirEquiposCommand criterioDeDivision) {
		this.criterioDeDivision = criterioDeDivision
	}
	

	
	
	
	
	
	
	

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
	
    	
	
 
        



