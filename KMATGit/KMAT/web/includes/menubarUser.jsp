<%-- 
    Document   : menubarUser
    Created on : Jul 26, 2016, 12:28:23 PM
    Author     : Habiba Saim
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
    String user = request.getParameter("userName");
%>

<div id = "header">
    <ul>
     <li class = "home"><a  href="UserHome.jsp">Home</a></li>
      <li class = "news"><a href="UserNews.jsp">News</a></li>
      <li class = "contact"><a href="UserContactUs.jsp">Contact</a></li>
      <li class = "about"><a href="UserAboutUs.jsp">About</a></li>
      <li class = "map"><a href="UserMap.jsp">Site Map</a></li>    
      <li><a href = "login.jsp">Logout</a></li>
      
      <%-- Code to display hello message with user name - Starts--%> 
      <lable id = "hellomsg" align="left"><p id="welcome">Hi</p></lable>
      <script>
        var uname = document.getElementById("login-username").value;
        var msg = document.getElementById("helomsg");
        var msgvalue = document.getElementById("welcome");
       // document.getElementById('helomsg').innerHTML = msg;
        msgvalue.innerHTML ="Hi"+" "+user; 
	msg.style.display="block";
       </script>
       <%-- Code to display hello message with user name - Ends--%>
     
    </ul>
</div>
