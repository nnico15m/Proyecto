package proyecto;

import com.google.common.base.Objects;
import java.util.List;
import proyecto.Jugador;
import proyecto.Partido;
import proyecto.TipoSuscripcion;

@SuppressWarnings("all")
public class Condicional implements TipoSuscripcion {
  public void inscribirSegunTipoDeSuscripcion(final Partido partido, final Jugador jugador) {
    String nombreDeClase = "Condicional";
    String _estiloParaPartido = jugador.getEstiloParaPartido();
    boolean _equals = Objects.equal(nombreDeClase, _estiloParaPartido);
    if (_equals) {
      List<Jugador> _inscriptosCondicionales = partido.getInscriptosCondicionales();
      _inscriptosCondicionales.add(jugador);
    }
  }
}
