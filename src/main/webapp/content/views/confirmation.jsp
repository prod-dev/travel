<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>支付成功</title>
</head>
<jsp:include page='header.jsp'/>
<jsp:include page='navbar.jsp' />
<body>
  <h1>支付成功</h1>
  <table>
    <tr>
      <td>${line.lineNo }</td>
      <td>${line.startTime }</td>
      <td>${line.arriveTime }</td>
      <td>${line.fromStation }</td>
      <td>${line.toStation }</td>
      <td>${line.carType }</td>
      <td>${line.price }</td>
    </tr>
  </table>
</body>
</html>