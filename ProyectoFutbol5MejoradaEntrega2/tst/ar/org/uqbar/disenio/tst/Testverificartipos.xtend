package ar.org.uqbar.disenio.tst

import org.junit.Before
import org.junit.Test
import proyecto.Jugador2
import proyecto.Estandar2
import proyecto.Partido2
import org.junit.Assert
import proyecto.Condicional2
import proyecto.Solidaria2

class Testverificartipos {
	
	
		var Jugador2 carlos	
		var Jugador2 martin
		var Jugador2 juan
		var Estandar2 estandar2
		var Partido2 partidoInagural	
		var Condicional2 condicional2
		var Solidaria2 solidaria2
		
@Before	
		
		def void init() {
			
			
			
				carlos = new Jugador2
				martin = new Jugador2
				juan = new Jugador2
				
					
				estandar2 = new Estandar2
				condicional2 = new Condicional2
				solidaria2 = new Solidaria2
				
				carlos.setContadorPartidos(2)
				carlos.setFormaDeInscripcion(estandar2)
				martin.setContadorPartidos(2)
				martin.setFormaDeInscripcion(condicional2)
				juan.setContadorPartidos(2)
				juan.setFormaDeInscripcion(solidaria2)
				
				
				partidoInagural = new Partido2
				partidoInagural.comunidad.add(carlos)
				partidoInagural.comunidad.add(martin)
				partidoInagural.comunidad.add(juan)
			
		}
	
@Test

		def verificarSiUnaVezQueElUsuarioSeInscribioSeEncuentraEnLaListaParticipantes(){
			
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

		def verificarSiUnaVezQueElUsuarioSeInscribioSeEncuentraEnLaListaCondicional(){
			
			martin.inscribirsePartido(partidoInagural)
			
			Assert.assertTrue(partidoInagural.inscriptosCondicionales.contains(martin))
		}	

@Test 
		def verificarSiUnaVezQueElUsuarioSeInscribioSeEncuentraEnLaListaSolidaria(){
			
			juan.inscribirsePartido(partidoInagural)
			
			Assert.assertTrue(partidoInagural.inscriptosSolidarios.contains(juan))
		}	
@Test
		def verificarQueSeENcuentranEnLaListaComunidadLos3PartcipantesQueYoInventamos(){
			
			Assert.assertTrue(partidoInagural.comunidad.size == 3)
			
			
		}	

			
}