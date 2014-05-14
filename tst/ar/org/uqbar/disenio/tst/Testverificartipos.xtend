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

		def verificarSiSeIntentaInscribirUnJugadorYFaltaGenteSeAgregaALaListaParticipantes(){
			
			partidoInagural.inscribiSiPodesA(carlos)
			
			Assert.assertTrue(partidoInagural.participantes.contains(carlos))
		}	
	

		
@Test
		def verificarQueLaListaParticipantesEsDeTamanioIgualAUnoLugoDeQueSeInscribioUnSoloJugador(){
			
			partidoInagural.inscribiSiPodesA(carlos)
			Assert.assertTrue(partidoInagural.participantes.size == 1)
			
		}		

@Test
		def verificarQueSiElUsuarioSeQuiereIngresarMuchasVecesNoVaAPoderHacerlo(){
			partidoInagural.inscribiSiPodesA(carlos)
			partidoInagural.inscribiSiPodesA(carlos)
			partidoInagural.inscribiSiPodesA(carlos)
			
			Assert.assertTrue(partidoInagural.participantes.size == 1)
		}


@Test
		def verificarQueSeENcuentranEnLaListaComunidadLos3PartcipantesQueInventamos(){
			
			Assert.assertTrue(partidoInagural.comunidad.size == 3)
			
			}
		
@Test
		def verificarQueUnCondicionalQuedaAfueraSiHay10AnotadosYNingunoEsCondicional(){   ////////////////////////////
			
			this.crearEInscribir5Estandares3Solidarios2Concicionales()
			this.crearEInscribir5Estandares3Solidarios2Concicionales()
			partidoInagural.inscribiSiPodesA(martin)

			Assert.assertFalse(partidoInagural.participantes.contains(martin))
			
		}
		
@Test
		def verificarQueUnEstandarJuegaAunqueSeHayanAnotado10SiNoSonTodosEstandares() {
			
			this.crearEInscribir5Estandares3Solidarios2Concicionales()
			partidoInagural.inscribiSiPodesA(carlos)
			
			Assert.assertTrue(partidoInagural.participantes.contains(carlos))
		}
		
@Test
		def verificarQueUnSolidarioJuegaAunqueSeHayanAnotado10SiHayOtrosSolidarios() {
			
			this.crearEInscribir5Estandares3Solidarios2Concicionales()
			partidoInagural.inscribiSiPodesA(juan)
			
			Assert.assertTrue(partidoInagural.participantes.contains(juan))
		}
		
@Test
		def verificarQueCualquieraSeQuedaAfueraSiYaHayAnotados10Estandares() {
			
			this.crearEInscribir5Estandares3Solidarios2Concicionales()
			this.crearEInscribir5Estandares3Solidarios2Concicionales()
			partidoInagural.inscribiSiPodesA(carlos)
			partidoInagural.inscribiSiPodesA(juan)
			partidoInagural.inscribiSiPodesA(martin)
			
			Assert.assertFalse(partidoInagural.participantes.contains(martin))
			Assert.assertFalse(partidoInagural.participantes.contains(carlos))
			Assert.assertFalse(partidoInagural.participantes.contains(juan))
		}
		
		
		def void crearEInscribir5Estandares3Solidarios2Concicionales() {
			
			var estandar1 = this.crearEstandar()
			partidoInagural.comunidad.add(estandar1)
			partidoInagural.inscribiSiPodesA(estandar1)
			var estandar2 = this.crearEstandar()
			partidoInagural.comunidad.add(estandar2)
			partidoInagural.inscribiSiPodesA(estandar2)
			var estandar3 = this.crearEstandar()
			partidoInagural.comunidad.add(estandar3)
			partidoInagural.inscribiSiPodesA(estandar3)
			var estandar4 = this.crearEstandar()
			partidoInagural.comunidad.add(estandar4)
			partidoInagural.inscribiSiPodesA(estandar4)
			var estandar6 = this.crearEstandar()
			partidoInagural.comunidad.add(estandar6)
			partidoInagural.inscribiSiPodesA(estandar5)
			
			var solidario1 = this.crearSolidario()
			partidoInagural.comunidad.add(solidario1)
			partidoInagural.inscribiSiPodesA(solidario1)
			var solidario2 = this.crearSolidario()
			partidoInagural.comunidad.add(solidario2)
			partidoInagural.inscribiSiPodesA(solidario2)
			var solidario3 = this.crearSolidario()
			partidoInagural.comunidad.add(solidario3)
			partidoInagural.inscribiSiPodesA(solidario3)

			var condicional1 = this.crearCondicional()
			partidoInagural.comunidad.add(condicional1)
			partidoInagural.inscribiSiPodesA(condicional1)
			var condicional2 = this.crearCondicional()
			partidoInagural.comunidad.add(condicional2)
			partidoInagural.inscribiSiPodesA(condicional2)
			
		}
		
			
}