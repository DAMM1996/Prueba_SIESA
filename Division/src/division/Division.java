/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package division;

import static java.time.Clock.system;
import java.util.Scanner;

/**
 *
 * @author Albeiro
 */
public class Division {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in); 
        int numero1, numero2, division;
        System.out.println("ingrese 2 numeros para realizar la division de los numeros ingresados");
        System.out.println("Ingrese el primer numero");
        numero1 = scan.nextInt();
        System.out.println("Ingresa el siguiente numero");
        numero2 = scan.nextInt();
        
        division = numero1/numero2;
        System.out.println("el resultado de la division es: " + division);
    }
    
}
