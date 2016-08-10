<%--
    Document   : InsertUser
    Created on : Aug 2, 2016, 3:30:10 PM
    Author     : Habiba Saim
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

       
<%
    
    try {
        Connection connection = null;
        PreparedStatement pstatement1 = null;
        PreparedStatement pstatement2 = null;
        PreparedStatement pstatement3 = null;
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        int user_tbl_InsertQuery = 0;
        int user_details_tbl_InsertQuery = 0;
        int userId  =0;
        
        String mySQLuser = "root";
        String mySQLpwd = "century_77";
        out.println("Before Class.forName() <br>");
        //Class.forName("com.mysql.jdbc.Driver").newInstance();
        //out.println("\nClass.forName executed" + "<br>");
        //Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kmat",  mySQLuser, mySQLpwd) ;
        //out.println("\nConnected to DB" + "<br>");
        String userName = request.getParameter("user_name");
        String priEmail = request.getParameter("p_email");
        String secEmail = request.getParameter("s_email");
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String password = request.getParameter("password");
       // out.println("Password: " + password);
        String postalAddress = request.getParameter("postal_address");
        String perAddress = request.getParameter("per_address");
        String workPhone = request.getParameter("w_phone");
        String homePhone = request.getParameter("h_phone");
        String mobPhone = request.getParameter("m_phone");
        
        if(userName!="" && password!="" && firstName!="" && lastName!="" && priEmail!="" ) {
           
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/kmat",  mySQLuser, mySQLpwd);
                
                String insertQuery1 = "INSERT INTO user_tbl(username, password, create_dt, update_dt) VALUES ( ?, ?, NOW(), NOW())";
                
               
                pstatement1 = connection.prepareStatement(insertQuery1);
                pstatement1.setString(1, userName);
                pstatement1.setString(2, password);
                user_tbl_InsertQuery = pstatement1.executeUpdate();
                if (user_tbl_InsertQuery != 0) {
                    out.println("1 row inserted successfully in user_tbl");
                    }
                
                String selectQuery = "Select user_id from user_tbl where username = ?";
                pstatement2 = connection.prepareStatement(selectQuery);
                pstatement2.setString(1, userName);
                ResultSet rs = pstatement2.executeQuery();
                if(rs.next())  {  
                    userId = rs.getInt("user_id");
                    out.println("Id: " + userId);
                }
                
                String insertQuery2 = "INSERT INTO user_details_tbl(user_idfk, first_name, last_name, email1, email2, address1,"
                        + " address2, work_phone, mobile_phone, home_phone, details, create_dt, update_dt) "
                        + "VALUES ( ?, ?, ?, ?, ?, ?, ?, ?,?, ?, 'details', NOW(), NOW())";
               
                pstatement3 = connection.prepareStatement(insertQuery2);
                pstatement3.setInt(1, userId);
                pstatement3.setString(2, firstName);
                pstatement3.setString(3, lastName);
                pstatement3.setString(4, priEmail);
                pstatement3.setString(5, secEmail);
                pstatement3.setString(6, postalAddress);
                pstatement3.setString(7, perAddress);
                pstatement3.setString(8, workPhone);
                pstatement3.setString(10, homePhone);
                 pstatement3.setString(9, mobPhone);
                user_details_tbl_InsertQuery = pstatement3.executeUpdate();
               // pstatement.setString(4, full_name);
                //pstatement.setString(5, ulevel);
                //pstatement.setString(6, team_id);
                
                
                if (user_details_tbl_InsertQuery != 0) {
                    out.println("1 row inserted successfully in user_details_tbl");
                    }
                }
    }
            catch(Exception e){       
                out.println("Error: " + e.getMessage());       
            }
 %>
