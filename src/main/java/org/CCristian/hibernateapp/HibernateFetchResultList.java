package org.CCristian.hibernateapp;

import jakarta.persistence.EntityManager;
import org.CCristian.hibernateapp.entity.Cliente;
import org.CCristian.hibernateapp.util.JpaUtil;

import java.util.List;

public class HibernateFetchResultList {
    public static void main(String[] args) {

        EntityManager em = JpaUtil.getEntityManager();
        String query = "SELECT DISTINCT c FROM Cliente c LEFT OUTER JOIN FETCH c.direcciones LEFT OUTER JOIN FETCH c.detalle";
        List<Cliente> clientes = em.createQuery(query, Cliente.class).getResultList();
        clientes.forEach(c-> System.out.println(c.getNombre()+", direcciones: "+c.getDirecciones()));

        em.close();
    }
}
