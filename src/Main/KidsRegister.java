package Main;

import java.awt.EventQueue;
import java.awt.Image;
import java.net.URL;

import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTable;

public class KidsRegister {

	private JFrame frame;
	KidsFix kf = new KidsFix();
	KidsLogoutButton klb = new KidsLogoutButton();

	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					KidsRegister window = new KidsRegister();
					window.frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	public KidsRegister() {
		initialize();
	}

	private void initialize() {
		frame = new JFrame();
		frame.setBounds(100, 100, 1215, 640);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		kf.kidsFix(frame);

		JPanel panel = new JPanel();
		panel.setBounds(220, 180, 660, 390);
		frame.getContentPane().add(panel);
		panel.setLayout(null);
		
		
		URL path = this.getClass().getResource("..\\img\\KidsRegister.png");
		Image image = new ImageIcon(path).getImage();
		frame.getContentPane().setLayout(null);
		JLabel lbl_background = new JLabel(new ImageIcon(image.getScaledInstance(1200, 600, Image.SCALE_SMOOTH)));
		lbl_background.setBounds(0, 338, 1199, 601);
		frame.getContentPane().add(lbl_background);
		lbl_background.setBounds(0, 0, 1200, 600);
		

	}
}
