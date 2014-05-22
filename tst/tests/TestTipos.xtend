package tests
import org.junit.Test;
import proyecto.Jugador;
import proyecto.Estandar;
import proyecto.Partido;
import org.junit.Assert;
import proyecto.Condicional;
import proyecto.Solidaria;
import org.junit.Before

class TestTipos {

	
		var Jugador carlos	
		var Jugador martin
		var Jugador juan
		var Jugador p1
		var Jugador p2
		var Jugador p3
		var Jugador p4
		var Jugador p5
		var Jugador p6
		var Jugador p7
		var Jugador p8
		var Jugador p9
		var Jugador p10
		var Partido partidoInagural	
		var Partido partidoLleno
		
@Before	
		
		def void init() {
			
			
				carlos = this.crearEstandar()
				martin = this.crearCondicional()
				juan = this.crearSolidario()
				p1 = this.crearEstandar()
				p2 = this.crearEstandar()
				p3 = this.crearEstandar()
				p4 = this.crearEstandar()
				p5 = this.crearEstandar()
				p6 = this.crearEstandar()
				p7 = this.crearSolidario()
				p8 = this.crearCondicional()
				p9 = this.crearCondicional()
				p10 = this.crearEstandar()
				
				
				partidoInagural = new Partido
				partidoInagural.comunidad.add(carlos)
				partidoInagural.comunidad.add(martin)
				partidoInagural.comunidad.add(juan)
				
				partidoLleno.comunidad.add(p1)
				partidoLleno.comunidad.add(p2)
				partidoLleno.comunidad.add(p3)
				partidoLleno.comunidad.add(p4)
				partidoLleno.comunidad.add(p5)
				partidoLleno.comunidad.add(p6)
				partidoLleno.comunidad.add(p7)
				partidoLleno.comunidad.add(p8)
				partidoLleno.comunidad.add(p9)
				partidoLleno.comunidad.add(p10)
			
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
			var estandar5 = this.crearEstandar()
			partidoInagural.comunidad.add(estandar5)
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
@Test
		def agregoEstandarSacoCondicional(){
			
			partidoLleno.inscribiSiPodesA(p1)
			Assert.assertTrue(partidoLleno.participantes.contains(p1))
			Assert.assertFalse(partidoLleno.participantes.contains(p9))
			
			
		}
		
			
}