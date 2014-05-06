package proyecto;

import java.util.List;
import proyecto.Jugador;
import proyecto.Partido;
import proyecto.TipoDeSuscripcion;

@SuppressWarnings("all")
public class Condicional implements TipoDeSuscripcion {
  public void inscribirSegunTipoDeSuscripcion(final Partido partido, final Jugador jugador) {
    boolean _and = false;
    boolean _hayLugarParaCondicional = partido.hayLugarParaCondicional();
    if (!_hayLugarParaCondicional) {
      _and = false;
    } else {
      List<Jugador> _inscriptosCondicionales = partido.getInscriptosCondicionales();
      boolean _contains = _inscriptosCondicionales.contains(jugador);
      boolean _not = (!_contains);
      _and = _not;
    }
    if (_and) {
      List<Jugador> _inscriptosCondicionales_1 = partido.getInscriptosCondicionales();
      _inscriptosCondicionales_1.add(jugador);
    }
  }
}
