package com.dao;

import com.entity.ArgumentEntity;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;
import java.util.Map;

public class ArgumentDAO implements IArgumentDAO{
    @Override
    public ArgumentEntity getArgumentByID(String argumentID) {
        return null;
    }

    @Override
    public List<ArgumentEntity> getAllArguments() {
        Session session = SessionConnector.getSession();

        try {
            session.beginTransaction();
            String sql = "FROM ArgumentEntity";
            Query query = session.createQuery(sql);
            List list=query.list();
            session.getTransaction().commit();
            return list;
        } finally {
            session.close();
        }
    }

    @Override
    public List<ArgumentEntity> getHotArguments() {
        return null;
    }

    @Override
    public List<ArgumentEntity> getArgumentListByUserID(String userID) {
        return null;
    }

    @Override
    public List<ArgumentEntity> getArgumentListByTagID(String tagID) {
        return null;
    }

    @Override
    public boolean addArgument(ArgumentEntity argumentEntity) {
        return false;
    }

    @Override
    public boolean modifyArgument(ArgumentEntity argumentEntity) {
        return false;
    }

    @Override
    public boolean deleteArgument(String argumentID) {
        return false;
    }
}
