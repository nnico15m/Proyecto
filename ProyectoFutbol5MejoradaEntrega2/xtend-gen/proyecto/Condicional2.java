package proyecto;

import java.util.List;
import proyecto.Jugador2;
import proyecto.Partido2;
import proyecto.TipoDeSuscripcionn2;

@SuppressWarnings("all")
public class Condicional2 implements TipoDeSuscripcionn2 {
  public void inscribirSegunTipoDeSuscripcion2(final Partido2 partido2, final Jugador2 jugador2) {
    boolean _and = false;
    TipoDeSuscripcionn2 _formaDeInscripcion = jugador2.getFormaDeInscripcion();
    boolean _sosCondicional2 = this.sosCondicional2(_formaDeInscripcion);
    if (!_sosCondicional2) {
      _and = false;
    } else {
      boolean _hayLugarParaCondicional = partido2.hayLugarParaCondicional();
      _and = _hayLugarParaCondicional;
    }
    if (_and) {
      List<Jugador2> _inscriptosCondicionales = partido2.getInscriptosCondicionales();
      _inscriptosCondicionales.add(jugador2);
    }
  }
  
  public boolean sosCondicional2(final TipoDeSuscripcionn2 Condicional2) {
    return true;
  }
}
