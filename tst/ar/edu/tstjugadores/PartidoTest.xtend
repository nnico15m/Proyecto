package ar.edu.tstjugadores
import proyecto.Partido
import org.junit.Before
import proyecto.Jugador
import org.junit.Test
import org.junit.Assert

class PartidoTest {
	
	var Partido partidoInagural
	var Jugador carlos
	@Before
			def void init(){
				
				carlos = new Jugador
				partidoInagural = new Partido
				partidoInagural.setFecha(13021992)
				partidoInagural.setCondicion(false)
				partidoInagural.setHora(500)
				carlos.setEstiloParaPartido("Estandar")
				
				
				
				
			}
	
	
	@Test 
	
		def void verificarQueUnaVezQueMetoAlJugadorLaListaEstaEnUno(){
		 partidoInagural.participantes.add(carlos)
		 Assert.assertTrue(partidoInagural.participantes.size == 1)		
		
	}
	
	@Test 	
		
		def void verificarQueElQueEstaEnLaListaEsEseJugador(){
			partidoInagural.participantes.add(carlos)
			Assert.assertTrue(partidoInagural.participantes.contains(carlos))
			
			
		}
	
		
		@Test 
				def void verificarQueLaListaInicialEsIgualaCero(){
					
					Assert.assertTrue(partidoInagural.participantes.size == 0)
					
				}			
				
}

	
	
