/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fizzbuzz;

/**
 *
 * @author Albeiro
 */
public class Fizzbuzz {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        for(int i=1; i<=100; i++){
            if( i % 3 ==0){
                System.out.println("Fizz");
            }
            if(i % 5 ==0){
                System.out.println("Buzz");
            }
            if(i % 3 ==0 && i % 5 ==0){
                System.out.println("FizzBuzz");
            }else{
                System.out.println(i);
            }
        }
    }
    
}
