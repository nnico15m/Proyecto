package proyecto;

import java.util.List;
import proyecto.Jugador;
import proyecto.Partido;
import proyecto.TipoDeSuscripcion;

@SuppressWarnings("all")
public class Solidaria implements TipoDeSuscripcion {
  public void inscribirSegunTipoDeSuscripcion(final Partido partido, final Jugador jugador) {
    boolean _and = false;
    boolean _hayLugarParaSolidario = partido.hayLugarParaSolidario();
    if (!_hayLugarParaSolidario) {
      _and = false;
    } else {
      List<Jugador> _inscriptosSolidarios = partido.getInscriptosSolidarios();
      boolean _contains = _inscriptosSolidarios.contains(jugador);
      boolean _not = (!_contains);
      _and = _not;
    }
    if (_and) {
      List<Jugador> _inscriptosSolidarios_1 = partido.getInscriptosSolidarios();
      _inscriptosSolidarios_1.add(jugador);
    }
  }
}
