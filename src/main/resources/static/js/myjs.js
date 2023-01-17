/*load data into datatable*/
let tablevar=""
$(document).ready(function () {
   tablevar =$("#datatable").DataTable({
        sort: true,
        searching: true,
        paging: true,
        columns: [
          {   'data' : 'id',
                render : function (id, type, row, meta){
                    return `<a  id="editlink" data-toggle="modal" data-target="#exampleModalupdate">${id}</a>`;
                }
            },

            {'data': 'name'},
            {'data': 'description'},
            {'data': 'price'},
            {"defaultContent": "<button id='btnDelete'>Delete</button>"}
        ]
    });

    /*get All products start*/
    getAllProducts("http://localhost:8080/product","GET");

    /*get All products end*/





    /*add product start*/
    $('#btnAddProduct').click(function () {
        var product = {};
        product.name = $('#pName').val();
        product.description = $('#pDesc').val();
        product.price = $('#pPrice').val();

        var productJSON = JSON.stringify(product);
        $.ajax({
            url: 'http://localhost:8080/product/save',
            method: 'POST',
            data: productJSON,
            contentType: "application/json; charset=utf-8",
            success: function (data) {
                tablevar.row.add(data).draw();
                swal("Good job!", "You Product is saved inside database!", "success");
                $('#exampleModal').modal('hide');
                resetForm();
            },
            error: function (error) {
                swal("Oh!", "Something went worng!", "error");
            }
        })
    });
    /*add product end*/

    /*delete product start*/
    $('#datatable tbody').on('click', '#btnDelete', function () {
        let row = $(this).closest('tr');
        let data = tablevar.row( row ).data();

        $.ajax({
            //data : data,
            url: "http://localhost:8080/product/delete/"+data.id,
            method: "DELETE",
            contentType : "application/json; charset=utf-8",
            success: function () {
                swal("Good Job","Record deleted successfully", "success");
                tablevar.row(row).remove().draw();
            },
            error: function (error){
                swal("Bad Request", "Record not deleted ", "error");
            }
        });
    });
    /*delete product end*/
    /*update product start*/
    $('#datatable tbody').on('click', '#editlink', function () {
        console.log("Hello");
        let row = $(this).closest('tr');
        let data = tablevar.row( row ).data();
        $('#pNameu').val(data.name);
        $('#pDescu').val(data.description);
        $('#pPriceu').val(data.price);
    });
    /*update product ajax */
    $('#btnUpdateProduct').click(function (){
        let row = $('#editlink').closest('tr');
        let id = tablevar.row( row ).data().id;
        let product = {};
        product.id = id;
        product.name = $('#pNameu').val();
        product.description = $('#pDescu').val();
        product.price = $('#pPriceu').val();

        let productJson = JSON.stringify(product);
        $.ajax({
            url: 'http://localhost:8080/product/save',
            method: 'POST',
            data: productJson,
            contentType: "application/json; charset=utf-8",
            success: function (data) {
                tablevar.row(row).data(data).draw();
                swal("Good job!", "You Product is updated inside database!", "success");
                $('#exampleModalupdate').modal('hide');

            },
            error: function (error) {
                swal("Oh!", "Something went worng!", "error");
            }
        })
    });

    function resetForm(){
        $('form').each(function (i, element){
                $(element)[0].reset();
        });
    }
})


