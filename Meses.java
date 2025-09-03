import javax.swing.JOptionPane;

public class Meses {
    public static void main(String[] args) {
        // Pedir al usuario el número del mes
        String input = JOptionPane.showInputDialog("Introduce el número del mes (1 - 12):");
        
        try {
            int mes = Integer.parseInt(input);
            String nombreMes = "";
            int dias = 0;

            if (mes >= 1 && mes <= 12) {
                switch (mes) {
                    case 1 -> {nombreMes = "Enero"; dias = 31; break;}
                    case 2 -> {nombreMes = "Febrero"; dias = 28; break;}
                    case 3 -> {nombreMes = "Marzo"; dias = 31; break;}
                    case 4 -> {nombreMes = "Abril"; dias = 30; break;}
                    case 5 -> {nombreMes = "Mayo"; dias = 31; break;}
                    case 6 -> {nombreMes = "Junio"; dias = 30; break;}
                    case 7 -> {nombreMes = "Julio"; dias = 31; break;}
                    case 8 -> {nombreMes = "Agosto"; dias = 31; break;}
                    case 9 -> {nombreMes = "Septiembre"; dias = 30; break;}
                    case 10 -> {nombreMes = "Octubre"; dias = 31; break;}
                    case 11 -> {nombreMes = "Noviembre"; dias = 30; break;}
                    case 12 -> {nombreMes = "Diciembre"; dias = 31; break;}
                }

                JOptionPane.showMessageDialog(null, 
                    "El mes seleccionado es: " + nombreMes + "\nTiene " + dias + " días.");
            } else {
                JOptionPane.showMessageDialog(null, 
                    "Número de mes inválido. Debe estar entre 1 y 12.");
            }

        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(null, "Entrada no válida. Debes ingresar un número.");
        }
    }
}
       
   

