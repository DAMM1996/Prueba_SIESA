/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package palindromos;

import java.util.Scanner;

/**
 *
 * @author Albeiro
 */
public class Palindromos {

    
       
    
    public static void main(String[] args) {
        Scanner sc = new Scanner (System.in);
        // punto #5, palabra o frase palindroma
        Palindroma palabra = new Palindroma();
        System.out.println("Por favor ingrese una palabra o frase para verificar si es palindrome: ");
        String palabraFrase=sc.nextLine();
        palabra.palindroma(palabraFrase);
    }
    
}
