package br.ic.ufmt.db;

import java.sql.*;
import org.apache.log4j.Logger;

/**
 *
 * @author Arthur Messi Freitas, Luiz Henrique Padilha Godinho, Gustavo
 * Liberatti
 */
public class Banco {

    private static Connection conexao;
    private static Statement statement;
    private static String senha = "postgres";
    private static String login = "postgres";
    private static String url = "jdbc:postgresql://localhost:5432/clp";
    private static String driver = "org.postgresql.Driver";
    static final Logger logger = Logger.getLogger(Banco.class);

    public Banco() {
    }

    public boolean abreConexao() { //conexão com o banco de dados
        if (conexao == null) {
            try {
                Class.forName(driver); //carrega o driver
                conexao = DriverManager.getConnection(url, login, senha);
                return true;
            } catch (Exception e) {
                logger.error("Não foi possível estabelecer conexão com: " + url, e);
                return false;
            }
        }
        return true;
    }

    public void fechaConexao() {
        try {
            conexao.close();
        } catch (Exception e) {
            logger.error("Não foi possível encerrar conexão com: " + url, e);
        }
    }

    public boolean criaStatement() {
        if (statement == null) {
            try {
                statement = conexao.createStatement();
                return true;
            } catch (SQLException e) {
                logger.error("Não foi possível criar statement ", e);
                return false;
            }
        }
        return true;
    }

    public void fechaStatement() {
        try {
            statement.close();
        } catch (SQLException e) {
            logger.error("Não foi possível encerrar statement ", e);
        }
    }

    public ResultSet selecionar(String sql) { // sele��o usuario
        ResultSet rs = null;
        try {
            rs = statement.executeQuery(sql); //m�todo executeQuery: usado para comandos SQL que retornam uma tabela
        } catch (SQLException e) {
            logger.error("Falha ao executar sql: " + sql, e);
        }
        return rs;
    }

    public boolean manipular(String sql) {
        try {
            statement.executeUpdate(sql);
            return true;
        } catch (SQLException e) {
            logger.error("Falha ao executar sql: " + sql, e);
            return false;
        }
    }
}
