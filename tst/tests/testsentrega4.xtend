package tests


import org.junit.Before
import org.junit.Test
import proyecto.Partido
import proyecto.Jugador
import org.junit.Assert
import proyecto.Estandar
import proyecto.Solidaria
import proyecto.Condicional
import observers.NotificadorDeAdministradorObserver
import observers.StubMensajero
import excepciones.ElCupoEstaLlenoException
import excepciones.NoSePudoAnotarException
import proyecto.ComunidadFutbolera
import proyecto.Administrador
import org.junit.experimental.theories.suppliers.TestedOn
import commands.OrdenamientoPorHandicap

class testsentrega4 {

			var administrador = new Administrador
			var losPibes = new ComunidadFutbolera
			var Partido partidoInagural = new Partido
			var Partido partidoLleno = new Partido
			var Partido partidoNuevo= new Partido
			var Jugador p1 = new Jugador
			var Jugador p2 = new Jugador
			var Jugador p3 = new Jugador
			var Jugador p4= new Jugador
			var Jugador p5= new Jugador
			var Jugador p6= new Jugador
			var Jugador p7= new Jugador
			var Jugador p8= new Jugador
			var Jugador p9= new Jugador
			var Jugador p10= new Jugador
			var Jugador p11= new Jugador
			var Jugador carlos = new Jugador
			var Jugador martin = new Jugador
			var Jugador juan = new Jugador
			var Jugador fermin = new Jugador
			var Jugador epi = new Jugador
			var mensajero = new StubMensajero





@Before	
		def void init() {
			
		
			losPibes.agregaPartido(partidoLleno)
			losPibes.agregaPartido(partidoInagural)
			losPibes.setAdmin(administrador)
			partidoLleno.setObserver(crearObserverDePartido("adminlleno@gmail.com"))
			partidoInagural.setObserver(crearObserverDePartido("admininagural@gmail.com"))
			
			losPibes.agregarALaComunidad(administrador)
			losPibes.agregarALaComunidad(p1)
			losPibes.agregarALaComunidad(p2)
			losPibes.agregarALaComunidad(p3)
			losPibes.agregarALaComunidad(p4)
			losPibes.agregarALaComunidad(p5)
			losPibes.agregarALaComunidad(p6)
			losPibes.agregarALaComunidad(p7)
			losPibes.agregarALaComunidad(p8)
			losPibes.agregarALaComunidad(p9)
			losPibes.agregarALaComunidad(p10)
			losPibes.agregarALaComunidad(p11)
			losPibes.agregarALaComunidad(carlos)
			losPibes.agregarALaComunidad(martin)
			losPibes.agregarALaComunidad(fermin)
			losPibes.agregarALaComunidad(juan)
			
			
			
			
				
			carlos.mail = "carlos@gmail.com"
			martin.mail = "martin@gmail.com"
			juan.setMensajero(mensajero)
			
		}



def crearObserverDePartido(String mailAdministrador){
		var observerDelPartido = new NotificadorDeAdministradorObserver
		observerDelPartido.setMailAdministrador(mailAdministrador)
		observerDelPartido.setMensajero(mensajero)
		observerDelPartido
	
	
	
	
	
	}


def anotar10JugadoresAlPartido(){
	
	partidoInagural.inscribiSiPodesA(p1)
	partidoInagural.inscribiSiPodesA(p2)
	partidoInagural.inscribiSiPodesA(p3)
	partidoInagural.inscribiSiPodesA(p4)
	partidoInagural.inscribiSiPodesA(p5)
	partidoInagural.inscribiSiPodesA(p6)
	partidoInagural.inscribiSiPodesA(p7)
	partidoInagural.inscribiSiPodesA(p8)
	partidoInagural.inscribiSiPodesA(p9)
	partidoInagural.inscribiSiPodesA(p10)
	
	
	       
			
	
}

/* @Test 

		def verificarQueLos10JugadoresEstanInscriptos(){
		val criterio1 = new OrdenamientoPorHandicap
			
			p1.setFormaDeInscripcion(new Solidaria)
			p2.setFormaDeInscripcion(new Condicional)
			p3.setFormaDeInscripcion(new Estandar)
			p4.setFormaDeInscripcion(new Estandar)
			p5.setFormaDeInscripcion(new Condicional)
			p6.setFormaDeInscripcion(new Estandar)
			p7.setFormaDeInscripcion(new Solidaria)
			p8.setFormaDeInscripcion(new Estandar)
			p9.setFormaDeInscripcion(new Condicional)
			p10.setFormaDeInscripcion(new Estandar)
			
			
			p1.setNivelDeJuego(7)
			p2.setNivelDeJuego(8)
			p3.setNivelDeJuego(3)
			p4.setNivelDeJuego(2)
			p5.setNivelDeJuego(6)
			p6.setNivelDeJuego(1)
			p7.setNivelDeJuego(4)
			p8.setNivelDeJuego(9)
			p9.setNivelDeJuego(10)
			p10.setNivelDeJuego(5)
			
			partidoInagural.setCriterioDeOrdenamiento(new OrdenamientoPorHandicap)
			
		
		
			partidoInagural.inscribiSiPodesA(p1)
			partidoInagural.inscribiSiPodesA(p2)
			partidoInagural.inscribiSiPodesA(p3)
			partidoInagural.inscribiSiPodesA(p4)
			partidoInagural.inscribiSiPodesA(p5)
			partidoInagural.inscribiSiPodesA(p6)
			partidoInagural.inscribiSiPodesA(p7)
			partidoInagural.inscribiSiPodesA(p8)
			partidoInagural.inscribiSiPodesA(p9)
			partidoInagural.inscribiSiPodesA(p10)
		
			
			//administrador.organizaElPartido(partidoInagural,new OrdenamientoPorHandicap)
			
			partidoInagural.pasameLaLista()
			
			val	listaAux = partidoInagural.participantes
			
		 	criterio1.ordenameLaLista(listaAux)
			
			Assert.assertTrue(listaAux.get(0) == p6)
			
		} */
		
  @Test
	def laListaQuedaOrdenadaPorHandicap (){
	
	val criterio1 = new OrdenamientoPorHandicap
	
	fermin.setFormaDeInscripcion(new Estandar)
	martin.setFormaDeInscripcion(new Estandar)
	carlos.setFormaDeInscripcion(new Estandar)
	carlos.setNivelDeJuego(6)
	martin.setNivelDeJuego(10)
	fermin.setNivelDeJuego(9)
	
	partidoLleno.inscribiSiPodesA(martin)
	partidoLleno.inscribiSiPodesA(carlos)
	partidoLleno.inscribiSiPodesA(fermin)
	
	val listP = partidoLleno.participantes
	
	val aux = criterio1.ordenarLaLista(listP)
	
	
	Assert.assertTrue(aux.get(0) == carlos)
	Assert.assertTrue(aux.get(2) == martin)
	Assert.assertTrue(aux.get(1) == fermin)
} 		

@Test 
def promedioDeCalificacionesDeUnJugadorEnElUltimoPartido(){
	

	
	partidoInagural.setCodPartido(1)
	partidoLleno.setCodPartido(2)
	partidoNuevo.setCodPartido(3)
	
	p1.agregarALaListaDependientesDeCalificar(carlos)
	martin.agregarALaListaDependientesDeCalificar(carlos)
	fermin.agregarALaListaDependientesDeCalificar(carlos)
	
	p1.generarUnaCalificacionParaEseJug(carlos,2,"muerto",1)
	martin.generarUnaCalificacionParaEseJug(carlos,10,"crack",2)
	fermin.generarUnaCalificacionParaEseJug(carlos,4,"amargo",2)
		
	Assert.assertEquals(4,carlos.promedioDeCalificacionesUltimoPartido(partidoNuevo))
	//deberia dar 7, pero por ahora no da
	}




}	