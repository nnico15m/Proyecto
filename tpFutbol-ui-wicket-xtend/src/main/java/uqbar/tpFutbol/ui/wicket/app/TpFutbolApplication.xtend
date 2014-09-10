package uqbar.tpFutbol.ui.wicket.app

import org.apache.wicket.protocol.http.WebApplication
import org.uqbar.commons.utils.ApplicationContext

import uqbar.tpFutbol.domain.Jugador
import uqbar.tpFutbol.domain.HomeJugadores
import uqbar.tpFutbol.ui.wicket.OrganizadorFutbolPage

/**
 * 
 */
class TpFutbolApplication extends WebApplication {
	
	override protected init() {
		super.init()
		
	
		
		ApplicationContext.instance.configureSingleton(Jugador, new HomeJugadores)
		
		
	}
	
	override getHomePage() {
		return OrganizadorFutbolPage
	}
	
}