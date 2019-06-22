<%--
  Created by IntelliJ IDEA.
  User: yahia
  Date: 9/21/2018
  Time: 5:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<div class="container">

	<div class="row">

    <div class="col-sm-4">
        <div class="thumbnail" >
            <div class="img img-responsive imgk">
        <img src="./images/${product.id}.jpg" class="img img-responsive imgk" /></div>
    </div>
    </div>
    <!-- display the product description -->
    <div class="col-sm-8">

        <h3>${product.name}</h3>
        <hr />
        <p>${product.description}</p>

        <hr />
        <h4>
            Price: <strong> &#36; ${product.unitPrice}</strong>
        </h4>
        <hr />


        <c:choose>
            <c:when test="${product.quantity <1}">
                <h6>Qty. Available: <span style="color:red">Out of Stock!</span></h6>
            </c:when>
            <c:otherwise>
                <h6>Qty. Available: ${product.quantity}</h6>
            </c:otherwise>
        </c:choose>

        <hr />
        <c:choose>
            <c:when test="${product.quantity <1}">
                <a href="" class="btn btn-success disabled"><strike> <span
                        class="glyphicon glyphicon-shopping-cart"></span>Add to Cart</strike></a>
            </c:when>
            <c:otherwise>
                <a href="add/product/cart?id=${product.id}" class="btn btn-success"> <span
                        class="glyphicon glyphicon-shopping-cart"></span>Add to Cart</a>

            </c:otherwise>
        </c:choose>


        <a href="home"
           class="btn btn-primary">Back</a>

    </div>
</div>

</div>
