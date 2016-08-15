package com.hostal.dao.interfaces;

import com.hostal.persistence.Categories;

import java.util.List;

/**
 * Created by Manel on 01/08/2016.
 */
public interface CategoriesDAOInterface {

    public List<Categories> getCategories();

    public void addCategory(Categories category );

}
