package proyecto;

public interface TipoSuscripcion { //Interface en donde solo defino el metodo para el mensaje que proviene de partido
// lo que hago es inscribir segun el tipo de suscripcion y paso como parametro el partido para que agregue a la lsita correspondiente
// pues es el que maneja todas las listas,y el jugador lo paso para poder inscribirlo	
	void inscribirSegunTipoDeSuscripcion(Partido partido,Jugador jugador);
	
	
}
