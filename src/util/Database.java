package util;

import java.sql.*;
import java.util.Properties;

public class Database {

    Connection con;
    Statement st;
    private ResultSet rs = null;

    public boolean loadDriver() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return true;
        } catch (Exception e) {
            System.out.println("Error when loading the driver for the database");
            return false;
        }
    }

    public Connection connectToDatabase() {
        Properties connectionProps = new Properties();
        connectionProps.put("user", "root");
        connectionProps.put("password", "root");
        connectionProps.put("useUnicode", "true");
        connectionProps.put("useJDBCCompliantTimezoneShift", "true");
        connectionProps.put("useLegacyDatatimeCode", "false");
        connectionProps.put("serverTimezone", "UTC");
        connectionProps.put("useSSL", "false");
        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test1",
                    connectionProps);
        } catch (SQLException e) {
            System.out.println("Error when connecting to the database");
            e.printStackTrace();
        }
        return con;
    }

    public Statement createStatement() {
        try {
            st = con.createStatement();
            return st;
        } catch (SQLException e) {
            System.out.println("Error when creating statement for database");
            e.printStackTrace();
        }
        return null;
    }

    /**
     * @param sql
     * @return
     */
    public int executeUpdate(String sql) {
        try {
            return st.executeUpdate(sql);
        } catch (SQLException e) {
            System.out.println("Error while executing the query without result on the database");
            e.printStackTrace();
        }
        return -1;
    }

    public void loadConnectCreateExecute(String sqlInsertUpdate) {
        loadDriver();
        connectToDatabase();
        createStatement();
        executeUpdate(sqlInsertUpdate);
    }

    public ResultSet loadConnectPrepareExecute(String sqlSelect) {
        loadDriver();
        connectToDatabase();
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement(sqlSelect);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        ResultSet rs = null;
        try {
            rs = ps.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs;

    }

    public void showMeTheMoney() {
        //insertion
        String id = "id1";
        String value = "value1";
        loadConnectCreateExecute("INSERT INTO tabela (id, value) VALUES(" +
                "\"" + id + "\",\"" + value + "\"" +
                ");");

        //selection
        ResultSet rs = loadConnectPrepareExecute("SELECT id, value FROM tabela");
        try {
            while (rs.next()) {
                getDataFromResultSet(rs);
            }
        } catch (SQLException s) {
            s.printStackTrace();
        }


    }

    public void getDataFromResultSet(ResultSet rs) {
        String data = "Nie ustawiono";
        try {
            data = rs.getString("login");
        } catch (SQLException e) {

        }
        System.out.println(data);
    }
}
