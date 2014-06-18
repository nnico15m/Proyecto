package observers

class NotificadorDeAdministradorObserver {
	
	@Property String mailAdministrador
	@Property StubMensajero mensajero
	
	def avisarPartidoConfirmado(){
		
		new StubMensajero().mandaMail(mailAdministrador, "Partido Confirmado")
		
	}
	
	def avisarQueSeBajoUno() {
		
		new StubMensajero().mandaMail(mailAdministrador, "Se bajo uno")
		
	}
	

}