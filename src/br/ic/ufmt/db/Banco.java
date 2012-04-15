package br.ic.ufmt.db;

import java.sql.*;

/**
 *
 * @author Arthur Messi Freitas, Luiz Henrique Padilha Godinho, Gustavo Liberatti
 */
public class Banco {

    private static Connection conexao;
    private static Statement statement;
    private static String senha = "postgres";
    private static String login = "postgres";
    private static String url = "jdbc:postgresql://localhost:5432/clp";
    private static String driver = "org.postgresql.Driver";

    public Banco() {
    }

    public boolean abreConexao() { //conexão com o banco de dados
        if (conexao == null) {
            try {
                Class.forName(driver); //carrega o driver
                conexao = DriverManager.getConnection(url, login, senha);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
        return true;
    }

    public void fechaConexao() {
        try {
            conexao.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean criaStatement() {
        if (statement == null) {
            try {
                statement = conexao.createStatement();
                return true;
            } catch (SQLException sqle) {
                sqle.printStackTrace();
                return false;
            }
        }
        return true;
    }

    public void fechaStatement() {
        try {
            statement.close();
        } catch (SQLException sqle) {
            sqle.printStackTrace();
        }
    }

    public ResultSet selecionar(String sql) { // sele��o usuario
        ResultSet rs = null;
        try {
            rs = statement.executeQuery(sql); //m�todo executeQuery: usado para comandos SQL que retornam uma tabela
        } catch (SQLException sqle) {
            sqle.printStackTrace();
        }
        return rs;
    }

    public boolean manipular(String sql) {
        try {
            statement.executeUpdate(sql);
            return true;
        } catch (SQLException sqle) {
            sqle.printStackTrace();
            return false;
        }
    }
}
