package proyecto;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.xtext.xbase.lib.Conversions;
import proyecto.Jugador2;

@SuppressWarnings("all")
public class Partido2 {
  private double _fecha;
  
  public double getFecha() {
    return this._fecha;
  }
  
  public void setFecha(final double fecha) {
    this._fecha = fecha;
  }
  
  private double _hora;
  
  public double getHora() {
    return this._hora;
  }
  
  public void setHora(final double hora) {
    this._hora = hora;
  }
  
  private List<Jugador2> _participantes = new ArrayList<Jugador2>();
  
  public List<Jugador2> getParticipantes() {
    return this._participantes;
  }
  
  public void setParticipantes(final List<Jugador2> participantes) {
    this._participantes = participantes;
  }
  
  private List<Jugador2> _inscriptosSolidarios = new ArrayList<Jugador2>();
  
  public List<Jugador2> getInscriptosSolidarios() {
    return this._inscriptosSolidarios;
  }
  
  public void setInscriptosSolidarios(final List<Jugador2> inscriptosSolidarios) {
    this._inscriptosSolidarios = inscriptosSolidarios;
  }
  
  private List<Jugador2> _inscriptosCondicionales = new ArrayList<Jugador2>();
  
  public List<Jugador2> getInscriptosCondicionales() {
    return this._inscriptosCondicionales;
  }
  
  public void setInscriptosCondicionales(final List<Jugador2> inscriptosCondicionales) {
    this._inscriptosCondicionales = inscriptosCondicionales;
  }
  
  public void inscribimeApartido(final Jugador2 jugador2) {
    jugador2.ComoTeQueresInscribir(this);
  }
  
  public boolean quedaLugar() {
    int _cantParticipantes = this.cantParticipantes();
    return (_cantParticipantes < 10);
  }
  
  public boolean hayLugarParaSolidario() {
    int _cantParticipantes = this.cantParticipantes();
    int _cantSolidarios = this.cantSolidarios();
    int _plus = (_cantParticipantes + _cantSolidarios);
    return (_plus < 10);
  }
  
  public boolean hayLugarParaCondicional() {
    int _cantParticipantes = this.cantParticipantes();
    int _cantSolidarios = this.cantSolidarios();
    int _plus = (_cantParticipantes + _cantSolidarios);
    int _cantCondicionales = this.cantCondicionales();
    int _plus_1 = (_plus + _cantCondicionales);
    return (_plus_1 < 10);
  }
  
  public int cantCondicionales() {
    List<Jugador2> _inscriptosCondicionales = this.getInscriptosCondicionales();
    return ((Object[])Conversions.unwrapArray(_inscriptosCondicionales, Object.class)).length;
  }
  
  public int cantParticipantes() {
    List<Jugador2> _participantes = this.getParticipantes();
    return ((Object[])Conversions.unwrapArray(_participantes, Object.class)).length;
  }
  
  public int cantSolidarios() {
    List<Jugador2> _inscriptosSolidarios = this.getInscriptosSolidarios();
    return ((Object[])Conversions.unwrapArray(_inscriptosSolidarios, Object.class)).length;
  }
}
