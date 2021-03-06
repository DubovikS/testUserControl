<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title></title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="<c:url value="styles/style.css"/> " >
  <style>
    body {
      margin: 0;
      padding: 0;
      height: 100%;
      background: -webkit-radial-gradient(center, circle farthest-corner, rgba(255,255,255,0) 50%, rgba(200,200,200,1)), -webkit-radial-gradient(center, circle, rgba(255,255,255,.35), rgba(255,255,255,0) 20%, rgba(255,255,255,0) 21%), -webkit-radial-gradient(center, circle, rgba(0,0,0,.2), rgba(0,0,0,0) 20%, rgba(0,0,0,0) 21%), -webkit-radial-gradient(center, circle farthest-corner, #f0f0f0, #c0c0c0);
      background: -moz-radial-gradient(center, circle farthest-corner, rgba(255,255,255,0) 50%, rgba(200,200,200,1)), -moz-radial-gradient(center, circle, rgba(255,255,255,.35), rgba(255,255,255,0) 20%, rgba(255,255,255,0) 21%), -moz-radial-gradient(center, circle, rgba(0,0,0,.2), rgba(0,0,0,0) 20%, rgba(0,0,0,0) 21%), -moz-radial-gradient(center, circle farthest-corner, #f0f0f0, #c0c0c0);
      background: radial-gradient(center, circle farthest-corner, rgba(255,255,255,0) 50%, rgba(200,200,200,1)), radial-gradient(center, circle, rgba(255,255,255,.35), rgba(255,255,255,0) 20%, rgba(255,255,255,0) 21%), radial-gradient(center, circle, rgba(0,0,0,.2), rgba(0,0,0,0) 20%, rgba(0,0,0,0) 21%), radial-gradient(center, circle farthest-corner, #f0f0f0, #c0c0c0);
      -webkit-background-size: 100% 100%, 10px 10px, 10px 10px, 100% 100%;
      -moz-background-size: 100% 100%, 10px 10px, 10px 10px, 100% 100%;
      background-size: 100% 100%, 10px 10px, 10px 10px, 100% 100%;
      background-repeat: repeat;
      background-position: top center, 1px 1px, 0px 0px, top center;
    }
    table{
      color: mediumblue;
      font-family: cursive;
    }
    th {
      color: snow;
    }
  </style>
</head>
<body>


<form action="/adminPanel" class="form-inline" method="post">
  <div class="form-group">
    <label class="sr-only">Email</label>
    <p class="form-control-static">Admin panel</p>
  </div>
  <div class="form-group">
    <label for="inputPassword2" class="sr-only">Password</label>
    <input type="password" class="form-control" id="inputPassword2" name="passwordInput" placeholder="Password">
  </div>
  <button type="submit" class="btn btn-default">Confirm identity</button>
</form>

<c:if test="${!empty listUsers}">
<div class="table-responsive">
  <table class="table table-hover">
    <tr>
      <th>First Name</th>
      <th>Second Name</th>
      <th>Status</th>
    </tr>
    <c:forEach items="${listUsers}" var="user">
      <tr>
        <td>${user.firstName}</td>
        <td>${user.secondName}</td>
        <td>inside</td>
      </tr>
    </c:forEach>
  </table>
</div>
</c:if>
</body>
</html>
