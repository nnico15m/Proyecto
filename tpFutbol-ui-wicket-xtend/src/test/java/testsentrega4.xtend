import org.junit.Before
import org.junit.Test
import uqbar.tpFutbol.domain.Partido
import uqbar.tpFutbol.domain.Jugador
import org.junit.Assert

import org.junit.experimental.theories.suppliers.TestedOn

import java.util.List
import java.util.ArrayList
import uqbar.tpFutbol.domain.Administrador
import uqbar.tpFutbol.domain.ComunidadFutbolera
import uqbar.tpFutbol.observers.StubMensajero
import uqbar.tpFutbol.inscripcion.InscripcionAbierta
import uqbar.tpFutbol.observers.NotificadorDeAdministradorObserver
import uqbar.tpFutbol.inscripcion.Solidaria
import uqbar.tpFutbol.inscripcion.Condicional
import uqbar.tpFutbol.inscripcion.Estandar
import uqbar.tpFutbol.ordenamiento.OrdenamientoPorHandicap
import uqbar.tpFutbol.ordenamiento.OrdenarPartidoPorUltimaCalificacion
import uqbar.tpFutbol.ordenamiento.OrdenarPartidoPorNCalificaciones
import uqbar.tpFutbol.ordenamiento.OrganizadorCommand
import uqbar.tpFutbol.division.DividirPorParEImpar
import uqbar.tpFutbol.division.DividirPorPosicion14589
import uqbar.tpFutbol.excepciones.LaInscripcionEstaCerradaException

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
			partidoInagural.setInscripciones(new InscripcionAbierta(partidoInagural, this.crearObserverDePartido("admininagural@gmail.com")))
			partidoLleno.setInscripciones(new InscripcionAbierta(partidoLleno, this.crearObserverDePartido("adminlleno@gmail.com")))
						
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


def anotar10JugadoresAlPartido(Partido partido){
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
	partido.inscribiSiPodesA(p1)
	partido.inscribiSiPodesA(p2)
	partido.inscribiSiPodesA(p3)
	partido.inscribiSiPodesA(p4)
	partido.inscribiSiPodesA(p5)
	partido.inscribiSiPodesA(p6)
	partido.inscribiSiPodesA(p7)
	partido.inscribiSiPodesA(p8)
	partido.inscribiSiPodesA(p9)
	partido.inscribiSiPodesA(p10)
	
	
	       
			
	
}

def anotarA10AlPartidoLleno(){
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
			partidoLleno.inscribiSiPodesA(p1)
			partidoLleno.inscribiSiPodesA(p2)
			partidoLleno.inscribiSiPodesA(p3)
			partidoLleno.inscribiSiPodesA(p4)
			partidoLleno.inscribiSiPodesA(p5)
			partidoLleno.inscribiSiPodesA(p6)
			partidoLleno.inscribiSiPodesA(p7)
			partidoLleno.inscribiSiPodesA(p8)
			partidoLleno.inscribiSiPodesA(p9)
			partidoLleno.inscribiSiPodesA(p10)
			
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
	
	var int n
	
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
	
//	val listP = partidoLleno.participantes
	
	val aux = criterio1.ordenarLaLista(partidoLleno,n)
	
	
	Assert.assertArrayEquals(newArrayList(carlos,fermin,martin),aux)
} 		

@Test 
def promedioDeCalificacionesDeUnJugadorEnElUltimoPartido(){
	

	
	partidoInagural.setCodPartido(1)
	partidoLleno.setCodPartido(2)
	partidoNuevo.setCodPartido(3)
	
	p1.agregarALaListaDependientesDeCalificar(carlos)
	martin.agregarALaListaDependientesDeCalificar(carlos)
	fermin.agregarALaListaDependientesDeCalificar(carlos)
	
	p1.generarUnaCalificacionParaEseJug(carlos,40,"muerto",1)
	martin.generarUnaCalificacionParaEseJug(carlos,20,"crack",2)
	fermin.generarUnaCalificacionParaEseJug(carlos,10,"amargo",2)
		
	Assert.assertEquals(15,carlos.promedioDeCalificacionesUltimoPartido(partidoNuevo))
	}

@Test
def laListaQuedaOrdenadaPorUltimasCalificaciones(){
	
	var int n
	
	val criterio2 = new OrdenarPartidoPorUltimaCalificacion
	partidoInagural.setCodPartido(1)
	partidoLleno.setCodPartido(2)
	partidoNuevo.setCodPartido(3)
	fermin.setFormaDeInscripcion(new Estandar)
	martin.setFormaDeInscripcion(new Estandar)
	carlos.setFormaDeInscripcion(new Estandar)
	
	partidoLleno.inscribiSiPodesA(martin)
	partidoLleno.inscribiSiPodesA(carlos)
	partidoLleno.inscribiSiPodesA(fermin)
	
	p1.agregarALaListaDependientesDeCalificar(carlos)
	martin.agregarALaListaDependientesDeCalificar(carlos)
	fermin.agregarALaListaDependientesDeCalificar(carlos)
	
	p1.generarUnaCalificacionParaEseJug(carlos,2,"muerto",1)
	martin.generarUnaCalificacionParaEseJug(carlos,0,"crack",2)
	fermin.generarUnaCalificacionParaEseJug(carlos,0,"amargo",2)
	//deberia ser 0
	
	p1.agregarALaListaDependientesDeCalificar(martin)
	carlos.agregarALaListaDependientesDeCalificar(martin)
	fermin.agregarALaListaDependientesDeCalificar(martin)
	
	p1.generarUnaCalificacionParaEseJug(martin,6,"muerto",1)
	carlos.generarUnaCalificacionParaEseJug(martin,8,"crack",2)
	fermin.generarUnaCalificacionParaEseJug(martin,2,"amargo",2)
	//deberia ser 5
	
	p1.agregarALaListaDependientesDeCalificar(fermin)
	carlos.agregarALaListaDependientesDeCalificar(fermin)
	fermin.agregarALaListaDependientesDeCalificar(fermin)
	
	p1.generarUnaCalificacionParaEseJug(fermin,2,"muerto",1)
	carlos.generarUnaCalificacionParaEseJug(fermin,0,"crack",2)
	martin.generarUnaCalificacionParaEseJug(fermin,2,"amargo",2)
	//deberia ser 1
	
	val aux = criterio2.ordenarLaLista(partidoLleno,n)
	
	Assert.assertTrue(aux.get(2) == martin)
	Assert.assertTrue(aux.get(0) == carlos)
	Assert.assertTrue(aux.get(1) == fermin)
}

@Test 
		def verificarQueEnLaListaDeCalificacionesMiJugadorTiene3Calificaciones(){
			
		
			
			partidoInagural.setCodPartido(1)
	  		partidoLleno.setCodPartido(2)
			partidoNuevo.setCodPartido(3)
	
			p1.agregarALaListaDependientesDeCalificar(carlos)
			martin.agregarALaListaDependientesDeCalificar(carlos)
			fermin.agregarALaListaDependientesDeCalificar(carlos)
	
			p1.generarUnaCalificacionParaEseJug(carlos,2,"muerto",1)
			martin.generarUnaCalificacionParaEseJug(carlos,10,"crack",2)
			fermin.generarUnaCalificacionParaEseJug(carlos,4,"amargo",2)
			
				
			Assert.assertEquals(3,carlos.calificaciones.size)	
						
		}
		
@Test
def laListaQuedaOrdenadaPorUltimasNCalificacionesPedidas(){
	val criterio3 = new OrdenarPartidoPorNCalificaciones
	partidoInagural.setCodPartido(1)
	partidoLleno.setCodPartido(2)
	partidoNuevo.setCodPartido(3)
	fermin.setFormaDeInscripcion(new Estandar)
	martin.setFormaDeInscripcion(new Estandar)
	carlos.setFormaDeInscripcion(new Estandar)
	carlos.setFormaDeInscripcion(new Solidaria)
	
	partidoLleno.inscribiSiPodesA(p1)
	partidoLleno.inscribiSiPodesA(martin)
	partidoLleno.inscribiSiPodesA(carlos)
	partidoLleno.inscribiSiPodesA(fermin)
	
	p1.agregarALaListaDependientesDeCalificar(carlos)
	martin.agregarALaListaDependientesDeCalificar(carlos)
	fermin.agregarALaListaDependientesDeCalificar(carlos)
	
	p1.generarUnaCalificacionParaEseJug(carlos,2,"muerto",1)
	martin.generarUnaCalificacionParaEseJug(carlos,0,"crack",2)
	fermin.generarUnaCalificacionParaEseJug(carlos,0,"amargo",2)
	//deberia ser 2
	
	p1.agregarALaListaDependientesDeCalificar(martin)
	carlos.agregarALaListaDependientesDeCalificar(martin)
	fermin.agregarALaListaDependientesDeCalificar(martin)
	
	p1.generarUnaCalificacionParaEseJug(martin,6,"muerto",1)
	carlos.generarUnaCalificacionParaEseJug(martin,8,"crack",2)
	fermin.generarUnaCalificacionParaEseJug(martin,2,"amargo",2)
	//deberia ser 16
	
	p1.agregarALaListaDependientesDeCalificar(fermin)
	carlos.agregarALaListaDependientesDeCalificar(fermin)
	fermin.agregarALaListaDependientesDeCalificar(fermin)
	
	p1.generarUnaCalificacionParaEseJug(fermin,2,"muerto",1)
	carlos.generarUnaCalificacionParaEseJug(fermin,0,"crack",2)
	martin.generarUnaCalificacionParaEseJug(fermin,2,"amargo",2)
	//deberia ser 4
	
	martin.agregarALaListaDependientesDeCalificar(p1)
	carlos.agregarALaListaDependientesDeCalificar(p1)
	fermin.agregarALaListaDependientesDeCalificar(p1)
	
	fermin.generarUnaCalificacionParaEseJug(p1,2,"muerto",1)
	carlos.generarUnaCalificacionParaEseJug(p1,0,"crack",2)
	martin.generarUnaCalificacionParaEseJug(p1,20,"amargo",2)
	//deberia ser 22
	
	val aux = criterio3.ordenarLaLista(partidoLleno,3)//el 3 es la cantidad de partidos que quiero contar calificaciones
	

	
	Assert.assertArrayEquals(newArrayList(carlos,fermin,martin,p1),aux)
}	

@Test

def ordenarUnaListaDeAcuerdoAVariosCriterios(){
	var List<OrganizadorCommand> criterios = new ArrayList
	criterios.add(new OrdenamientoPorHandicap)
	criterios.add(new OrdenarPartidoPorNCalificaciones)
	criterios.add(new OrdenarPartidoPorUltimaCalificacion)
	
	fermin.setNivelDeJuego(6)
	p1.setNivelDeJuego(10)
	carlos.setNivelDeJuego(5)
	martin.setNivelDeJuego(3)
	
	
	
	partidoInagural.setCodPartido(1)
	partidoLleno.setCodPartido(2)
	partidoNuevo.setCodPartido(3)
	fermin.setFormaDeInscripcion(new Estandar)
	martin.setFormaDeInscripcion(new Estandar)
	carlos.setFormaDeInscripcion(new Estandar)
	carlos.setFormaDeInscripcion(new Solidaria)
	
	partidoLleno.inscribiSiPodesA(p1)
	partidoLleno.inscribiSiPodesA(martin)
	partidoLleno.inscribiSiPodesA(carlos)
	partidoLleno.inscribiSiPodesA(fermin)
	
	p1.agregarALaListaDependientesDeCalificar(carlos)
	martin.agregarALaListaDependientesDeCalificar(carlos)
	fermin.agregarALaListaDependientesDeCalificar(carlos)
	
	p1.generarUnaCalificacionParaEseJug(carlos,2,"muerto",1)
	martin.generarUnaCalificacionParaEseJug(carlos,0,"crack",2)
	fermin.generarUnaCalificacionParaEseJug(carlos,0,"amargo",2)
	//deberia ser 0
	
	p1.agregarALaListaDependientesDeCalificar(martin)
	carlos.agregarALaListaDependientesDeCalificar(martin)
	fermin.agregarALaListaDependientesDeCalificar(martin)
	
	p1.generarUnaCalificacionParaEseJug(martin,6,"muerto",1)
	carlos.generarUnaCalificacionParaEseJug(martin,8,"crack",2)
	fermin.generarUnaCalificacionParaEseJug(martin,2,"amargo",2)
	//deberia ser 10
	
	p1.agregarALaListaDependientesDeCalificar(fermin)
	carlos.agregarALaListaDependientesDeCalificar(fermin)
	fermin.agregarALaListaDependientesDeCalificar(fermin)
	
	p1.generarUnaCalificacionParaEseJug(fermin,2,"muerto",1)
	carlos.generarUnaCalificacionParaEseJug(fermin,0,"crack",2)
	martin.generarUnaCalificacionParaEseJug(fermin,2,"amargo",2)
	//deberia ser 2
	
	martin.agregarALaListaDependientesDeCalificar(p1)
	carlos.agregarALaListaDependientesDeCalificar(p1)
	fermin.agregarALaListaDependientesDeCalificar(p1)
	
	fermin.generarUnaCalificacionParaEseJug(p1,2,"muerto",1)
	carlos.generarUnaCalificacionParaEseJug(p1,0,"crack",2)
	martin.generarUnaCalificacionParaEseJug(p1,20,"amargo",2)
	//deberia ser 20
	
	
	
	val aux = administrador.organizaElPartidoConVariosCriterios(partidoLleno,criterios,2)
	
	//Assert.assertArrayEquals(newArrayList(martin,carlos,fermin,p1),aux) SI FUNCIONARA ASI ORDENARIA SOLO POR HANDICAP
	
	Assert.assertArrayEquals(newArrayList(carlos,fermin,martin,p1),aux)
	//esta ordenando por n partidos ?????
	
	
	
	
	
}	
@Test 
def funcionaElSizeEn1Iterable(){
	partidoLleno.anotar10JugadoresAlPartido()
	val listaImpares = partidoLleno.participantes.filter[jug|jug.unJugEsImpar(partidoLleno)]
	Assert.assertEquals(5,listaImpares.size)
	
}


@Test
def seDividenLosParticipantesYSeObtienen2EquiposOrdenadoPorParEImpar(){
	this.anotarA10AlPartidoLleno()
	val criterioOrd = new DividirPorParEImpar
	administrador.dividirEquiposPorCriterio(partidoLleno,criterioOrd)
	Assert.assertArrayEquals(newArrayList(p1, p3, p5, p7, p9), partidoLleno.equipo2)
	Assert.assertArrayEquals(newArrayList(p2, p4, p6, p8, p10), partidoLleno.equipo1)
	
}

@Test
def seDividenLosParticipantesYSeObtienen2EquiposOrdenadoPorPar14589(){
	this.anotarA10AlPartidoLleno()
	val criterioOrd = new DividirPorPosicion14589
	administrador.dividirEquiposPorCriterio(partidoLleno,criterioOrd)
	Assert.assertArrayEquals(newArrayList(p1, p4, p5, p8, p9), partidoLleno.equipo1)
	Assert.assertArrayEquals(newArrayList(p2, p3, p6, p7, p10), partidoLleno.equipo2)
	
}

@Test (expected = LaInscripcionEstaCerradaException)
def nadiePuedeInscribirseCuandoSeConfirmanLosEquipos(){
	administrador.confirmarEquipos(partidoLleno)
	carlos.inscribiteA(partidoLleno)
}

@Test (expected = LaInscripcionEstaCerradaException)
def nadiePuedeDarseDeBajaCuandoSeConfirmaronLosEquipos(){
	carlos.inscribiteA(partidoInagural)
	administrador.confirmarEquipos(partidoInagural)
	carlos.darseDeBajaAPartido(partidoInagural)
}

@Test
def unPartidoQueCuerraSuInscripcionMantieneSuListaDeParticipantes(){
	this.anotarA10AlPartidoLleno
	administrador.confirmarEquipos(partidoLleno)
	Assert.assertArrayEquals(newArrayList(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10), partidoLleno.participantes)
}

@Test
def saberElPromedioDeNCalificacionesPedidas(){
	
	partidoInagural.setCodPartido(1)
	partidoLleno.setCodPartido(2)
	partidoNuevo.setCodPartido(3)
	
	p1.agregarALaListaDependientesDeCalificar(carlos)
	martin.agregarALaListaDependientesDeCalificar(carlos)
	fermin.agregarALaListaDependientesDeCalificar(carlos)
	p2.agregarALaListaDependientesDeCalificar(carlos)
	p3.agregarALaListaDependientesDeCalificar(carlos)
	p4.agregarALaListaDependientesDeCalificar(carlos)
	
	p1.generarUnaCalificacionParaEseJug(carlos,40,"muerto",1)
	martin.generarUnaCalificacionParaEseJug(carlos,20,"crack",2)
	fermin.generarUnaCalificacionParaEseJug(carlos,10,"amargo",2)
	p2.generarUnaCalificacionParaEseJug(carlos,5,"amargo",2)
	p3.generarUnaCalificacionParaEseJug(carlos,1,"amargo",2)
	p4.generarUnaCalificacionParaEseJug(carlos,6,"amargo",2)
		
	Assert.assertEquals(4,carlos.promedioDeUltimasNCalificacionesPedidas(partidoNuevo,3))
	}
	

}	