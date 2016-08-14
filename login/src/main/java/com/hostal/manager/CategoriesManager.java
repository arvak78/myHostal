package com.hostal.manager;

import com.hostal.dao.CategoriesDAOImpl;
import com.hostal.dao.interfaces.CategoriesDAOInterface;
import com.hostal.persistence.Categories;

import javax.inject.Inject;
import javax.inject.Named;
import java.util.List;

/**
 * Categories manager
 */
@Named
public class CategoriesManager {

    @Inject
    private CategoriesDAOInterface categoriesDAO;

    public List<Categories> getCategories() {
        return categoriesDAO.getCategories();
    }

}
