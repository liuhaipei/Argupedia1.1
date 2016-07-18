package com.action;

import com.dao.ArgumentDAO;
import com.dao.IArgumentDAO;
import com.entity.ArgumentEntity;
import java.util.*;

public class MainPageAction extends BasicAction{
    private static final long serialVersionUID = 1L;
    private IArgumentDAO argumentDAO;


    private MainPageAction() {

    }

    @Override
    public String execute() throws Exception {
        List<ArgumentEntity> argumentEntityList = argumentDAO.getAllArguments();
        this.request().setAttribute("allArguments", argumentEntityList);
        return SUCCESS;
    }

}
