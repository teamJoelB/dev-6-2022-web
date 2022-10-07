
package fr.solutec.dao;

import fr.solutec.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {
    
    public static User getByLoginAndPassword(String login, String password) throws  SQLException{
        User u = null;
        String sql = "SELECT * FROM person WHERE login = ? AND mdp = ?";
        Connection connexion = AccessBd.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, login);
        prepare.setString(2, password);
        ResultSet rs = prepare.executeQuery();
        if(rs.next()){
            u = new User();
            u.setId(rs.getInt("idperson"));
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setLogin(rs.getString("login"));
        }
        return u;
    }
    
}
