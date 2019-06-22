<%--
  Created by IntelliJ IDEA.
  User: yahia
  Date: 9/21/2018
  Time: 3:35 PM
  To change this template use File | Settings | File Templates.
--%>
<div class="container">



            <%--<div >--%>
                <%--<label style="color: green; font-size: 20px">${code}</label>--%>
            <%--</div>--%>
            <h3>Order list</h3>
    <%--<div class="thumbnail" style="width: 45%; background-color: #818182;">--%>
            <table class="table table-hover" style="width: 45%;">

                <thead>
                <tr>
                    <th scope="col"></th>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Price</th>
                </tr>
                </thead>
                <tbody>
                 <c:forEach items="${toCart}" var="item" varStatus="status">
                 <tr><td>   <img src="./images/${item.id}.jpg" style="width: 40px; height: 40px; " /></td>
                     <td>${item.id}</td>
                    <td>   ${item.name} </td>
                    <td>  ${item.unitPrice}</td>
                 </tr>
                </c:forEach>

                <tr><td></td>
                    <td></td>
                    <td>Total :  </td>
                    <td>${total}
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="btn btn-success" id="buy"
                           href="/buy">Buy</a>
                    </td >

                </tr>
                </tbody>

            </table>



    <div class="space">

    </div>
    <div class="col-lg-12">

            <%----%>
                    <table id ="productListTable" class="table table-striped table-borderd" style="width: 100%;">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Description</th>
                            <th>Price</th>
                            <th>Qty. Available</th>
                            <th></th>
                        </tr>

                        </thead>
// body to be fieled
                        <tfoot>
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Description</th>
                            <th>Price</th>
                            <th>Qty. Available</th>
                            <th></th>

                        </tr>

                        </tfoot>
                    </table>





</div>
</div>


</div>
