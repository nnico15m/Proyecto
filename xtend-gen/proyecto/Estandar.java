package proyecto;

import com.google.common.base.Objects;
import java.util.List;
import org.eclipse.xtext.xbase.lib.Conversions;
import proyecto.Jugador;
import proyecto.Partido;
import proyecto.TipoSuscripcion;

@SuppressWarnings("all")
public class Estandar implements TipoSuscripcion {
  public void inscribirSegunTipoDeSuscripcion(final Partido partido, final Jugador jugador) {
    String nombreDeClase = "Estandar";
    boolean _and = false;
    List<Jugador> _participantes = partido.getParticipantes();
    int _length = ((Object[])Conversions.unwrapArray(_participantes, Object.class)).length;
    boolean _lessThan = (_length < 10);
    if (!_lessThan) {
      _and = false;
    } else {
      String _estiloParaPartido = jugador.getEstiloParaPartido();
      boolean _equals = Objects.equal(nombreDeClase, _estiloParaPartido);
      _and = _equals;
    }
    if (_and) {
      List<Jugador> _participantes_1 = partido.getParticipantes();
      _participantes_1.add(jugador);
    }
  }
}
