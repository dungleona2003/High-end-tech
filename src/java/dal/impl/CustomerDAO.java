/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.impl;

import dal.DBContext;
import entity.Customer;
import java.sql.*;

public class CustomerDAO extends DBContext {

    public int insert(Customer t) {
        String sql = "INSERT INTO [dbo].[Customer]\n"
                + "           ([customerName]\n"
                + "           ,[email]\n"
                + "           ,[password]\n"
                + "           ,[roleId])\n"
                + "     VALUES\n"
                + "           (?, ? , ? , ?)";
        try {
            connection = getConnection();
            statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            statement.setString(1, t.getCustomerName());
            statement.setString(2, t.getEmail());
            statement.setString(3, t.getPassword());
            statement.setInt(4, t.getRoleId());
            return statement.executeUpdate();

        } catch (Exception e) {
            System.err.println("Error " + e.getMessage() + " at insert");
        } finally {
            try {
                connection.close();
                statement.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return -1;
    }

    public Customer findByCustomerNamePassword(Customer customer) {
        String sql = "SELECT * FROM [Customer]\n"
                + "WHERE CustomerName = ? and Password = ?";
        connection = getConnection();
        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, customer.getCustomerName());
            statement.setString(2, customer.getPassword());
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                Customer customer1 = new Customer();
                customer1.setId(resultSet.getInt("id"));
                customer1.setCustomerName(resultSet.getString("customerName"));
                customer1.setPassword(resultSet.getString("password"));
                customer1.setEmail(resultSet.getString("email"));
                customer1.setRoleId(resultSet.getInt("roleId"));
                return customer1;
            }
        } catch (Exception e) {
            System.err.println("Error " + e.getMessage() + " at findByCustomerNamePassword");
        } finally {
            try {
                connection.close();
                resultSet.close();
                statement.close();
            } catch (Exception e) {
                // TODO: handle exception
                e.printStackTrace();
            }
        }
        return null;
    }

    public boolean findByUsername(String username) {
        String sql = "SELECT [id]\n"
                + "      ,[customerName]\n"
                + "      ,[email]\n"
                + "      ,[password]\n"
                + "      ,[roleId]\n"
                + "  FROM [dbo].[Customer]\n"
                + "  where customerName = ?";
        try {
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return true;
            }
        } catch (Exception e) {
            System.err.println("Error " + e.getMessage() + " at findByUsername");
        } finally {
            try {
                connection.close();
                resultSet.close();
                statement.close();
            } catch (Exception e) {
                e.printStackTrace();      
            }
        } 
        return false;
    }

    public void updateProfile(Customer customer) {
        String sql = "UPDATE [dbo].[Customer]\n"
                + "   SET [email] = ?\n"
                + " WHERE customerName = ?";
        try {
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            statement.setString(1, customer.getEmail());
            statement.setString(2, customer.getCustomerName());
            statement.executeUpdate();
        } catch (Exception e) {
            System.err.println("Error " + e.getMessage() + " at updateProfile");
        } finally {
            try {
                connection.close();
                statement.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void updatePassword(String username, String password) {
        String sql = "UPDATE [dbo].[Customer]\n"
                + "   SET [password] = ?\n"
                + " WHERE customerName = ?";
        try {
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            statement.setString(1, password);
            statement.setString(2, username);
            statement.executeUpdate();
        } catch (Exception e) {
            System.err.println("Error " + e.getMessage() + " at updatePassword");
        } finally {
            try {
                connection.close();
                statement.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
