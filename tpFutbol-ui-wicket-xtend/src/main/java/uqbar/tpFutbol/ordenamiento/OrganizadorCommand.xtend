package uqbar.tpFutbol.ordenamiento


import uqbar.tpFutbol.domain.Partido
import uqbar.tpFutbol.domain.Jugador
import java.util.List

interface OrganizadorCommand {
	
	
	
	def void inicializarCntidadDePartido()
	
	
	def List<Jugador> ordenarLaLista(Partido partido,int n)
	//def Partido ordenarLaListaPrueba(Partido partido,int n)
	def List<Jugador> ordenarLaListaPrueba(Partido partido,int n)
	def int obtenerValor(Partido partido,Jugador jugador, int n)
	
	
	
	
	
}