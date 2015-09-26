/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.lp3.DAO;

import com.br.lp3.entities.Vestimenta;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author william
 */
public class VestimentaDAO implements GenericDAO<Vestimenta>{

    @Override
    public void insert(Vestimenta e) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("HANA-ejbPU");
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(e);
        em.getTransaction().commit();
        em.close();
    }

    @Override
    public List<Vestimenta> readList() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("HANA-ejbPU");
        EntityManager em = emf.createEntityManager();

        em.getTransaction().begin();
        //criação de um novo autor, só no Java
        Query queryuser = em.createNamedQuery("Vestimenta.findAll");
        List<Vestimenta> listavestimenta =  queryuser.getResultList();
        
        return listavestimenta;
    }

    @Override
    public Vestimenta read(Vestimenta e) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("HANA-ejbPU");
        EntityManager em = emf.createEntityManager();

        em.getTransaction().begin();
        //criação de um novo autor, só no Java
        Query queryuser = em.createNamedQuery("Vestimenta.findByIdVestimenta");
        queryuser.setParameter("idVestimenta", e.getIdVestimenta());
        List<Vestimenta> listavestimenta =  queryuser.getResultList();
        
        return listavestimenta.get(0);
    }

    @Override
    public void update(Vestimenta e, int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(Vestimenta e) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("HANA-ejbPU");
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        Vestimenta v1 = em.find(Vestimenta.class, e.getIdVestimenta());
        em.remove(v1);
        em.getTransaction().commit();
        em.close();
    }
    
}
