<%-- 
    Document   : Map
    Created on : Aug 16, 2016, 10:44:52 AM
    Author     : Habiba Saim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/mainStyle.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <title>Map</title>
    </head>
    <body class = "map">
         <%-- Menubar starts --%>
       <jsp:include page="includes/menubarUser.jsp" />
       <%-- Menubar Ends --%>
       
       <%-- Slider starts --%>
       <div id = simple>  
            <jsp:include page="includes/topSliderImages.jsp" />
       </div>
       <%-- Slider ends --%>
       <h1>Map Page is under construction</h1>
       <%-- Sidebar Menu Starts 
       <jsp:include page="includes/sidebarUserMenu.jsp" />       
       <%-- Sidebar Menu Ends --%>
        
        <%-- adds Top Slider, login functions --%>
        <jsp:include page="includes/js.jsp" /> 
        
        <%-- Includes footer --%>
        <jsp:include page="includes/footer.jsp" />
        
    </body>
</html>

