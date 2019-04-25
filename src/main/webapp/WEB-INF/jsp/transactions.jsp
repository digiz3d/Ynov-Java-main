<%@page import="java.util.ArrayList"%>
<%@page import="hello.Transaction"%>
<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
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

        <li class="nav-item active">
          <a class="nav-link" href="transactions">Transactions</a>
        </li>
        <li class="nav-item">
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
                <th>Id</th>
                <th>Date</th>
                <th>Destinataire</th>
                <th>Montant</th>
                <th>N° Compte</th>
            </tr>
        </thead>
        <tbody>
            <%
            ArrayList<Transaction> transactionList =(ArrayList<Transaction>) request.getAttribute("transactionList");
            int i=0;
            for(i=0;i<transactionList.size();i++)
            {
                out.print("<tr>"
                        + "<td>"+transactionList.get(i).getId()+"</td>"
                        + "<td>"+transactionList.get(i).getDate()+"</td>"
                        + "<td>"+transactionList.get(i).getDestinataire()+"</td>"
                        + "<td>"+transactionList.get(i).getMontant()+"</td>"
                        + "<td>"+transactionList.get(i).getNumero_compte()+"</td>"
                        + "</tr>");
                }
            %>
            <!--
            <tr>
                <td>5</td>
                <td>23/04/2019</td>
                <td>XXXX</td>
                <td>618 ?</td>
                <td>03372 00150 05417</td>
                
            </tr>
			
			<tr>
                <td>4</td>
                <td>20/04/2019</td>
                <td>XXXX</td>
                <td>596 ?</td>
                <td>03372 00150 05417</td>
                
            </tr>
            			
			<tr>
                <td>3</td>
                <td>13/04/2019</td>
                <td>XXXX</td>
                <td>25,75 ?</td>
                <td>03372 00150 05417</td>
                
            </tr>
            			
			<tr>
                <td>2</td>
                <td>25/05/2019</td>
                <td>XXXX</td>
                <td>1 500 ?</td>
                <td>03372 00150 05417</td>
                
            </tr>
            			
			<tr>
                <td>1</td>
                <td>20/05/2019</td>
                <td>XXXX</td>
                <td>65 ?</td>
                <td>03372 00150 05417</td>
                
            </tr>-->
            
            

        
        </tbody>
        <tfoot>
            <tr>
                <th>Id</th>
                <th>Date</th>
                <th>Destinataire</th>
                <th>Montant</th>
                <th>N° Compte</th>
                
            </tr>
        </tfoot>
    </table>
	
	
	
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Nouvelle transaction
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Nouvelle transaction</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
  <div class="form-group">
    <input type="text" class="form-control" id="" placeholder="N° de compte ">

  </div>
  <div class="form-group">
    <input type="number" class="form-control" id="" placeholder="XXX,XX ?">

  </div>

  <button type="submit" class="btn btn-success">Valider</button>
  <button type="button" class="btn btn-danger" data-dismiss="modal" >Annuler</button>
</form>
      </div>
 
    </div>
  </div>
</div>
</div>
   

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
	
	<script>
	$(document).ready(function() {
    $('#example').DataTable();
} );

</script>	

 </body>
</html>