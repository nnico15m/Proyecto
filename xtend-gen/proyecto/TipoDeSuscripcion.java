package proyecto;

import proyecto.Jugador;
import proyecto.Partido;

@SuppressWarnings("all")
public interface TipoDeSuscripcion {
  public abstract void inscribirSegunTipoDeSuscripcion(final Partido partido, final Jugador jugador);
}
