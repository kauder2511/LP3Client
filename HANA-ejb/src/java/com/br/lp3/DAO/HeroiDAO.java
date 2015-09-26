/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.lp3.DAO;

import com.br.lp3.entities.Heroi;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author william
 */
public class HeroiDAO implements GenericDAO<Heroi> {

    @Override
    public void insert(Heroi e) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("HANA-ejbPU");
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(e);
        em.getTransaction().commit();
        em.close();
    }

    @Override
    public List<Heroi> readList() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("HANA-ejbPU");
        EntityManager em = emf.createEntityManager();

        em.getTransaction().begin();
        //criação de um novo autor, só no Java
        Query queryuser = em.createNamedQuery("Heroi.findAll");
        List<Heroi> listaheroi =  queryuser.getResultList();
        
        return listaheroi;
    }

    @Override
    public Heroi read(Heroi e) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("HANA-ejbPU");
        EntityManager em = emf.createEntityManager();

        em.getTransaction().begin();
        //criação de um novo autor, só no Java
        Query queryuser = em.createNamedQuery("Heroi.findByIduser");
        queryuser.setParameter("iduser", e.getIdUser());
        List<Heroi> listaheroi =  queryuser.getResultList();
        
        return listaheroi.get(0);
    }

    @Override
    public void update(Heroi e, int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(Heroi e) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("HANA-ejbPU");
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        Heroi a1 = em.find(Heroi.class, e.getIdUser());
        em.remove(a1);
        em.getTransaction().commit();
        em.close();
    }
    
}
