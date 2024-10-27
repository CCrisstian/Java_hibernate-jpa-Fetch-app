package org.CCristian.hibernateapp;

import jakarta.persistence.EntityManager;
import org.CCristian.hibernateapp.entity.Cliente;
import org.CCristian.hibernateapp.util.JpaUtil;

public class HibernateFetchLazyOneToManyJoinFetch {
    public static void main(String[] args) {

        EntityManager em = JpaUtil.getEntityManager();

        String query = "SELECT c " +
                        "FROM Cliente c " +
                        "LEFT OUTER JOIN FETCH c.direcciones " +
                        "LEFT OUTER JOIN FETCH c.detalle " +
                        "WHERE c.id = :id";

        Cliente cliente = em
                .createQuery(query, Cliente.class)
                .setParameter("id",1L)
                .getSingleResult();

        System.out.println(cliente.getNombre() +", direcciones: "+cliente.getDirecciones());

        em.close();
    }
}
