<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Payment</title>
</head>
</head>
<body>
  <form action="confirmation" method="POST">
    <table>
      <tr>
        <td>${line.lineNo }</td>
      </tr>
      <tr>
        <td>${line.fromStation }</td>
      </tr>
      <tr>
        <td>${line.toStation }</td>
      </tr>
      <tr>
        <td>${line.carType }</td>
      </tr>
      <tr>
        <td>${line.price }</td>
      </tr>
      <tr>
        <td>支付信息</td>
      </tr>
      <tr>
        <td>信用卡</td>
      </tr>
      <tr>
        <td><input type="submit" value="支付"></td>
      </tr>
    </table>
  </form>
</body>
</html>