/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entities.Dish;
import entities.Rate;
import entities.Restaurant;
import entities.User;
import exceptions.FoodGoodExceptions;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.persistence.Query;

/**
 *
 * @author dawm
 */
@Stateless
public class FoodEjb {
    @PersistenceUnit EntityManagerFactory emf;    
    
    public void altaUser(User u) throws FoodGoodExceptions{
        EntityManager em = emf.createEntityManager();
        User aux = em.find(User.class, u.getUsername());
        if(aux !=null){
            em.close();
            throw new FoodGoodExceptions("Ya existe un user con el mismo username");
        }
        em.persist(u);
        em.close();
    }
    
    public User loginUser(User u) throws FoodGoodExceptions{
        EntityManager em = emf.createEntityManager();
        User aux = em.find(User.class, u.getUsername());
        if(aux !=null){
            if(aux.getUsername().equals(u.getUsername())){
                if(aux.getPassword().equals(u.getPassword())){
                    System.out.println("Todo correcto");
                    
                }else{
                    aux = new User();
                    throw new FoodGoodExceptions("Los passwords no coinciden");
                }
            }else{
                aux = new User();
                throw new FoodGoodExceptions("Los username no coinciden");
            }
        }else{
            aux = new User();
            throw new FoodGoodExceptions("No existe este user");
        }
        em.close();
        return aux;
    }
    
    public List<User> listadoUser(){
        return emf.createEntityManager().createNamedQuery("User.findAll").getResultList();
    }
    
    public void altaRestaurante(Restaurant r) throws FoodGoodExceptions{
        EntityManager em = emf.createEntityManager();
        Restaurant aux = em.find(Restaurant.class, r.getName());
        if(aux !=null){
            em.close();
            throw new FoodGoodExceptions("Ya existe un restaurante con el mismo nombre");
        }
        em.persist(r);
        em.close();
    }
    
    public void removeDish(String d) throws FoodGoodExceptions{
        EntityManager em = emf.createEntityManager();
        Dish aux = em.find(Dish.class, d);
        em.remove(aux);
        em.close();
    }
    
    public void altaDish(Dish d) throws FoodGoodExceptions{
        EntityManager em = emf.createEntityManager();
        Dish aux = em.find(Dish.class, d.getName());
        if(aux !=null){
            em.close();
            throw new FoodGoodExceptions("Ya existe un plato con el mismo nombre");
        }
        em.persist(d);
        em.close();
    }
    
    public List<Dish> listadoDish(){
        return emf.createEntityManager().createNamedQuery("Dish.findAll").getResultList();
    }
    
    public List<Restaurant> listadoRestaurants(){
        return emf.createEntityManager().createNamedQuery("Restaurant.findAll").getResultList();
    }
    
    public List<String> listadoRestaurantsName(){
        return emf.createEntityManager().createNamedQuery("Restaurant.findAllName").getResultList();
    }  
    
    public List<String> listadoPlatosName(){
        return emf.createEntityManager().createNamedQuery("Dish.findAllName").getResultList();
    }
    
    public List<Rate> listadoValoracionPlato(Dish dish){
        EntityManager em = emf.createEntityManager();
        Query q = em.createNamedQuery("Rate.findAllByDish");
        q.setParameter("dish", dish);
        List<Rate> listadoValoraciones = new ArrayList<>();
        listadoValoraciones = q.getResultList();
        em.close();
        return listadoValoraciones;
    }
    
    public Restaurant busquedaRestauranteNombre(String r){
        EntityManager em = emf.createEntityManager();
        Restaurant aux = em.find(Restaurant.class, r);
        em.close();
        return aux;
    }
    
    public Dish busquedaDishNombre(String r){
        EntityManager em = emf.createEntityManager();
        Dish aux = em.find(Dish.class, r);
        em.close();
        return aux;
    }
    
    public void altaRate(Rate r){
        EntityManager em = emf.createEntityManager();
        em.persist(r);
        em.close();
    }
    
    public void modifyDish(Dish d){
        EntityManager em = emf.createEntityManager();
        Dish aux = em.find(Dish.class, d.getName());
        aux.setPrice(d.getPrice());
        em.persist(aux);
        em.close();
        
    }
}
