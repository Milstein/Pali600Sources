package org.koushik.hibernate.Lesson12;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.javabrains.koushik.dto.Lesson12.UserDetails;
import org.javabrains.koushik.dto.Lesson12.Vehicle;



public class HibernateTest {
	
	public static void main(String[] args) {
		UserDetails user = new UserDetails();
		user.setUserName("First User");
		
		Vehicle vehicle = new Vehicle();
		vehicle.setVehicleName("Car");
		
		Vehicle vehicle2 = new Vehicle();
		vehicle2.setVehicleName("Jeep");
		
		user.getVehicle().add(vehicle);
		user.getVehicle().add(vehicle2);
		vehicle.setUser(user);
		vehicle2.setUser(user);
		
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(user);
		session.save(vehicle);
		session.save(vehicle2);
		session.getTransaction().commit();
		session.close();	
	}

}
