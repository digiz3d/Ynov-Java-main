<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

   <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css" >
	 <script src="https://code.jquery.com/jquery-3.3.1.js" ></script>
 <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js" ></script>
 <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js" ></script>
    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		
		
<script>
$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').trigger('focus')
})

</script>

    <title>Ynov Bank</title>
  </head>
  <body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
 

    <div class="collapse navbar-collapse" id="navbarColor01">
      <ul class="navbar-nav mr-auto">

        <li class="nav-item ">
          <a class="nav-link" href="transactions">Transactions</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="values">Values</a>
        </li>

      </ul>
     
    </div>
  </nav>
  <br>	
  <br>
  <br>

<div class="container">
<div class="card" style="width: 100%">
  
  <div class="card-body">
    <h5 class="card-title"> N°${numero_compte}</h5>
	<br>
    <h6 class="card-title"> Date de création</h6>
    <p class="card-text">${date_creation}</p> 	
	    <h6 class="card-title">Solde</h6>
    <p class="card-text">${solde} ${devise}</p>
    <a href="transactions" class="btn btn-primary">Mes Transactions</a>
  </div>
</div>

</div>
</div>
   

  

 </body>
</html>