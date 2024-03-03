<%--
  Created by IntelliJ IDEA.
  User: 刘利杰
  Date: 2023/10/6
  Time: 13:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h1>修改数据</h1>
<form action="updateFlight" method="post" accept-charset="UTF-8">
<input type="hidden" value="${flight.id}" name="id">
    <label>航&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号:&nbsp;<input type="text" value=" ${flight.flightId}" name="flightId"></label><br>
    <label>航空公司:&nbsp;<input type="text" value=" ${flight.company}" name="company"></label><br>
    <label>出发机场:&nbsp;<input type="text" value=" ${flight.departureAirport}" name="departureAirport"></label><br>
    <label>达到机场:&nbsp;<input type="text" value="${flight.arriveAirport}" name="arriveAirport"></label><br>
    <label>机&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;型:&nbsp;<input type="text" value="${flight.model}" name="model"></label><br>
    <input type="submit" value="提交">
</form>
</body>
</html>
