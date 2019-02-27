<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<html>
    <head>
  <title>Admin-Product List</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
   .table {
    border-radius: 5px;
    width: 50%;
    margin: 30px;
    float: center;
   }
   </style>
</head>
    <body>
      <nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
       <li><b><h4>GRIZZLY &nbsp</h4></b></li>
       <li><img src="C:\Users\765020.CTS\Documents\Capture.jpg" width="50" height="40"></li>
       <li><b><h4> &nbsp STORE &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></b></li>
    </ul>
    <form class="navbar-form navbar-left">
  <div class="input-group">
    <input type="text" class="form-control" placeholder="Search">
    <div class="input-group-btn">
      <button class="btn btn-default" type="submit">
        <i class="glyphicon glyphicon-search"></i>
      </button>
    </div>
    <ul class="nav navbar-nav">
       <li><b><h5>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Welcome,Admin <%out.print(session.getAttribute("uname"));   %>  </h5></b></li>
         
          <li>&emsp;&emsp;<a href="logout">
          <span class="glyphicon glyphicon-log-out"></span>
        </a></li>
      
    </ul>
  </div>
</form>
  </div>
</nav>
 <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/sample"
         user = "root"  password = "password-1"/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT pid,name,brand,category from Product;
      </sql:query>
 
        </div>
        <br/><br/><br/><br/><br/><br/>
        <div>
     <table class="table table-condensed">
    <thead>
      <tr>
        <th>Product List</th>
        <th>Brand</th>
        <th>Category</th>
        <th></th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var = "row" items = "${result.rows}">
            <tr>            
               <td><c:out value = "${row.name}"/></td>
               <td><c:out value = "${row.brand}"/></td>
               <td><c:out value = "${row.category}"/></td>
               
                <td><a href="viewproduct.jsp?pid=${row.pid}<c:set var = "pid" scope = "session" value = "2}"/>">View</a></td>
            </tr>
         </c:forEach>
    </tbody>
    </table>
            </div>
            <br>
            <br>
  </div>
  <div class="row">
    <div class="col-xs-4"></div>
     <div>   
         

  </div>
    </body>
</html>