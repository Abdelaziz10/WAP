<%--
  Created by IntelliJ IDEA.
  User: yahia
  Date: 9/23/2018
  Time: 4:39 PM
  To change this template use File | Settings | File Templates.
--%>
<div class="container">


        <div style="text-align: right">
       <span style="font-size: 35px; font-weight: bold;">${user.username}</span>&nbsp;&nbsp;&nbsp;
    <a href="/logout" id="logoutbuton" class="btn btn-primary">Log Out</a>
</div>
    <h3>Available Products</h3>

    <hr/>
<div class="col-lg-12">
    <div style="overflow: auto">
        <!-- products table for the admin -->
        <table id="adminProductsTable"
               class="table table-striped table-borderd">
            <thead>
            <tr>
                <th>Id</th>
                <th>&#160;</th>
                <th>Name</th>
                <th>Brand</th>
                <th>Quantity</th>
                <th>Unit Price</th>
                <th>Active</th>
                <th>Edit</th>
            </tr>
            </thead>

            <tfoot>
            <tr>
                <th>Id</th>
                <th>&#160;</th>
                <th>Name</th>
                <th>Brand</th>
                <th>Quantity</th>
                <th>Unit Price</th>
                <th>Active</th>
                <th>Edit</th>
            </tr>
            </tfoot>


        </table>

    </div>
</div>
</div>
</div>