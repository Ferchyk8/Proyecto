import org.jpl7.*;

public class Main {
    public static void main(String[] args) {
        // Cargar archivo Prolog
        Query q1 = new Query("consult('kb.pl')");
        System.out.println("Consultando kb.pl: " + (q1.hasSolution() ? "OK" : "Error"));

        // Aprobar matemáticas1 para juan
        Query q2 = new Query("aprobar(juan, matematicas1)");
        q2.hasSolution();

        // Consultar si puede inscribirse en matemáticas2
        Query q3 = new Query("puede_inscribirse(juan, X)");
        System.out.println("Cursos a los que puede inscribirse Juan:");
        while (q3.hasMoreSolutions()) {
            java.util.Map<String, Term> sol = q3.nextSolution();
            System.out.println("- " + sol.get("X"));
        }
    }
}
