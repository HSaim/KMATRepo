<%-- 
    Document   : SignUpForm
    Created on : Aug 10, 2016, 10:16:38 AM
    Author     : Saim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/mainStyle.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <title>Sign Up</title>
    </head>
    
    <body>
        <%-- Menubar starts --%>
        <jsp:include page="includes/menubar.jsp" />
        <%-- Menubar Ends --%>

        <%-- Slider starts --%>
        <div id = simple>  
             <jsp:include page="includes/topSliderImages.jsp" />
        </div>

        
        
        <%-- Add User Block Starts --%>
        <div  id ="Login">
            <form method="post" action="InsertUser.jsp">
                <table style="width:auto"align="center">
                    <tr>
                        <th colspan="2">
                            Create your KMAT Account
                        </th>
                    </tr>
                    <br/><br/>
                    <tr>
                        <td align="right">
                            User Name:
                        </td>
                        <td align="left">
                            <input type="text" name="user_name" placeholder="Email Address">
                        </td>
                    </tr>
                    
                    <tr>
                        <td align="right">
                            Primary Email:
                        </td>
                        <td align="left">
                            <input type="text" name="p_email" placeholder="Email Address">                        
                        </td>
                    </tr>
                    
                    <tr>
                        <td align="right">
                            Secondary Email:
                        </td>
                        <td align="left">
                            <input type="text" name="s_email" placeholder="Email Address">
                        </td>
                    </tr>
                    
                    <tr>
                        <td align="right">
                            First Name:
                        </td>
                        <td align="left">
                            <input type="text" name="firstname" placeholder="First Name">
                        </td>
                    </tr>
                    
                    <tr>
                        <td align="right">
                            Last Name:
                        </td>
                        <td align="left">
                            <input type="text" name="lastname" placeholder="Last Name">
                        </td>
                    </tr>
                    
                    <tr>
                        <td align="right">
                            Password:
                        </td>
                        <td align="left">
                            <input type="password" name="password" placeholder="Password">
                        </td>
                    </tr> 
                    
                    <tr>
                        <td align="right">
                            Postal Address:
                        </td>
                        <td align="left">
                            <input type="text" name="postal_address" placeholder="Address">
                        </td>
                    </tr>
                    
                    <tr>
                        <td align="right">
                            Permanent Address:
                        </td>
                        <td align="left">
                            <input type="text" name="per_address" placeholder="Address">
                        </td>
                    </tr>
                    
                    <tr>
                        <td align="right">
                            Work Phone:
                        </td>
                        <td align="left">
                            <input type="text" name="w_phone" placeholder="Contact Number">
                        </td>
                    </tr>
                    
                    <tr>
                        <td align="right">
                            Home Phone:
                        </td>
                        <td align="left">
                            <input type="text" name="h_phone" placeholder="Contact Number">
                        </td>
                    </tr>
                    
                    <tr>
                        <td align="right">
                            Mobile Phone:
                        </td>
                        <td align="left">
                            <input type="text" name="m_phone" placeholder="Contact Number">
                        </td>
                    </tr>
                    
                    <tr>                       
                        <td colspan="2" align="center">
                            <input type="submit" value="Add User" />
                        </td>
                    </tr>
                </table>
                
            </form>
        </div>
       
        <%-- Add User Block Ends --%>
        
       <%-- adds Top Slider, login functions --%>
        <jsp:include page="includes/js.jsp" /> 
        
        <%-- Footer starts --%>
        <div id="footer">
             Copyright © Rice Lab, LUMS, Lahore, Pakistan.
        </div>
        <%-- Footer ends --%>
        
    </body>
    
</html>
