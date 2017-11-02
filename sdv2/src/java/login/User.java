package login;


import conexao.Conexao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;


public class User {
    
    
    public String nome="";
    public boolean result=false;
    public boolean verificarUsuario(String login, String senha) throws SQLException{
        Conexao conectar = new Conexao();
        String sql = "";
        Connection con = null;
        try {
            con = conectar.abrir();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        sql +="select nome from login";
        sql +=" where login = " + "'" + login + "'";
        sql +=" and senha = " + "'" + senha + "'";
        
        System.out.println(sql);
        
        
        try{
            Statement st = con.createStatement();
            ResultSet rs = null;
            rs = st.executeQuery(sql);
            if(rs.next()){
                result = true;
                nome = rs.getString("nome");
                
            }
            
        }catch(Exception e){
            
            System.out.println(e);
        }
            return result;
    }
}
