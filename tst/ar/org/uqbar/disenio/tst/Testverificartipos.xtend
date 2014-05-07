package ar.org.uqbar.disenio.tst

import org.junit.Before
import org.junit.Test
import proyecto.Jugador
import proyecto.Estandar
import proyecto.Partido
import org.junit.Assert
import proyecto.Condicional
import proyecto.Solidaria
import proyecto.NoJuntamos10ParaElPartidoException

class Testverificartipos {
	
		var Jugador carlos	
		var Jugador martin
		var Jugador juan

		var Partido partidoInagural	
		
@Before	
		
		def void init() {
			
			
				carlos = this.crearEstandar()
				martin = this.crearCondicional()
				juan = this.crearSolidario()
				
				partidoInagural = new Partido
				partidoInagural.comunidad.add(carlos)
				partidoInagural.comunidad.add(martin)
				partidoInagural.comunidad.add(juan)
			
		}
	
	def crearEstandar() {
		var jugador = new Jugador
		jugador.setFormaDeInscripcion(new Estandar)
		jugador.setContadorPartidos(2)
		return jugador
	}
	
	def crearSolidario() {
		var jugador = new Jugador
		jugador.setFormaDeInscripcion(new Solidaria)
		jugador.setContadorPartidos(2)
		return jugador
	}
	
	def crearCondicional() {
		var jugador = new Jugador
		jugador.setFormaDeInscripcion(new Condicional)
		jugador.setContadorPartidos(2)
		return jugador
	}
	
@Test

		def verificarSiUnaVezQueElUsuarioSeInscribioDeFormaEstandarSeEncuentraEnLaListaParticipantes(){
			
			carlos.inscribirsePartido(partidoInagural)
			
			Assert.assertTrue(partidoInagural.participantes.contains(carlos))
		}	
	
		

@Test
		def verificarQueLaListaCondicionalEstaEn0(){
			Assert.assertFalse(partidoInagural.inscriptosCondicionales.size == 1)
			
			
			
		}
		
@Test
		def verificarQueLaListaParticipantesEsDeTamañoIgualAUnoLugoDeQueSeInscribioUnSoloJugador(){
			
			carlos.inscribirsePartido(partidoInagural)
			Assert.assertTrue(partidoInagural.participantes.size == 1)
			
		}		

@Test
		def verificarQueSiElUsuarioSeQuiereIngresarMuchasVecesNoVaAPoderHacerlo(){
			carlos.inscribirsePartido(partidoInagural)
			carlos.inscribirsePartido(partidoInagural)
			carlos.inscribirsePartido(partidoInagural)
			
			Assert.assertTrue(partidoInagural.participantes.size == 1)
		}
		
@Test

		def verificarSiUnaVezQueElUsuarioSeInscribioDeFormaCondicionalSeEncuentraEnLaListaCondicional(){
			
			martin.inscribirsePartido(partidoInagural)
			
			Assert.assertTrue(partidoInagural.inscriptosCondicionales.contains(martin))
		}	

@Test 
		def verificarSiUnaVezQueElUsuarioSeInscribioSeEncuentraEnLaListaSolidaria(){
			
			juan.inscribirsePartido(partidoInagural)
			
			Assert.assertTrue(partidoInagural.inscriptosSolidarios.contains(juan))
		}	
@Test
		def verificarQueSeENcuentranEnLaListaComunidadLos3PartcipantesQueInventamos(){
			
			Assert.assertTrue(partidoInagural.comunidad.size == 3)
			
			
		}

@Test (expected = NoJuntamos10ParaElPartidoException)
		def verificarQueConfirmarEquipoSiNoHay10JugadoresOMasTiraError() {
			
			carlos.inscribirsePartido(partidoInagural)
			martin.inscribirsePartido(partidoInagural)
			juan.inscribirsePartido(partidoInagural)
			
			partidoInagural.confirmarEquipo()
		}
		
@Test
		def verificarQueUnCondicionalQuedaAfueraSiSeCompletanLos10(){
			
			this.crearEInscribir5Estandares3Solidarios2Concicionales()
			martin.inscribirsePartido(partidoInagural)
			partidoInagural.confirmarEquipo()

			Assert.assertFalse(partidoInagural.participantes.contains(martin))
			
		}
		
@Test
		def verificarQueUnEstandarJuegaAunqueSeHayanAnotado10SiNoSonTodosEstandares() {
			
			this.crearEInscribir5Estandares3Solidarios2Concicionales()
			carlos.inscribirsePartido(partidoInagural)
			partidoInagural.confirmarEquipo()
			
			Assert.assertTrue(partidoInagural.participantes.contains(carlos))
		}
		
@Test
		def verificarQueUnSolidarioJuegaAunqueSeHayanAnotado10SiHayOtrosSolidarios() {
			
			this.crearEInscribir5Estandares3Solidarios2Concicionales()
			juan.inscribirsePartido(partidoInagural)
			partidoInagural.confirmarEquipo()
			
			Assert.assertTrue(partidoInagural.participantes.contains(juan))
		}
		
@Test
		def verificarQueCualquieraSeQuedaAfueraSiYaHayAnotados10Estandares() {
			
			this.crearEInscribir5Estandares3Solidarios2Concicionales()
			this.crearEInscribir5Estandares3Solidarios2Concicionales()
			carlos.inscribirsePartido(partidoInagural)
			juan.inscribirsePartido(partidoInagural)
			martin.inscribirsePartido(partidoInagural)
			partidoInagural.confirmarEquipo()
			
			Assert.assertFalse(partidoInagural.participantes.contains(martin))
			Assert.assertFalse(partidoInagural.participantes.contains(carlos))
			Assert.assertFalse(partidoInagural.participantes.contains(juan))
		}
		
		
		def void crearEInscribir5Estandares3Solidarios2Concicionales() {
			
			var estandar1 = this.crearEstandar()
			partidoInagural.comunidad.add(estandar1)
			estandar1.inscribirsePartido(partidoInagural)
			var estandar2 = this.crearEstandar()
			partidoInagural.comunidad.add(estandar2)
			estandar2.inscribirsePartido(partidoInagural)
			var estandar3 = this.crearEstandar()
			partidoInagural.comunidad.add(estandar3)
			estandar3.inscribirsePartido(partidoInagural)
			var estandar4 = this.crearEstandar()
			partidoInagural.comunidad.add(estandar4)
			estandar4.inscribirsePartido(partidoInagural)
			var estandar9 = this.crearEstandar()
			partidoInagural.comunidad.add(estandar9)
			estandar9.inscribirsePartido(partidoInagural)
			
			var solidario1 = this.crearSolidario()
			partidoInagural.comunidad.add(solidario1)
			solidario1.inscribirsePartido(partidoInagural)
			var solidario2 = this.crearSolidario()
			partidoInagural.comunidad.add(solidario2)
			solidario2.inscribirsePartido(partidoInagural)
			var solidario3 = this.crearSolidario()
			partidoInagural.comunidad.add(solidario3)
			solidario3.inscribirsePartido(partidoInagural)

			var condicional1 = this.crearCondicional()
			partidoInagural.comunidad.add(condicional1)
			condicional1.inscribirsePartido(partidoInagural)
			var condicional2 = this.crearCondicional()
			partidoInagural.comunidad.add(condicional2)
			condicional2.inscribirsePartido(partidoInagural)
			
		}
		
			
}