package proyecto;

import proyecto.Jugador;
import proyecto.Partido;
import proyecto.TipoSuscripcion;

@SuppressWarnings("all")
public class Condicional implements TipoSuscripcion {
  public abstract Object inscribirJugador(final Jugador jugador, final Partido partido);
}
