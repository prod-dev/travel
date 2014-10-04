<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form action="search" method="GET">
    <table>
      <tr>
        <td>出发站</td>
        <td><input type="text" name="from" value="${condition.from }"></td>
        <td>到达站</td>
        <td><input type="text" name="to" value="${condition.to }"></td>
        <td>出发日期</td>
        <td><input type="text" name="startDate" value="${condition.startDate }"></td>
        <td><input type="submit" value="搜索"></td>
      </tr>
    </table>
  </form>
  <form action="booking" method="POST">
    <table>
      <c:forEach var="line" items="${lines}">
        <tr>
          <td>${line.lineNo }</td>
          <td>${line.startTime }</td>
          <td>${line.arriveTime }</td>
          <td>${line.fromStation }</td>
          <td>${line.toStation }</td>
          <td>${line.carType }</td>
          <td>${line.price }</td>
          <td><input type="submit" value="预定"></td>
        </tr>
      </c:forEach>
    </table>
  </form>
</body>
</html>