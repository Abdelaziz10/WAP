<%--
  Created by IntelliJ IDEA.
  User: yahia
  Date: 9/21/2018
  Time: 5:41 PM
  To change this template use File | Settings | File Templates.
--%>
<div class="container">

    <div class="row">


    <div class="col-lg-12">

    <%--<div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">--%>
        <%--<ol class="carousel-indicators">--%>
            <%--<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>--%>
            <%--<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>--%>
            <%--<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>--%>
        <%--</ol>--%>
        <%--<div class="carousel-inner" role="listbox">--%>
            <%--<div class="carousel-item active">--%>
                <%--<img class="d-block img-fluid imgs" src="./images/5.jpg" alt="First slide">--%>
            <%--</div>--%>
            <%--<div class="carousel-item">--%>
                <%--<img class="d-block img-fluid imgs" src="./images/6.jpg" alt="Second slide">--%>
            <%--</div>--%>
            <%--<div class="carousel-item">--%>
                <%--<img class="d-block img-fluid imgs" src="./images/7.jpg" alt="Third slide">--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">--%>
            <%--<span class="carousel-control-prev-icon" aria-hidden="true"></span>--%>
            <%--<span class="sr-only">Previous</span>--%>
        <%--</a>--%>
        <%--<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">--%>
            <%--<span class="carousel-control-next-icon" aria-hidden="true"></span>--%>
            <%--<span class="sr-only">Next</span>--%>
        <%--</a>--%>
    <%--</div>--%>

    <div class="row">

        <%--<c:forEach var="product" items="${array}">--%>
            <%--&lt;%&ndash; This calls the getId() method on your asd object &ndash;%&gt;--%>
            <%--<c:out value="${product.id}"/>--%>
            <%--&lt;%&ndash; This calls the getName() method on your asd object &ndash;%&gt;--%>
            <%--<c:out value="${product.name}"/>--%>
        <%--</c:forEach>--%>

        <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
                <a href="singleProduct?id=1" class="one" ><img class="card-img-top imgk" src="./images/1.jpg" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="singleProduct?id=1" class="btn btn-primary one"><span style="width: 35px; height: 15px;" class="glyphicon glyphicon-eye-open"></span></a>
                        &nbsp;&nbsp;&nbsp;
                        <a href="add/product/cart?id=1" class="btn btn-success"><span style="width: 35px; height: 15px;" class="glyphicon glyphicon-shopping-cart"></span></a>

                    </h4>
                    <h5>$100.00></h5>
                    <p class="card-text">Fetal Tibeb </p>
                </div>
                <div class="card-footer">
                    <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
            </div>
        </div>

        <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
                <a href="singleProduct?id=2" class="two"><img class="card-img-top imgk" src="images/10.jpg" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="singleProduct?id=2" class="btn btn-primary two"><span style="width: 35px; height: 15px;" class="glyphicon glyphicon-eye-open"></span></a>
                        &nbsp;&nbsp;&nbsp;
                        <a href="add/product/cart?id=2" class="btn btn-success"><span style="width: 35px; height: 15px;" class="glyphicon glyphicon-shopping-cart"></span></a>

                    </h4>
                    <h5>$200.00</h5>
                    <p class="card-text">Derbader !</p>
                </div>
                <div class="card-footer">
                    <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
            </div>
        </div>

        <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
                <a href="singleProduct?id=3" class="three"><img class="card-img-top imgk" src="./images/3.jpg" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="singleProduct?id=3" class="btn btn-primary three"><span style="width: 35px; height: 15px;" class="glyphicon glyphicon-eye-open"></span></a>
                        &nbsp;&nbsp;&nbsp;
                        <a href="add/product/cart?id=3" class="btn btn-success"><span style="width: 35px; height: 15px;" class="glyphicon glyphicon-shopping-cart"></span></a>

                    </h4>
                    <h5>$300.99</h5>
                    <p class="card-text">Menen Zurya </p>
                </div>
                <div class="card-footer">
                    <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
            </div>
        </div>

        <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
                <a href="singleProduct?id=4" class="four"><img class="card-img-top imgk" src="./images/4.jpg" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="singleProduct?id=4" class="btn btn-primary four"><span style="width: 35px; height: 15px;" class="glyphicon glyphicon-eye-open"></span></a>
                        &nbsp;&nbsp;&nbsp;
                        <a href="add/product/cart?id=4" class="btn btn-success"><span style="width: 35px; height: 15px;" class="glyphicon glyphicon-shopping-cart"></span></a>

                    </h4>
                    <h5>$400.99</h5>
                    <p class="card-text">Shifon Shinshin</p>
                </div>
                <div class="card-footer">
                    <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
            </div>
        </div>

        <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
                <a href="singleProduct?id=5" class="five"><img class="card-img-top imgk" src="./images/5.jpg" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="singleProduct?id=5" class="btn btn-primary five"><span style="width: 35px; height: 15px;" class="glyphicon glyphicon-eye-open"></span></a>
                        &nbsp;&nbsp;&nbsp;
                        <a href="add/product/cart?id=5" class="btn btn-success"><span style="width: 35px; height: 15px;" class="glyphicon glyphicon-shopping-cart"></span></a>

                    </h4>
                    <h5>$500.99</h5>
                    <p class="card-text">Denkoro Dembelas </p>
                </div>
                <div class="card-footer">
                    <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
            </div>
        </div>

        <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
                <a href="singleProduct?id=6" class="six"><img class="card-img-top imgk" src="./images/6.jpg" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="singleProduct?id=6" class="btn btn-primary six"><span style="width: 35px; height: 15px;" class="glyphicon glyphicon-eye-open"></span></a>
                        &nbsp;&nbsp;&nbsp;
                        <a href="add/product/cart?id=6" class="btn btn-success"><span style="width: 35px; height: 15px;" class="glyphicon glyphicon-shopping-cart"></span></a>

                    </h4>
                    <h5>$600.99</h5>
                    <p class="card-text">Abu Jedid</p>
                </div>

                <div class="card-footer">
                    <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
            </div>
        </div>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <a href="singleProduct?id=7" class="six"><img class="card-img-top imgk" src="./images/7.jpg" alt=""></a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="singleProduct?id=7" class="btn btn-primary six"><span style="width: 35px; height: 15px;" class="glyphicon glyphicon-eye-open"></span></a>
                            &nbsp;&nbsp;&nbsp;
                            <a href="add/product/cart?id=7" class="btn btn-success"><span style="width: 35px; height: 15px;" class="glyphicon glyphicon-shopping-cart"></span></a>

                        </h4>
                        <h5>$700.99</h5>
                        <p class="card-text">Eterter Menen</p>
                    </div>

                    <div class="card-footer">
                        <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <a href="singleProduct?id=8" class="six"><img class="card-img-top imgk" src="./images/8.jpg" alt=""></a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="singleProduct?id=8" class="btn btn-primary six"><span style="width: 35px; height: 15px;" class="glyphicon glyphicon-eye-open"></span></a>
                            &nbsp;&nbsp;&nbsp;
                            <a href="add/product/cart?id=8" class="btn btn-success"><span style="width: 35px; height: 15px;" class="glyphicon glyphicon-shopping-cart"></span></a>

                        </h4>
                        <h5>$800.99</h5>
                        <p class="card-text">Shifon Keshkesh</p>
                    </div>

                    <div class="card-footer">
                        <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <a href="singleProduct?id=9" class="six"><img class="card-img-top imgk" src="./images/9.jpg" alt=""></a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="singleProduct?id=9" class="btn btn-primary six"><span style="width: 35px; height: 15px;" class="glyphicon glyphicon-eye-open"></span></a>
                            &nbsp;&nbsp;&nbsp;
                            <a href="add/product/cart?id=9" class="btn btn-success"><span style="width: 35px; height: 15px;" class="glyphicon glyphicon-shopping-cart"></span></a>

                        </h4>
                        <h5>$900.99</h5>
                        <p class="card-text"> Zurya Menen</p>
                    </div>

                    <div class="card-footer">
                        <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <a href="singleProduct?id=10" class="six"><img class="card-img-top imgk" src="images/2.jpg" alt=""></a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="singleProduct?id=10" class="btn btn-primary six"><span style="width: 35px; height: 15px;" class="glyphicon glyphicon-eye-open"></span></a>
                            &nbsp;&nbsp;&nbsp;
                            <a href="add/product/cart?id=10" class="btn btn-success"><span style="width: 35px; height: 15px;" class="glyphicon glyphicon-shopping-cart"></span></a>

                        </h4>
                        <h5>$1000.99</h5>
                        <p class="card-text">Yahibro Style</p>
                    </div>

                    <div class="card-footer">
                        <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                    </div>
                </div>
            </div>

    </div>
    <!-- /.row -->

</div>
<!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

</div>