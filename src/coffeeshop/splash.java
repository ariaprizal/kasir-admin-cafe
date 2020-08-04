/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coffeeshop;


import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ari Aprizal
 */
public class splash {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        splashscreen sp=new splashscreen();
        Login l=new Login();
        sp.setVisible(true);
                try {
            for (int i=0; i<=100; i++){
            Thread.sleep(50);
            sp.time.setText(i+"%");
            sp.bar.setValue(i);
            if (i==100){
                sp.setVisible(false);
                l.setVisible(true);
            }
            }
        } catch (InterruptedException ex) {
            Logger.getLogger(splashscreen.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
