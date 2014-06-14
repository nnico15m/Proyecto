package commands


import proyecto.Partido
import java.util.List
import proyecto.Jugador

interface OrganizadorCommand {
	
	
	
	def void inicializarCntidadDePartido()
	
	
	def List<Jugador> ordenarLaLista(Partido partido,int n)
	
	def int obtenerValor(Partido partido,Jugador jugador)
	
	
	
	
	
}