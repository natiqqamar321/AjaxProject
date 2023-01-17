function getAllProducts(apiurl,apimethod){
    $.ajax({
        url: apiurl,
        method: apimethod,
        dataType: "json",
        success: function (data) {
            tablevar.rows.add(data).draw();
        },
        error:function (jqxhr, textStatus, error){
            swal("Oh!", "Something went wrong!", "error");
        }
    });
}