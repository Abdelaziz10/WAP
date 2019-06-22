var newId;
var newUrl;
var hadeshData;
$(function() {
$('#buy').click(function () {
    alert("Cheched Out Successfully ! Reciept Number is: "+Math.random().toString(36).substring(7));
});
    // $('#productListTable').DataTable();

});


    var $table = $('#productListTable');


    if($table.length){

        $table.DataTable({
            lengthMenu: [[3,5,10,-1],['3 Records','5 Records','10 Records','ALL']],
            pageLength: 5,

            ajax: {
                url: "http://localhost:8080/jsonData",
                dataSrc: 'products'
            },
            columns: [
                {  data : 'id',
                    mRender: function(data , type , row){
                return '<img src="./images/'+data+'.jpg" style="width: 100px; height: 100px; " class="sieli"/>';

                }
                },
                {
                    data : 'name'
                },
                {
                    data : 'description'
                },
                {
                    data : 'unitPrice',
                    mRender: function(data,type,row){
                        return '&#36; '+ data
                    }
                },
                {
                    data : 'quantity',
                    mRender: function(data, type, row){

                        if(data < 1){
                            return '<span style="color:red" >Out of Stock</span>';
                        }
                        return data;
                    }
                },
                {
                    data: 'id',
                    bSortable: false,
                    mRender: function(data , type , row){
                        var str = '';
                         str += '<a href="singleProduct" class="btn btn-primary"><span class="glyphicon glyphicon-eye-open"></span></a> &#160;';
                        if(row.quantity < 1){
                        str += '<a href="" class="btn btn-success disabled"><span class="glyphicon glyphicon-shopping-cart"></span></a>';
                            // newId = data;
                      }
                        else{
                            newId = data;


                            // newUrl = "http://localhost:8080/jsonDataToCart"+data;
                         str += '<a href="add/product/cart?id='+data+'" class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart"></span></a>';

                       }
                        return str;
                    }
                }
            ]

        });
    }


    //------------------------------------------
    // data table for admin
    //-------------------------------------------

    var $adminProductsTable = $('#adminProductsTable');
    // execute the bellow code only when we have this table
    if($adminProductsTable.length){


        $adminProductsTable.DataTable({
            lengthMenu: [[10,30,50,-1],['10 Records','30 Records','50 Records','ALL']],
            pageLength: 5,
            ajax: {
                url: "http://localhost:8080/jsonData",
                dataSrc: 'products'
            },
            columns: [
                {
                    data: 'id'
                },

                {
                    data: 'id',
                    mRender: function(data,type,row){
                        return '<img src="./images/'+data+'.jpg" style="width: 120px; height: 120px; " class="sieli"/>';
                    }
                },
                {
                    data: 'name'
                },
                {
                    data: 'description'
                },

                {
                    data: 'quantity',
                    mRender: function(data, type, row){

                        if(data < 1){
                            return '<span style="color:red" >Out of Stoc k</span>';
                        }
                        return data;
                    }
                },
                {
                    data: 'unitPrice',
                    mRender: function(data,type,row){
                        return '&#36; '+ data
                    }
                },
                {
                    data: 'active',
                    bSortable: false,
                    mRender: function(data, type,row){
                        var str='';
                        str += '<label class="switch">';
                        if(data){
                            str += '<input type="checkbox" checked="checked" value="'+row.id+'" />';
                        }else{

                            str += '<input type="checkbox" value="'+row.id+'" />';
                        }
                        str += '<div class="slider round"></div></label>';
                        return str;
                    }

                },
                {
                    data: 'id',
                    bSortable: false,
                    mRender: function(data,type,row){
                        var str ='';
                        str += '<a href="editProduct" class="btn btn-warning"> ';
                        str += '<span class="glyphicon glyphicon-pencil"></span></a>';
                        return str;
                    }
                }
            ],
            initComplete: function(){
                var api = this.api();
                api.$('.switch input[type="checkbox"]').on('change', function(){
                    var checkbox = $(this);
                    var checked = checkbox.prop('checked');
                    var dMsg = (checked)? 'You want to activate the product':
                        'You want to deactivate the product';
                    var value = checkbox.prop('value');
                    bootbox.confirm({
                        size: 'medium',
                        title: 'Product Avtivation and Deactivation',
                        message: dMsg,
                        callback: function(confirmed){

                            if(confirmed){
                                console.log(value);
                                var activationUrl = window.contextRoot + '/manage/product/' + value + '/activation'
                                $.post(activationUrl, function(data){
                                    bootbox.alert({
                                        size: 'medium',
                                        title: 'Information',
                                        message: data

                                    });
                                })

                            }
                            else{
                                checkbox.prop('checked',!checked);
                            }
                        }

                    });

                });
            }

        });
    }


    //----------------------------------------

// var content = "<table id='cartTable' class='table table-striped table-borderd'>"
//
// content += '<thead> <tr> <th>Name</th>  <th>Price</th> <th>Quantity</th>  </tr> </thead>'
// content += '<thead> <tr> <th>Name</th>  <th>Price</th> <th>Quantity</th>  </tr> </thead>'
//
// content += "</table>"
//
// $('#cart').append(content);
