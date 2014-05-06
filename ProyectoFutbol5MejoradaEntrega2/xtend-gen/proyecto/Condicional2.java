package proyecto;

import java.util.List;
import proyecto.Jugador2;
import proyecto.Partido2;
import proyecto.TipoDeSuscripcionn2;

@SuppressWarnings("all")
public class Condicional2 implements TipoDeSuscripcionn2 {
  public void inscribirSegunTipoDeSuscripcion2(final Partido2 partido2, final Jugador2 jugador2) {
    boolean _and = false;
    boolean _hayLugarParaCondicional = partido2.hayLugarParaCondicional();
    if (!_hayLugarParaCondicional) {
      _and = false;
    } else {
      List<Jugador2> _inscriptosCondicionales = partido2.getInscriptosCondicionales();
      boolean _contains = _inscriptosCondicionales.contains(jugador2);
      boolean _not = (!_contains);
      _and = _not;
    }
    if (_and) {
      List<Jugador2> _inscriptosCondicionales_1 = partido2.getInscriptosCondicionales();
      _inscriptosCondicionales_1.add(jugador2);
    }
  }
}
