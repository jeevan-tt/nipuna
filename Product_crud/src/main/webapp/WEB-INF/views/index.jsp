<html>
<head>
<%@include file="./base.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
</head>
<body center>
<div class="container" mt-3>
<div class="row">
<div class="col-md-12">
<h1 class="text-center mb-3"> Welcome to product crud page</h1>
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">S.N</th>
      <th scope="col">Product Name</th>
      <th scope="col">Description</th>
      <th scope="col">Price</th>
       <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${product }" var="p">
    <tr>
      <th scope="row">P11${p.id }</th>
      <td>${p.name }</td>
      <td>${p.description }</td>
      <td>&#x20b9 ${p.price }</td>
      <td><a href="delete-${p.id}"><i class="fa-solid fa-trash-can text-danger"></i> </a>
      <a href="update-${p.id}"><i class="fa-solid fa-pen-nib"></i> </a>
      </td>
    </tr>
  </c:forEach>
  </tbody>
</table>
<div class="container text-center" >
<a href="add-product" class="btn btn-outline-success">Add Product</a>
</div>

</div>
</div>
</div>

</body>
</html>
