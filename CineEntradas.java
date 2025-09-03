import javax.swing.JOptionPane;

public class CineEntradas {
    public static void main(String[] args) {
        try {
            // Precio base
            final double PRECIO_BASE = 50.0;
            final double PRECIO_MIERCOLES = 30.0;
            final double PRECIO_PAREJA_JUEVES = 75.0;
            final double DESCUENTO_MEMBRESIA = 0.10;

            // Entrada de datos
            int personas = Integer.parseInt(JOptionPane.showInputDialog("Introduce el número de personas:"));
            String dia = JOptionPane.showInputDialog("Introduce el día de la semana (ej: lunes, martes, ...):").toLowerCase();
            int membresia = JOptionPane.showConfirmDialog(null, "¿Cuentas con membresía?", "Membresía", JOptionPane.YES_NO_OPTION);

            double total = 0.0;

            switch (dia) {
                case "miércoles":
                case "miercoles": // permitir sin tilde
                    total = personas * PRECIO_MIERCOLES;
                    break;

                case "jueves":
                    int parejas = personas / 2;
                    int sobrante = personas % 2;
                    total = (parejas * PRECIO_PAREJA_JUEVES) + (sobrante * PRECIO_BASE);
                    break;

                default:
                    total = personas * PRECIO_BASE;
                    break;
            }

            // Aplicar descuento por membresía
            if (membresia == JOptionPane.YES_OPTION) {
                total -= total * DESCUENTO_MEMBRESIA;
            }

            // Mostrar resultado
            JOptionPane.showMessageDialog(null, "El precio total es: $" + total);

        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(null, "Debes ingresar un número válido.");
        }
    }
}

