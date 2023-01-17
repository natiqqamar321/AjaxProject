<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Product Mangement App</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!--JQuery dataTable CSS library-->
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.18/css/jquery.dataTables.css"/>
  <!--Include custom css-->
  <link href="css/mycss.css" rel="stylesheet">
  <%--bootstrap --%>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-3">
  <div class="row">
    <div class="col-md-12">
      <h1 class="text-center mb-3">Welcome to Product Mangement Application</h1>
      <table id = "datatable" class="table table-dark">
    <thead>
    <tr>
      <th>Id</th>
      <th>Name</th>
      <th>Description</th>
      <th>Price</th>
      <th>Action</th>
    </tr>
    </thead>
  </table>

      <div class="container text-center">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">Add Product</button>
      </div>

      <%--Add Model start--%>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h2 class="modal-title" id="exampleModalLabel">Add New Product</h2>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close" >
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="pName" class="col-form-label">Product Name</label>
            <input type="text" class="form-control" id="pName" name="pname">
          </div>
          <div class="form-group">
            <label for="pDesc" class="col-form-label">Product Description</label>
            <input type="text" class="form-control" id="pDesc" name="pDesc">
          </div>
          <div class="form-group">
            <label for="pPrice" class="col-form-label">Price</label>
            <input type="number" class="form-control" id="pPrice" name="pPrice">
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button"  id="btnAddProduct" class="btn btn-primary">Add Record</button>
      </div>
    </div>
  </div>
</div>
      <%--Add model end--%>
      <%--update model start--%>
      <div class="modal fade" id="exampleModalupdate" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelupdate" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h2 class="modal-title" id="exampleModalLabelupdate">Update Product</h2>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close" >
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form>
                <div class="form-group">
                  <label for="pName" class="col-form-label">Product Name</label>
                  <input type="text" class="form-control" id="pNameu" name="pName">
                </div>
                <div class="form-group">
                  <label for="pDesc" class="col-form-label">Product Description</label>
                  <input type="text" class="form-control" id="pDescu" name="pDesc">
                </div>
                <div class="form-group">
                  <label for="pPrice" class="col-form-label">Price</label>
                  <input type="number" class="form-control" id="pPriceu" name="pPrice">
                </div>
              </form>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="button"  id="btnUpdateProduct" class="btn btn-primary">Update Record</button>
            </div>
          </div>
        </div>
      </div>
      <%--update model end--%>
  </div>
  </div>
</div>

<!--JQuery Core Library-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!--jQuery dataTable JS library-->
<script type="text/javascript" src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.js"></script>
<!--Include custom js-->
<script src="js/myjs.js"></script>
<script src="js/Ajax.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<%--bootstrap end--%>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</body>
</html>