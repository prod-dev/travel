<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>This is the real Index page</title>
</head>
<body>
  <h1>This is the real Index page您好</h1>
  <table>
    <c:forEach var="ticket" items="${tickets}">
      <tr>
        <td>${ticket.seatNo}</td>
        <td>${ticket.price}</td>
      </tr>
    </c:forEach>
  </table>
</body>
</html>