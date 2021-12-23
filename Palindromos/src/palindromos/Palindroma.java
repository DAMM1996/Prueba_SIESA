/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package palindromos;

/**
 *
 * @author Albeiro
 */
class Palindroma {
     public boolean palindroma(String palabra){
       
        for(int i=0;i<palabra.length();i++){
            palabra.toLowerCase();
            palabra.replaceAll("","");
            if(palabra.charAt(i) != palabra.charAt(palabra.length()-i-1)){
                System.out.println("la palabra no es palindroma");
                return false;
            }
            else{
                System.out.println("la palabra es palindroma");
               
                return true;
            }
           
        }return true;
       
    }
}
