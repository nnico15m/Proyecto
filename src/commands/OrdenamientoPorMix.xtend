package commands

import proyecto.Partido

class OrdenamientoPorMix implements OrganizadorCommand  {
	
	
		@Property int cantidadDePartido
	
	override def ordenarLaLista(Partido partido,int cantidadDePartido){
		
	}
		
		
	override inicializarCntidadDePartido() {
		
		this.setCantidadDePartido(1)
		
	}		
	
}