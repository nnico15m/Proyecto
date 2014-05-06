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
	
	
		var Jugador carlos	
		var Jugador martin
		var Jugador juan
		var Estandar estandar
		var Partido partidoInagural	
		var Condicional condicional
		var Solidaria solidaria
		
@Before	
		
		def void init() {
			
			
			
				carlos = new Jugador
				martin = new Jugador
				juan = new Jugador
				
					
				estandar = new Estandar
				condicional = new Condicional
				solidaria = new Solidaria
				
				carlos.setContadorPartidos(2)
				carlos.setFormaDeInscripcion(estandar)
				martin.setContadorPartidos(2)
				martin.setFormaDeInscripcion(condicional)
				juan.setContadorPartidos(2)
				juan.setFormaDeInscripcion(solidaria)
				
				
				partidoInagural = new Partido
				partidoInagural.comunidad.add(carlos)
				partidoInagural.comunidad.add(martin)
				partidoInagural.comunidad.add(juan)
			
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

			
}