import javax.swing.JOptionPane;

public class Pasteleria {
    public static void main(String[] args) {
        try {
            double total = 0.0;
            String sabor = JOptionPane.showInputDialog("¿De qué sabor quieres la tarta?\n- manzana\n- fresa\n- chocolate").toLowerCase();

            // Selección de sabor
            switch (sabor) {
                case "manzana":
                    total = 200;
                    break;
                case "fresa":
                    total = 250;
                    break;
                case "chocolate":
                    String tipoChocolate = JOptionPane.showInputDialog("¿Quieres chocolate negro o blanco?").toLowerCase();
                    if (tipoChocolate.equals("negro")) {
                        total = 280;
                    } else if (tipoChocolate.equals("blanco")) {
                        total = 300;
                    } else {
                        JOptionPane.showMessageDialog(null, "Opción inválida, se asignará chocolate negro por defecto.");
                        total = 280;
                    }
                    break;
                default:
                    JOptionPane.showMessageDialog(null, "Sabor inválido, se asignará tarta de manzana por defecto.");
                    total = 200;
            }

            // Preguntar por snacks adicionales
            int agregarSnack = JOptionPane.showConfirmDialog(null, "¿Deseas agregar snacks? (+$25 cada uno)", "Snacks", JOptionPane.YES_NO_OPTION);
            if (agregarSnack == JOptionPane.YES_OPTION) {
                int numSnacks = Integer.parseInt(JOptionPane.showInputDialog("¿Cuántos snacks deseas añadir?"));
                total += numSnacks * 25;
            }

            // Preguntar por personalización con nombre
            int personalizar = JOptionPane.showConfirmDialog(null, "¿Quieres personalizar la tarta con un nombre? (+$30)", "Personalización", JOptionPane.YES_NO_OPTION);
            if (personalizar == JOptionPane.YES_OPTION) {
                String nombre = JOptionPane.showInputDialog("Escribe el nombre para la tarta:");
                total += 30;
            }

            // Mostrar presupuesto final
            JOptionPane.showMessageDialog(null, "El precio total de tu tarta es: $" + total);

        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(null, "Debes ingresar un número válido.");
        }
    }
}
