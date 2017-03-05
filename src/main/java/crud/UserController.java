package crud;

import entity.User;
import org.hibernate.Session;
import utils.HibernateSessionFactory;

/**
 * Created by Андрей on 05.03.2017.
 */
public class UserController {

    public void addUser(User user){
        Session session = HibernateSessionFactory.getSessionFactory().openSession();
        session.beginTransaction();
        session.save(user);
        session.getTransaction().commit();
        session.close();
//        return user;
    }
}
