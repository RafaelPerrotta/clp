package br.ic.ufmt.db;


import br.ic.ufmt.view.LexemaService;
import br.ic.ufmt.view.Tela;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Arthur Messi Freitas, Luiz Henrique Padilha Godinho, Gustavo Liberatti
 */
public class Lista {

    private ArrayList lista;

    public Lista() {
    }

    public void gerarLista(LexemaService database, String entrada) {
        lista = new ArrayList();
        String palavra;
        int i = 0;
        URL url;
        while (i < entrada.length() - 1) {
            palavra = "";
            if (entrada.charAt(i) == '<') {
                i++;
                while (entrada.charAt(i) != '>') {
                    palavra = palavra + entrada.charAt(i);
                    i++;
                }
                i++;
            }
            try {
                String video = database.buscarLexema(palavra.toUpperCase());
                if (!(video.equalsIgnoreCase(""))) {
                    url = new URL("file", null, video);
                    lista.add(url);
                }
            } catch (MalformedURLException ex) {
                Logger.getLogger(Tela.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
    }

    public String gerarLexema(String texto) {
        int tam = 0;
        String lexemas = "<";
        for (int i = 0; i < texto.length(); i++) {
            if (texto.charAt(i) != ' ') {
                tam++;
                lexemas = lexemas + texto.charAt(i);
            } else {
                if (tam < 3) {
                    lexemas = lexemas.substring(0, lexemas.length() - tam);
                } else {
                    tam = 0;
                    lexemas = lexemas + "><";
                }
            }
        }
        lexemas = lexemas + ">";
        return lexemas;
    }

    public ArrayList getlista() {
        return lista;
    }
}
