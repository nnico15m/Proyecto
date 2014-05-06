package proyecto;

import java.util.List;
import proyecto.Jugador2;
import proyecto.Partido2;
import proyecto.TipoDeSuscripcionn2;

@SuppressWarnings("all")
public class Solidaria2 implements TipoDeSuscripcionn2 {
  public void inscribirSegunTipoDeSuscripcion2(final Partido2 partido2, final Jugador2 jugador2) {
    boolean _and = false;
    boolean _hayLugarParaSolidario = partido2.hayLugarParaSolidario();
    if (!_hayLugarParaSolidario) {
      _and = false;
    } else {
      List<Jugador2> _inscriptosSolidarios = partido2.getInscriptosSolidarios();
      boolean _contains = _inscriptosSolidarios.contains(jugador2);
      boolean _not = (!_contains);
      _and = _not;
    }
    if (_and) {
      List<Jugador2> _inscriptosSolidarios_1 = partido2.getInscriptosSolidarios();
      _inscriptosSolidarios_1.add(jugador2);
    }
  }
}
