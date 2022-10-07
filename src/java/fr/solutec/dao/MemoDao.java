/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.model.Memo;
import fr.solutec.model.User;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author joelg
 */
public class MemoDao {
    
    public static List<Memo> getAllMemos() throws SQLException {
        List<Memo> memos = new ArrayList<>();
        String sql = "SELECT * FROM memo m INNER JOIN person p WHERE m.idperson = p.idperson";
        Connection connexion = AccessBd.getConnection();
        Statement state = connexion.createStatement();
        ResultSet rs = state.executeQuery(sql);       
        while (rs.next()) {
            User u = new User();
            u.setId(rs.getInt("idperson"));
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setLogin(rs.getString("login"));
           
            Memo m = new Memo();
            m.setId(rs.getInt("idmemo"));
            m.setContenu(rs.getString("contenu"));
            m.setDateDeCreation(rs.getDate("date_creation"));
            m.setCreateur(u);  
            
            memos.add(m);
        }    
        return memos;
    }
    
}
