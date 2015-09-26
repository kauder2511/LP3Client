/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.lp3.DAO;

import com.br.lp3.entities.Historia;
import com.br.lp3.entities.Histsugestao;
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
public class HistsugestaoDAO implements GenericDAO<Histsugestao>{

    @Override
    public void insert(Histsugestao e) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("HANA-ejbPU");
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(e);
        em.getTransaction().commit();
        em.close();
    }

    @Override
    public List<Histsugestao> readList() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("HANA-ejbPU");
        EntityManager em = emf.createEntityManager();

        em.getTransaction().begin();
        //criação de um novo autor, só no Java
        Query queryuser = em.createNamedQuery("Histsugestao.findAll");
        List<Histsugestao> listahistsugestao =  queryuser.getResultList();
        
        return listahistsugestao;
    }

    @Override
    public Histsugestao read(Histsugestao e) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("HANA-ejbPU");
        EntityManager em = emf.createEntityManager();

        em.getTransaction().begin();
        //criação de um novo autor, só no Java
        Query queryuser = em.createNamedQuery("Histsugestao.findByIdheroi");
        queryuser.setParameter("idheroi", e.getIdheroi());
        List<Histsugestao> listahistsugestao =  queryuser.getResultList();
        
        return listahistsugestao.get(0);
    }

    @Override
    public void update(Histsugestao e, int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(Histsugestao e) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("HANA-ejbPU");
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        Histsugestao hs1 = em.find(Histsugestao.class, e.getIdheroi());
        em.remove(hs1);
        em.getTransaction().commit();
        em.close();
    }
    
}
