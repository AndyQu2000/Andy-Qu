import java.awt.GridLayout;

import javax.swing.BoxLayout;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextField;

public class ClockGUI {
   // frame
   JFrame f;
   // Table
   JPanel p1 = new JPanel();
 
   // Constructor
   ClockGUI(Clock[] dataA, Clock[] dataB) {
       // Frame initiallization
       f = new JFrame();
       //splits the jpanel
       JPanel left = new JPanel();
       left.setLayout(new BoxLayout(left, BoxLayout.Y_AXIS));
       JPanel right = new JPanel();
       right.setLayout(new BoxLayout(right, BoxLayout.Y_AXIS));
       // Frame Title
       f.setTitle("Clock");
       p1.setLayout(new GridLayout(1, 2));
       String[] columnNames = { "Not Sorted", "Sorted" };
       
       //outputs the values
       for(int i = 0; i < dataA.length; i++) {
    	   JTextField temp = new JTextField(dataA[i].toString());
    	   left.add(temp);
       }
       for(int i = 0; i < dataB.length; i++) {
    	   JTextField temp = new JTextField(dataB[i].toString());
    	   right.add(temp);
       }

       p1.add(left);
       p1.add(right);
       f.add(p1);
       // Frame Size
       f.setSize(500, 700);
       // Frame Visible = true
       f.setVisible(true);
   }
}