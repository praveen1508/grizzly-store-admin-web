<html>
    <head>
  <title>Admin-Add Product</title>
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
  <br><br><br>
<div class="container">
  <form class="form" action="addProduct" method="POST" enctype="multipart/form-data">
    <div class="form-group">
      <label for="pname">Product Name:</label>
      <input type="text" class="form-control" id="pname" placeholder="Enter Product name" name="pname">
    </div>
    <div class="form-group">
      <label for="brand">Brand:</label>
      <input type="text" class="form-control" id="brand" placeholder="Enter Brand name" name="brand">
    </div>
     <div class="form-group">
    <label for="category">Category</label>
    <select class="form-control" id="category" name="category">
      <option value="personalcare">Personal Care</option>
      <option value="computer">computer</option>
      <option value="artsupplies">Art Supplies</option>
    </select>
  </div>
 <div class="form-group">
      <label for="price">Price:</label>
      <input type="text" class="form-control" id="price" placeholder="Enter Price" name="price">
    </div>
    <div class="form-group">
      <label for="image">Image:</label>
      <input type="file" class="form-control" id="image" placeholder="Choose Image" name="file">
    </div>
<div class="form-group">
	<label for="image">Description:</label><br>
    <textarea rows="4" cols="50" name="description">
</textarea>

    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>

</body>
</html>
