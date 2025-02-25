/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.impl;

import dal.DBContext;
import entity.Order;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.sql.*;

/**
 *
 * @author ADMIN
 */
public class OrderDAO extends DBContext {

    public List<Order> findAll() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public int insert(Order t) {
        String sql = "INSERT INTO [dbo].[Order]\n"
                + "           ([amount]\n"
                + "           ,[accountId])\n"
                + "     VALUES\n"
                + "           (?, ? )";
        try {
            connection = new DBContext().getConnection();
            statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            statement.setObject(1, t.getAmount());
            statement.setObject(2, t.getAccountId());
            statement.executeUpdate();
            
            resultSet = statement.getGeneratedKeys();
            if (resultSet.next()) {
                return resultSet.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return -1;
    }

    public List<Order> findsByAccountId(int id) {
        String sql = "SELECT *\n"
                + "  FROM [Order]\n"
                + "  where accountId = ?";
        List<Order> list = new ArrayList<>();
        try {
            connection = new DBContext().getConnection();
            statement = connection.prepareStatement(sql);
            statement.setObject(1, id);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Order order = new Order();
                order.setId(resultSet.getInt("id"));
                order.setAmount(resultSet.getInt("amount"));
                order.setAccountId(resultSet.getInt("accountId"));
                list.add(order);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return list;
    }
}
