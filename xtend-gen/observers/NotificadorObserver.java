package observers;

import proyecto.Jugador;
import proyecto.Partido;

@SuppressWarnings("all")
public abstract class NotificadorObserver {
  public void avisarPartidoConfirmado(final Partido partido) {
  }
  
  public abstract void avisarQueSeBajoUno(final Partido partido, final Jugador jugador);
  
  public abstract void avisarALosAmigos(final Partido partido, final Jugador jugador);
}
