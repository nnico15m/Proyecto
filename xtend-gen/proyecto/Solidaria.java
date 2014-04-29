package proyecto;

import com.google.common.base.Objects;
import java.util.List;
import proyecto.Jugador;
import proyecto.Partido;
import proyecto.TipoSuscripcion;

@SuppressWarnings("all")
public class Solidaria implements TipoSuscripcion {
  public void inscribirSegunTipoDeSuscripcion(final Partido partido, final Jugador jugador) {
    String nombreDeClase = "Solidaria";
    String _estiloParaPartido = jugador.getEstiloParaPartido();
    boolean _equals = Objects.equal(nombreDeClase, _estiloParaPartido);
    if (_equals) {
      List<Jugador> _inscriptosSolidarios = partido.getInscriptosSolidarios();
      _inscriptosSolidarios.add(jugador);
    }
    List<Jugador> _inscriptosSolidarios_1 = partido.getInscriptosSolidarios();
    _inscriptosSolidarios_1.add(jugador);
  }
}
