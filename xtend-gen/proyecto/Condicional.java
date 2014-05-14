package proyecto;

import proyecto.Jugador;
import proyecto.Partido;
import proyecto.TipoDeSuscripcion;

@SuppressWarnings("all")
public class Condicional implements TipoDeSuscripcion {
  private int _prioridad = 2;
  
  public int getPrioridad() {
    return this._prioridad;
  }
  
  public void setPrioridad(final int prioridad) {
    this._prioridad = prioridad;
  }
  
  public void inscribirSegunTipoDeSuscripcion(final Partido partido, final Jugador jugador) {
    partido.inscribirCondicional(jugador);
  }
  
  public int prioridad() {
    return this.prioridad();
  }
}
