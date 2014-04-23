import org.eclipse.xtext.xbase.lib.InputOutput;

@SuppressWarnings("all")
public class Persona {
  public String saludame() {
    return InputOutput.<String>println("Hola");
  }
}
