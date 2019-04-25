<!doctype html>
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
  <!-- Content here -->
 <table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>N° Compte</th>
                <th>Montant</th>
                <th>Action</th>
            </tr>
        </thead>
        
			<tr>

               
                <td>03372 00150 05417</td>
				 <td>8 570 ?</td>
				 <td><a href="details"><button type="button" class="btn btn-primary" >Détail</button></a></td>
                
            </tr>
            			
			<tr>
            
                <td>04521 00470 05784</td>
				<td>2 165 ?</td>
				 <td><a href="details"><button type="button" class="btn btn-primary" >Détail</button></a></td>
                
            </tr>
        </tbody>
    </table>
</div>
</div>
 </body>
</html>