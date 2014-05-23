package tests

import org.junit.Before
import org.junit.Test
import proyecto.Partido
import proyecto.Jugador
import org.junit.Assert
import proyecto.Estandar
import proyecto.Solidaria
import proyecto.Condicional


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

			

			

@Before	
		def void init() {
		
		
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
		//	partidoInagural.comunidad.add(juan)
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
			partidoLleno.comunidad.add(p8)
			partidoLleno.comunidad.add(p9)
			partidoLleno.comunidad.add(p10)
	
			partidoLleno.comunidad.add(p11)
			
			partidoLleno.comunidad.add(martin)
			partidoLleno.comunidad.add(carlos)
			partidoLleno.comunidad.add(juan)
			partidoLleno.comunidad.add(fermin)
			
			
			
			

			
			
			}

@Test			
	def verificarQueUnParticipanteQueEstaEnLaComunidadPuedeInscribirse(){
		carlos.setFormaDeInscripcion(new Estandar)
		partidoInagural.inscribirSiHayLugarA(carlos)
		Assert.assertTrue(partidoInagural.participantes.contains(carlos))
		
		}


	
@Test
 def siSeInscriben2Hay2Participantes(){
 		carlos.setFormaDeInscripcion(new Estandar)
 		martin.setFormaDeInscripcion(new Condicional)
 		partidoInagural.inscribirSiHayLugarA(carlos)
 	 	partidoInagural.inscribirSiHayLugarA(martin)
 	
 	

	Assert.assertTrue(partidoInagural.participantes.size ==2)
 }	
 
@Test
def agregoEstandarAUnPartidoLleno(){
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
			partidoLleno.participantes.add(p1)
			partidoLleno.participantes.add(p2)
			partidoLleno.participantes.add(p3)
			partidoLleno.participantes.add(p4)
			partidoLleno.participantes.add(p5)
			partidoLleno.participantes.add(p6)
			partidoLleno.participantes.add(p7)
			partidoLleno.participantes.add(p8)
			partidoLleno.participantes.add(p9)
			partidoLleno.participantes.add(p10)
			partidoLleno.inscribirSiHayLugarA(p11)
			Assert.assertTrue(partidoLleno.participantes.contains(p11))
 
 			
			
		}
@Test
def filtrarLalista(){
			
		carlos.setFormaDeInscripcion(new Estandar)
 		martin.setFormaDeInscripcion(new Condicional)
 		partidoInagural.inscribirSiHayLugarA(carlos)
 	 	partidoInagural.inscribirSiHayLugarA(martin)
 	
			
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
			partidoLleno.participantes.add(p1)
			partidoLleno.participantes.add(p2)
			partidoLleno.participantes.add(p3)
			partidoLleno.participantes.add(p4)
			partidoLleno.participantes.add(p5)
			partidoLleno.participantes.add(p6)
			partidoLleno.participantes.add(p7)
			partidoLleno.participantes.add(p8)
			partidoLleno.participantes.add(p9)
			partidoLleno.participantes.add(p10)
			partidoLleno.inscribirSiHayLugarA(p11)
			Assert.assertFalse(partidoLleno.participantes.contains(p4))
			
	
}

	}