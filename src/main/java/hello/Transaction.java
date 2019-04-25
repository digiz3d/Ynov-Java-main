/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hello;

/**
 *
 * @author test
 */
public class Transaction {
    private String id;
    private String montant;
    private String date;
    private String destinataire;
    private String numero_compte;

    public Transaction(String id, String montant, String date, String destinataire, String numero_compte) {
        this.id = id;
        this.montant = montant;
        this.date = date;
        this.destinataire = destinataire;
        this.numero_compte = numero_compte;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMontant() {
        return montant;
    }

    public void setMontant(String montant) {
        this.montant = montant;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getDestinataire() {
        return destinataire;
    }

    public void setDestinataire(String destinataire) {
        this.destinataire = destinataire;
    }

    public String getNumero_compte() {
        return numero_compte;
    }

    public void setNumero_compte(String numero_compte) {
        this.numero_compte = numero_compte;
    }
}
