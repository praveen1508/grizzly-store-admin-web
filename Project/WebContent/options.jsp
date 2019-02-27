<html>
    <head>
  <title>Grizzly-Admin</title>
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
        </div>
  <div class="container">
    <div class="card">
   <h1> Admin Portal</h1>
   <img src="C:\Users\765020.CTS\Documents\capture.jpg"  width="300" height="300">
    <form>
   
                     <div class="row">
			<div class="text-center col-md-2">
			 <td> </td> <td><a href="addproduct.jsp" <button type="submit" class="btn btn-success" >Add Products</button></td> <td></td></tr><br></a>
                   </div>

                     <div class="text-center col-md-2">
			 <td> </td> <td><a href="listproduct.jsp" <button type="submit" class="btn btn-info" onclick="viewproduct.jsp" />List Products</button></td> </tr><br></a>
                   </div>
			</div>
</form>               
</div>
</div>
</div>
</body>
</html>