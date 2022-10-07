/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.model.Memo;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author joelg
 */
public class MemoDao {
    
    public static List<Memo> getAllMemos() {
        List<Memo> memos = new ArrayList<>();
        
        String sql = "SELECT * FROM memo m INNER JOIN person p WHERE m.idperson = p.idperson";
        
        return memos;
    }
    
}
