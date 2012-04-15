package br.ic.ufmt.db;

import java.awt.BorderLayout;
import java.awt.Component;
import java.io.IOException;
import java.net.URL;
import javax.media.CannotRealizeException;
import javax.media.Manager;
import javax.media.NoPlayerException;
import javax.media.Player;
import javax.swing.JPanel;

/**
 *
 * @author Arthur Messi Freitas, Luiz Henrique Padilha Godinho, Gustavo Liberatti
 */
public class MPlayer extends JPanel {

    private Player player;

    public void Mplayer() {
    }

    public MPlayer criarMPlayer(URL url) {
        try {
            player = Manager.createRealizedPlayer(url);
            Manager.setHint(Manager.LIGHTWEIGHT_RENDERER, true);
            // Adicionando controles e componentes------------------------------
            Component video = player.getVisualComponent();
            if (video != null) {
                add(video, BorderLayout.CENTER);
            }
            Component controles = player.getControlPanelComponent();
            if (controles != null) {
                this.add(controles, BorderLayout.SOUTH);
            }
            //------------------------------------------------------------------
            player.start();
        } catch (NoPlayerException noPlayerException) {
            System.err.println("No media player found");
        } catch (CannotRealizeException cannotRealizeException) {
            System.err.println("Could not realize media player");
        } catch (IOException iOException) {
            System.err.println("Error reading from the source");
        }
        return (this);
    }

    public void stop() {
        player.stop();
        player.deallocate();
    }

    public int getTime() {
        return ((int) player.getDuration().getSeconds());
    }
} 
    