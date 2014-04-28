package tests;

import static org.junit.Assert.*;

import org.junit.Test;

public class TestJugador {

	Partido unPartido
	@Before
	def void initialize() {
		unPartido = new Partido()
		partido.fecha(10092013)
		partido.hora(2200)
		List<Partido> participantes = new (juan,gabriel,marcos,gabriel,julian,pablo,nahuel,pedro,andres,alexis)
		List<Partido> inscriptosSolidarios = new (jose,matias)
		List<Partido> inscriptosCondicionales = new (pipi)
		}
	
	@Test
	def inscribirUnJugadorDeFormaEstandar(){
		Jugador jugador = new (jugador, new estandar)
		jugador.inscribirJugador(jugador,unPartido)
		assert.AssertTrue(jugador.estaInscripto)	
		
		
	@Test
	def elPartidoPuedeTenerSolo10Jugadores
	this.confirmarEquipo()
	assert.assertEquals(unPartido.participantes.size,10)
	
	@Test
	
	def seActualizaLaCantidadDePartidosJugadosDeUnJugadorDespuesDeConfirmarEquipo(){
			Jugador jugador = new (jugador, new estandar)
			
			jugador.inscribirJugador(jugador,unPartido)
			this.confirmarEquipo()
						
					}
		
	@Test
	def unPartidoNoPuedeJugarseSiNoTiene10Integrantes(){
		this.confirmarEquipo()
		assert.assertTrue(unPartido.puedeJugarse)
	}
	
	@Test
	def unJugadorNoPuedeInscribirseDe2TiposDeInscripcionALaVez
	
	@Test
	}
