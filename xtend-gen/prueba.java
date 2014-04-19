import org.eclipse.xtext.xbase.lib.InputOutput;

@SuppressWarnings("all")
public class prueba {
  public static void main(final String[] args) {
    InputOutput.<String>println("Hello World- lo modifique y funciona- probando 1er commit");
    Persona pepe = new Persona();
    pepe.saludame();
  }
}
