package proyecto;

import java.util.List;
import proyecto.Jugador2;
import proyecto.Partido2;
import proyecto.TipoDeSuscripcionn2;

@SuppressWarnings("all")
public class Estandar2 implements TipoDeSuscripcionn2 {
  public void inscribirSegunTipoDeSuscripcion2(final Partido2 partido2, final Jugador2 jugador2) {
    boolean _and = false;
    TipoDeSuscripcionn2 _formaDeInscripcion = jugador2.getFormaDeInscripcion();
    boolean _sosEstandar2 = this.sosEstandar2(_formaDeInscripcion);
    if (!_sosEstandar2) {
      _and = false;
    } else {
      boolean _quedaLugar = partido2.quedaLugar();
      _and = _quedaLugar;
    }
    if (_and) {
      List<Jugador2> _participantes = partido2.getParticipantes();
      _participantes.add(jugador2);
    }
  }
  
  public boolean sosEstandar2(final TipoDeSuscripcionn2 Estandar2) {
    return true;
  }
}
