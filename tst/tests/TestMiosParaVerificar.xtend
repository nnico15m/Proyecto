package tests

import org.junit.Before
import org.junit.Test
import proyecto.Partido
import proyecto.Jugador
import org.junit.Assert
import proyecto.Estandar
import proyecto.Solidaria
import proyecto.Condicionalimport observers.NotificadorDeAdministradorObserver
import observers.StubMensajero
import proyecto.ElCupoEstaLlenoException
import proyecto.NoSePudoAnotarException

class TestMiosParaVerificar {

			
			var Partido partidoInagural = new Partido
			var Partido partidoLleno = new Partido
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
			var mensajero = new StubMensajero

			

@Before	
		def void init() {
		
			partidoLleno.setObserver(crearObserverDePartido("adminlleno@gmail.com"))
			partidoInagural.setObserver(crearObserverDePartido("admininagural@gmail.com"))
			
			partidoLleno.comunidad.add(p1)
			partidoLleno.comunidad.add(p2)
			partidoLleno.comunidad.add(p3)
			partidoLleno.comunidad.add(p4)
			partidoLleno.comunidad.add(p5)
			partidoLleno.comunidad.add(p6)
			
			
		//	fermin.setFormaDeInscripcion(new Solidaria)
		//	juanesteban.setFormaDeInscripcion(new Estandar)
		//	juanmartin.setFormaDeInscripcion(new Estandar)
		//	lean.setFormaDeInscripcion(new Solidaria)
		//	nico.setFormaDeInscripcion(new Estandar)
		//	lorenzo.setFormaDeInscripcion(new Estandar)
		//	patri.setFormaDeInscripcion(new Solidaria)
		//	berna.setFormaDeInscripcion(new Estandar)
		//	mati.setFormaDeInscripcion(new Estandar)
		//	mateo.setFormaDeInscripcion(new Condicional)
		
		//	p7.setFormaDeInscripcion(new Estandar)
		//	p8.setFormaDeInscripcion(new Estandar)
		//	p9.setFormaDeInscripcion(new Estandar)
		//	p10.setFormaDeInscripcion(new Estandar)
			
			partidoInagural.comunidad.add(carlos)
			partidoInagural.comunidad.add(martin)
			partidoInagural.comunidad.add(juan)
		//	partidoInagural.comunidad.add(fermin)
		//	partidoInagural.comunidad.add(juanesteban)
		//	partidoInagural.comunidad.add(juanmartin)
		//	partidoInagural.comunidad.add(lean)
		//	partidoInagural.comunidad.add(nico)
		//	partidoInagural.comunidad.add(berna)
		//	partidoInagural.comunidad.add(lorenzo)
		//	partidoInagural.comunidad.add(patri)
		//	partidoInagural.comunidad.add(fede)
		//	partidoInagural.comunidad.add(mati)
		//	partidoInagural.comunidad.add(mateo)
		//	partidoInagural.comunidad.add(baldomero)
		//	partidoInagural.comunidad.add(manu)
		//	partidoInagural.comunidad.add(joaquin)
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
	
			partidoLleno.comunidad.add(p11)
			
			partidoLleno.comunidad.add(martin)
			partidoLleno.comunidad.add(carlos)
			partidoLleno.comunidad.add(juan)
			partidoLleno.comunidad.add(fermin)
			
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
			

@Test			
	def verificarQueUnParticipanteQueEstaEnLaComunidadPuedeInscribirse(){
		carlos.setFormaDeInscripcion(new Estandar)
		partidoInagural.inscribiSiPodesA(carlos)
		Assert.assertTrue(partidoInagural.participantes.contains(carlos))
		
	}

@Test (expected = NoSePudoAnotarException)
	def unParticipanteQueNoEstaEnLaComunidadNoPuedeInscribirse(){
		p7.setFormaDeInscripcion(new Estandar)
		partidoInagural.inscribiSiPodesA(p7)
	}
	
@Test
 def siSeInscriben2Hay2Participantes(){
 		carlos.setFormaDeInscripcion(new Estandar)
 		martin.setFormaDeInscripcion(new Condicional)
 		partidoInagural.inscribiSiPodesA(carlos)
 		partidoInagural.inscribiSiPodesA(martin)
 		
 	 	Assert.assertTrue(partidoInagural.participantes.size ==2)
 }
 
@Test (expected = NoSePudoAnotarException)
	def unJugadorNoSePuedeAnotarDosVecesAlMismoPartido(){
		carlos.setFormaDeInscripcion(new Estandar)
		partidoInagural.inscribiSiPodesA(carlos)
		carlos.setFormaDeInscripcion(new Solidaria)
		partidoInagural.inscribiSiPodesA(carlos)
	}
 
@Test
def agregoEstandarAUnPartidoLleno(){
			
			p1.setFormaDeInscripcion(new Estandar)
			p2.setFormaDeInscripcion(new Estandar)
			p3.setFormaDeInscripcion(new Solidaria)
			p4.setFormaDeInscripcion(new Condicional)
			p5.setFormaDeInscripcion(new Estandar)
			p6.setFormaDeInscripcion(new Estandar)
			p7.setFormaDeInscripcion(new Estandar)
			p8.setFormaDeInscripcion(new Estandar)
			p9.setFormaDeInscripcion(new Estandar)
			p10.setFormaDeInscripcion(new Estandar)
			p11.setFormaDeInscripcion(new Estandar)
			this.anotarALos11PAlPartidoLleno()
			Assert.assertTrue(partidoLleno.participantes.contains(p11))
		
		}
		
@Test
def filtrarLalista(){
			
		carlos.setFormaDeInscripcion(new Estandar)
 		martin.setFormaDeInscripcion(new Condicional)
 		partidoInagural.inscribiSiPodesA(carlos)
 	 	partidoInagural.inscribiSiPodesA(martin)
 		
		Assert.assertEquals(1,partidoInagural.participantes.filter[prioridad ==(0)].size)
	
		}
		
@Test
def verificarQueSacaElDeMenosPrioridad(){
			p2.setFormaDeInscripcion(new Estandar)
			p1.setFormaDeInscripcion(new Estandar)
			p3.setFormaDeInscripcion(new Solidaria)
			p4.setFormaDeInscripcion(new Condicional)
			p5.setFormaDeInscripcion(new Estandar)
			p6.setFormaDeInscripcion(new Estandar)
			p7.setFormaDeInscripcion(new Estandar)
			p8.setFormaDeInscripcion(new Estandar)
			p9.setFormaDeInscripcion(new Estandar)
			p10.setFormaDeInscripcion(new Estandar)
			p11.setFormaDeInscripcion(new Estandar)
			this.anotarALos11PAlPartidoLleno()
			Assert.assertFalse(partidoLleno.participantes.contains(p4))
}

@Test 

def verificoSiMeSacaAlCondicionalQueYoQuieroQueEseSeaElPrimeroQueSeAnota(){
	
			p2.setFormaDeInscripcion(new Estandar)
			p1.setFormaDeInscripcion(new Condicional)
			p3.setFormaDeInscripcion(new Solidaria)
			p4.setFormaDeInscripcion(new Condicional)
			p5.setFormaDeInscripcion(new Estandar)
			p6.setFormaDeInscripcion(new Estandar)
			p7.setFormaDeInscripcion(new Estandar)
			p8.setFormaDeInscripcion(new Condicional)
			p9.setFormaDeInscripcion(new Estandar)
			p10.setFormaDeInscripcion(new Estandar)
			p11.setFormaDeInscripcion(new Estandar)
			this.anotarALos11PAlPartidoLleno()
	
	Assert.assertFalse(partidoLleno.participantes.contains(p1))
	
}

@Test
def SiAgrego1SolidarioA1PartidoLlenoSacaElCondicional(){
			p2.setFormaDeInscripcion(new Estandar)
			p1.setFormaDeInscripcion(new Estandar)
			p3.setFormaDeInscripcion(new Solidaria)
			p4.setFormaDeInscripcion(new Condicional)
			p5.setFormaDeInscripcion(new Condicional)
			p6.setFormaDeInscripcion(new Estandar)
			p7.setFormaDeInscripcion(new Estandar)
			p8.setFormaDeInscripcion(new Estandar)
			p9.setFormaDeInscripcion(new Estandar)
			p10.setFormaDeInscripcion(new Estandar)
			p11.setFormaDeInscripcion(new Solidaria)
			this.anotarALos11PAlPartidoLleno()
			Assert.assertFalse(partidoLleno.participantes.contains(p4))
			Assert.assertTrue(partidoLleno.participantes.contains(p11))
}

@Test (expected = ElCupoEstaLlenoException)
def SiAgrego1CondicionalAlPartidoLlenoConEstandaresYSolidariosNoLoAnota(){
			p2.setFormaDeInscripcion(new Estandar)
			p1.setFormaDeInscripcion(new Estandar)
			p3.setFormaDeInscripcion(new Solidaria)
			p4.setFormaDeInscripcion(new Solidaria)
			p5.setFormaDeInscripcion(new Solidaria)
			p6.setFormaDeInscripcion(new Estandar)
			p7.setFormaDeInscripcion(new Estandar)
			p8.setFormaDeInscripcion(new Estandar)
			p9.setFormaDeInscripcion(new Estandar)
			p10.setFormaDeInscripcion(new Estandar)
			p11.setFormaDeInscripcion(new Condicional)
			this.anotarALos11PAlPartidoLleno()
}


@Test
def doyDeBajaAUnJugadorYDejaDeEstarEnLaLista(){
	p9.setFormaDeInscripcion(new Estandar)
	partidoLleno.inscribiSiPodesA(p9)
	Assert.assertTrue(partidoLleno.participantes.contains(p9))
	p9.darseDeBajaAPartido(partidoLleno)
	Assert.assertFalse(partidoLleno.participantes.contains(p9))
	
}

@Test
def doyDeBajaAUnJugadorProponiendoReemplazanteSeEfectuaElCambio(){
	carlos.setFormaDeInscripcion(new Estandar)
 	martin.setFormaDeInscripcion(new Condicional)
 	partidoInagural.inscribiSiPodesA(carlos)
 	carlos.darseDeBajaAPartidoTeniendoReemplazante(partidoInagural, martin)
 		
 	Assert.assertTrue(partidoInagural.participantes.contains(martin))
 	Assert.assertFalse(partidoInagural.participantes.contains(carlos))
}

@Test
def reinscribirAUnJugadorEstandarConUnaSuscripcionCondicional(){
	carlos.setFormaDeInscripcion(new Estandar)
	partidoInagural.inscribiSiPodesA(carlos)
	partidoInagural.reinscribiA(carlos, new Condicional)
	
	Assert.assertTrue(partidoInagural.participantes.exists[jugador| jugador.prioridad == 2])
	Assert.assertFalse(partidoInagural.participantes.exists[jugador| jugador.prioridad == 0])
}

@Test
def siUnJugadorSeDaDeBajaSinProponerReemplazanteSeLoSanciona(){
	carlos.setFormaDeInscripcion(new Estandar)
	partidoInagural.inscribiSiPodesA(carlos)
	carlos.darseDeBajaAPartido(partidoInagural)
	
	Assert.assertTrue(carlos.infracciones.length == 1)
}

@Test
def cuandoUnoSeDaDeBajaYHabia10ParticipantesAvisoAlAdministrador(){
	p1.setFormaDeInscripcion(new Estandar)
	p2.setFormaDeInscripcion(new Estandar)
	p3.setFormaDeInscripcion(new Solidaria)
	p4.setFormaDeInscripcion(new Condicional)
	p5.setFormaDeInscripcion(new Estandar)
	p6.setFormaDeInscripcion(new Estandar)
	p7.setFormaDeInscripcion(new Estandar)
	p8.setFormaDeInscripcion(new Estandar)
	p9.setFormaDeInscripcion(new Estandar)
	p10.setFormaDeInscripcion(new Estandar)
	this.anotarA10AlPartidoLleno()
	p9.darseDeBajaAPartido(partidoLleno)
	
	Assert.assertTrue(this.mensajero.cantMailsEnviadosConMotivoDe("Se bajo uno") == 1)
}

def anotarALos11PAlPartidoLleno(){
			this.anotarA10AlPartidoLleno()
			partidoLleno.inscribiSiPodesA(p11)
}

def anotarA10AlPartidoLleno(){
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

@Test
def seEnviaUnMailAlAdministradorCuandoSeAnotan10AlPartido(){
	
			p1.setFormaDeInscripcion(new Estandar)
			p2.setFormaDeInscripcion(new Estandar)
			p3.setFormaDeInscripcion(new Solidaria)
			p4.setFormaDeInscripcion(new Condicional)
			p5.setFormaDeInscripcion(new Estandar)
			p6.setFormaDeInscripcion(new Estandar)
			p7.setFormaDeInscripcion(new Estandar)
			p8.setFormaDeInscripcion(new Estandar)
			p9.setFormaDeInscripcion(new Estandar)
			p10.setFormaDeInscripcion(new Estandar)
			this.anotarA10AlPartidoLleno()
			Assert.assertTrue(this.mensajero.cantMailsEnviadosA("adminlleno@gmail.com") == 1)
	
}

@Test
def cuandoSeAnotaUnJugadorLeMandaMailsASus2Amigos(){
	juan.amigos.add(martin)
	juan.amigos.add(carlos)
	juan.setFormaDeInscripcion(new Estandar)
	partidoInagural.inscribiSiPodesA(juan)
	
	Assert.assertTrue(this.mensajero.mailsEnviados.length == 2)
	Assert.assertTrue(this.mensajero.cantMailsEnviadosA("carlos@gmail.com") == 1)
	Assert.assertTrue(this.mensajero.cantMailsEnviadosA("martin@gmail.com") == 1)
}
	

}
