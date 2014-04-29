package ar.edu.tstjugadores

import org.junit.Before
import org.junit.Test
import org.junit.Assert
import proyecto.Jugador



class JugadorTest {
	
	var Jugador carlos
	
	
	@Before
	def void init(){
		
		
	
		carlos = new Jugador 
		carlos.setContadorPartidos(2)
		carlos.setNivelAdvertencia(4)
		carlos.setNombreJugador("Epi la locomotora Epifanio")
		carlos.setNivelDePrioridad(0)
		carlos.setEstiloParaPartido("Estandar")
	
		
	}
	


@Test
	def void primerTestQueCorroboraQueElgetestiloParaPartidoFunciona(){
		
		Assert.assertTrue(carlos.estiloParaPartido == "Estandar") 
	
	}


@Test 
	def void  verificarTestQueCorroboraOtroget(){
	
		Assert.assertTrue(carlos.contadorPartidos == 2) 
	


}


}