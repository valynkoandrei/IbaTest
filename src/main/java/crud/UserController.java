package crud;

import entity.User;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import utils.HibernateSessionFactory;

import java.util.List;

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
    }

    public List<User> getAllUsers(){
        Session session = HibernateSessionFactory.getSessionFactory().openSession();
        session.beginTransaction();
        Criteria criteria = session.createCriteria(User.class);
        List<User> list = criteria.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }

    public List<User> getUserFilter(boolean placeOfWork, double taxFilter){
        Session session = HibernateSessionFactory.getSessionFactory().openSession();
        session.beginTransaction();
        Criteria criteria = session.createCriteria(User.class);
        criteria.add(Restrictions.eq("placeOfWork", placeOfWork));
        criteria.add(Restrictions.ge("tax", taxFilter));
        List<User> users = criteria.list();
        session.getTransaction().commit();
        session.close();
        if (users.size() == 0)
            return null;
        return users;
    }



}
