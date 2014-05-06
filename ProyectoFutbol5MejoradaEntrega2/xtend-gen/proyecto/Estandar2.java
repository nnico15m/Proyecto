package proyecto;

import java.util.List;
import proyecto.Jugador2;
import proyecto.Partido2;
import proyecto.TipoDeSuscripcionn2;

@SuppressWarnings("all")
public class Estandar2 implements TipoDeSuscripcionn2 {
  public void inscribirSegunTipoDeSuscripcion2(final Partido2 partido2, final Jugador2 jugador2) {
    boolean _and = false;
    boolean _quedaLugar = partido2.quedaLugar();
    if (!_quedaLugar) {
      _and = false;
    } else {
      List<Jugador2> _participantes = partido2.getParticipantes();
      boolean _contains = _participantes.contains(jugador2);
      boolean _not = (!_contains);
      _and = _not;
    }
    if (_and) {
      List<Jugador2> _participantes_1 = partido2.getParticipantes();
      _participantes_1.add(jugador2);
    }
  }
  
  public boolean sosEstandar2(final TipoDeSuscripcionn2 Estandar2) {
    return true;
  }
}
