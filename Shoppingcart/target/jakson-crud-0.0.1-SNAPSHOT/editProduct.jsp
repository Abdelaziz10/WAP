<%--
  Created by IntelliJ IDEA.
  User: yahia
  Date: 9/25/2018
  Time: 5:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<div class="container">
    <div class="row">
        <%--<c:if test="${not empty message}">--%>
            <%--<div class="col-xs-12">--%>
                <%--<div class="alert alert-success alert-dismissible">--%>
                    <%--<button type="button" class="close" data-dismiss="alert"></button>--%>
                        <%--${message}--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</c:if>--%>
        <div class="col-md-offset-2 col-md-8">

            <div class="panel panel-primary">


                <div class="panel-heading">
                    <h4>Product Management</h4>
                </div>
                <div class="panel-body">
                    <!-- FORM ELEMENTS -->
                    <%--<sf:form class="form-horizontal" modelAttribute="product"--%>
                             <%--action="${contextRoot}/manage/products" method="POST"--%>
                             <%--enctype="multipart/form-data">--%>


                        <div class="form-group">
                            <label class="control-label col-md-4" for="name">Enter
                                Product Name :</label>
                            <div class="col-md-8">
                                <input type="text" path="name" id="name"
                                          placeholder="Product Name" class="form-control" />
                                <%--<sf:errors path="name" cssClass="help-block" element="em" />--%>
                            </div>

                        </div>


                        <div class="form-group">
                            <label class="control-label col-md-4" for="brand">Enter
                                Brand Name :</label>
                            <div class="col-md-8">
                                <input type="text" path="brand" id="brand"
                                          placeholder="Brand Name" class="form-control" />
                                <%--<sf:errors path="brand" cssClass="help-block" element="em" />--%>
                            </div>

                        </div>


                        <div class="form-group">
                            <label class="control-label col-md-4" for="description">Enter
                                Unit Price :</label>
                            <div class="col-md-8">
                                <textarea path="description" id="description"
                                             placeholder="Write a description" class="form-control" />
                                <%--<sf:errors path="description" cssClass="help-block" element="em" />--%>
                            </div>

                        </div>


                        <div class="form-group">
                            <label class="control-label col-md-4" for="unitPrice">Enter
                                Brand Name :</label>
                            <div class="col-md-8">
                                <input type="text" path="unitPrice" id="unitPrice"
                                          placeholder="Unit Price in &#36;" class="form-control" />
                                <%--<sf:errors path="unitPrice" cssClass="help-block" element="em" />--%>
                                <!-- <em class="help-block">Please Enter Brand Name !</em> -->
                            </div>

                        </div>


                        <div class="form-group">
                            <label class="control-label col-md-4" for="quantity">Quantity
                                Available :</label>
                            <div class="col-md-8">
                                <input type="text" path="quantity" id="quantity"
                                          placeholder="Quantity Available" class="form-control" />
                            </div>

                        </div>
                        <!-- file upload for image -->
                        <div class="form-group">
                            <label class="control-label col-md-4" for="file">Select
                                An Image : </label>
                            <div class="col-md-8">
                                <input type="file" path="file" id="file" class="form-control" />
                                <%--<sf:errors path="file" cssClass="help-block" element="em" />--%>
                            </div>

                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-4" for="categoryId">Select
                                Category :</label>
                            <div class="col-md-8">
                                <select path="categoryId" id="categoryId"
                                           class="form-control"  itemLabel="name"
                                           itemValue="id" />
                                <%--/*items="${categories}"*/--%>
                                <%--<c:if test="${product.id == 0}">--%>
                                    <br />
                                    <div class="text-right">
                                        <input type="button" data-toggle="modal"
                                               data-target="#myCategoryModal" class="btn btn-warning btn-xs">Add
                                        Category</input>
                                    </div>
                                <%--</c:if>--%>

                            </div>

                        </div>

                        <div class="form-group">

                            <div class="col-md-offset-4 col-md-8">
                                <input type="submit" name="submit" id="submit" value="Submit"
                                       class="btn btn-primary" />

                            </div>

                        </div>
                        <%--<sf:hidden path="id" />--%>
                        <%--<sf:hidden path="code" />--%>
                        <%--<sf:hidden path="supplierId" />--%>
                        <%--<sf:hidden path="active" />--%>
                        <%--<sf:hidden path="purchases" />--%>
                        <%--<sf:hidden path="views" />--%>
                    <%--</sf:form>--%>

                </div>
            </div>


        </div>


    </div>
</div>