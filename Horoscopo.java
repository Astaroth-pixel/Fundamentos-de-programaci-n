import javax.swing.JOptionPane;

public class Horoscopo {
    public static void main(String[] args) {
        try {
            // Pedir día y mes
            int dia = Integer.parseInt(JOptionPane.showInputDialog("Introduce tu día de nacimiento (1-31):"));
            int mes = Integer.parseInt(JOptionPane.showInputDialog("Introduce tu mes de nacimiento (1-12):"));

            String signo = "";

            switch (mes) {
                case 1: // Enero
                    signo = (dia >= 1 && dia <= 19) ? "Capricornio" : "Acuario";
                    break;
                case 2: // Febrero
                    signo = (dia >= 1 && dia <= 18) ? "Acuario" : "Piscis";
                    break;
                case 3: // Marzo
                    signo = (dia >= 1 && dia <= 20) ? "Piscis" : "Aries";
                    break;
                case 4: // Abril
                    signo = (dia >= 1 && dia <= 19) ? "Aries" : "Tauro";
                    break;
                case 5: // Mayo
                    signo = (dia >= 1 && dia <= 20) ? "Tauro" : "Géminis";
                    break;
                case 6: // Junio
                    signo = (dia >= 1 && dia <= 20) ? "Géminis" : "Cáncer";
                    break;
                case 7: // Julio
                    signo = (dia >= 1 && dia <= 22) ? "Cáncer" : "Leo";
                    break;
                case 8: // Agosto
                    signo = (dia >= 1 && dia <= 22) ? "Leo" : "Virgo";
                    break;
                case 9: // Septiembre
                    signo = (dia >= 1 && dia <= 22) ? "Virgo" : "Libra";
                    break;
                case 10: // Octubre
                    signo = (dia >= 1 && dia <= 22) ? "Libra" : "Escorpio";
                    break;
                case 11: // Noviembre
                    signo = (dia >= 1 && dia <= 21) ? "Escorpio" : "Sagitario";
                    break;
                case 12: // Diciembre
                    signo = (dia >= 1 && dia <= 21) ? "Sagitario" : "Capricornio";
                    break;
                default:
                    signo = "Mes no válido.";
            }

            JOptionPane.showMessageDialog(null, "Tu signo zodiacal es: " + signo);

        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(null, "Debes ingresar un número válido.");
        }
    }
}
