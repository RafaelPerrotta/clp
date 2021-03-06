package br.ic.ufmt.view;

import br.ic.ufmt.db.Banco;
import java.io.File;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;

/**
 *
 * @author Arthur Messi Freitas, Luiz Henrique Padilha Godinho, Gustavo
 * Liberatti
 */
public class LexemaService {

    private static Banco banco = new Banco();

    public LexemaService() {
    }

    public void fechaConexao() {
        banco.fechaStatement();
        banco.fechaConexao();
    }

    public boolean abreConexao() {
        if (banco.abreConexao()) {
            if (banco.criaStatement()) {
                return true;
            } else {

                return false;
            }
        } else {

            return false;
        }
    }

    public String buscarLexema(String lex) {
        String sql = "SELECT file FROM libras WHERE lexema = '" + lex + "'";
        try {
            ResultSet Rs = banco.selecionar(sql);
            if (Rs.next()) {
                return (Rs.getString("file"));
            } else {
                return "";
            }
        } catch (SQLException sqle) {

            return "";
        }
    }

    public boolean inserirLexema(String lex, String file) {
        String video = file.replace('\\', '/');
        String sql = "INSERT INTO libras(lexema,file)VALUES('" + lex + "','" + video + "');";
        if (banco.manipular(sql)) {
            return true;
        } else {
            return false;
        }
    }

    public boolean carregarLexema() {
// Criar FileChooser --------------------------------------------------------
        JFileChooser fileChooser = new JFileChooser();
        fileChooser.setApproveButtonText("Carregar");
        fileChooser.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
        fileChooser.setMultiSelectionEnabled(false);
        int res = fileChooser.showDialog(fileChooser, null);
//-------------------------------------------------------------------------       
        if (res == JFileChooser.APPROVE_OPTION) {
            File chooser = fileChooser.getSelectedFile();
            if (chooser != null) {
                String diretorio = chooser.getPath();
                File path = new File(diretorio);
                File files[] = path.listFiles();
                if (files != null) {
                    for (int i = 0; i < files.length; i++) {
                        if (files[i].isFile()) {
// Retirar extensão--------------------------------------
                            String fileName = files[i].getName();
                            int fim = 1;
                            while (fileName.charAt(fileName.length() - fim) != '.') {
                                fim++;
                            }
                            fileName = fileName.substring(0, fileName.length() - (fim++));
                            if (!inserirLexema(fileName, files[i].getAbsolutePath())) {
                                JOptionPane.showMessageDialog(null, "Erro");
                            }
                        }
                    }
                }
            }
//------------------------------------------------------

        } else if (res == JFileChooser.CANCEL_OPTION) {
            JOptionPane.showMessageDialog(null, new String("Processo Cancelado !"));
            return false;
        }
        return true;
    }
}
