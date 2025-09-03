import javax.swing.JOptionPane;

public class SaludoPorHora {
    public static void main(String[] args) {
        // Pedir la hora
        String input = JOptionPane.showInputDialog("Introduce la hora (0 - 23):");
        
        try {
            int hora = Integer.parseInt(input);

            if (hora < 0 || hora > 23) {
                JOptionPane.showMessageDialog(null, "La hora debe estar entre 0 y 23.");
            } else {
                String mensaje;

                switch (hora) {
                    // Buenos días (6 a 12)
                    case 6: case 7: case 8: case 9: case 10: case 11: case 12:
                        mensaje = "¡Buenos días!";
                        break;

                    // Buenas tardes (13 a 20)
                    case 13: case 14: case 15: case 16: case 17: case 18: case 19: case 20:
                        mensaje = "¡Buenas tardes!";
                        break;

                    // Buenas noches (21 a 23 y 0 a 5)
                    case 21: case 22: case 23:
                    case 0: case 1: case 2: case 3: case 4: case 5:
                        mensaje = "¡Buenas noches!";
                        break;

                    default:
                        mensaje = "Hora no válida.";
                }

                JOptionPane.showMessageDialog(null, mensaje);
            }

        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(null, "Debes ingresar un número entero.");
        }
    }
}
