/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.model;

import java.sql.Date;

/**
 *
 * @author joelg
 */
public class Memo {
    private int id;
    private String contenu;
    private Date dateDeCreation;
    private User createur;

    public Memo() {
    }

    public Memo(int id, String contenu, Date dateDeCreation, User createur) {
        this.id = id;
        this.contenu = contenu;
        this.dateDeCreation = dateDeCreation;
        this.createur = createur;
    }

    public int getId() {
        return id;
    }

    public String getContenu() {
        return contenu;
    }

    public User getCreateur() {
        return createur;
    }

    public Date getDateDeCreation() {
        return dateDeCreation;
    }

    public void setContenu(String contenu) {
        this.contenu = contenu;
    }

    public void setCreateur(User createur) {
        this.createur = createur;
    }

    public void setDateDeCreation(Date dateDeCreation) {
        this.dateDeCreation = dateDeCreation;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
    
    
}
