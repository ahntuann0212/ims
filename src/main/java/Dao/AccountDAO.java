/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Model.Account;
import java.util.LinkedHashMap;
import java.util.List;

/**
 *
 * @author d
 */
public class AccountDAO extends GenericDAO<Account> {

    @Override
    public List<Account> findAll() {
        //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
        return queryGenericDAO();
    }

    public static void main(String[] args) {
        System.out.println(new AccountDAO().findAll());
    }

    @Override
    public int insert(Account t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public Account getAcount(String username, String password) {
        String sql = "select * from [Account]\n"
                + "where [user_name] = ? and [password] = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("username", username);
        parameterMap.put("password", password);
        List<Account> listAcount = queryGenericDAO(sql);
        if (listAcount.isEmpty()) {
            return null;
        } else {
            return listAcount.get(0);
        }
    }

}
