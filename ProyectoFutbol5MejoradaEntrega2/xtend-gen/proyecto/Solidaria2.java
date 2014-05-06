package proyecto;

import java.util.List;
import proyecto.Jugador2;
import proyecto.Partido2;
import proyecto.TipoDeSuscripcionn2;

@SuppressWarnings("all")
public class Solidaria2 implements TipoDeSuscripcionn2 {
  public void inscribirSegunTipoDeSuscripcion2(final Partido2 partido2, final Jugador2 jugador2) {
    boolean _and = false;
    TipoDeSuscripcionn2 _formaDeInscripcion = jugador2.getFormaDeInscripcion();
    boolean _sosSolidario = this.sosSolidario(_formaDeInscripcion);
    if (!_sosSolidario) {
      _and = false;
    } else {
      boolean _hayLugarParaSolidario = partido2.hayLugarParaSolidario();
      _and = _hayLugarParaSolidario;
    }
    if (_and) {
      List<Jugador2> _inscriptosSolidarios = partido2.getInscriptosSolidarios();
      _inscriptosSolidarios.add(jugador2);
    }
  }
  
  public boolean sosSolidario(final TipoDeSuscripcionn2 Solidaria2) {
    return true;
  }
}
