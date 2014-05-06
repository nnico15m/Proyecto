package proyecto;

import java.util.List;
import proyecto.Jugador;
import proyecto.Partido;
import proyecto.TipoDeSuscripcion;

@SuppressWarnings("all")
public class Estandar implements TipoDeSuscripcion {
  public void inscribirSegunTipoDeSuscripcion(final Partido partido, final Jugador jugador) {
    boolean _and = false;
    boolean _quedaLugar = partido.quedaLugar();
    if (!_quedaLugar) {
      _and = false;
    } else {
      List<Jugador> _participantes = partido.getParticipantes();
      boolean _contains = _participantes.contains(jugador);
      boolean _not = (!_contains);
      _and = _not;
    }
    if (_and) {
      List<Jugador> _participantes_1 = partido.getParticipantes();
      _participantes_1.add(jugador);
    }
  }
  
  public boolean sosEstandar(final TipoDeSuscripcion Estandar) {
    return true;
  }
}
