<%@ page import="com.company.Entity.FightEntity" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 刘利杰
  Date: 2023/10/5
  Time: 20:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="insertfight">点击添加航班信息</a>
<table border="1" align="center" style="border-collapse: collapse;width: 80%">
  <tr align="center">
    <th align="center">航号</th>
    <th align="center">航空公司</th>
    <th align="center">出发机场</th>
    <th align="center">达到机场</th>
    <th align="center">机型</th>
    <th align="center">操作</th>
  </tr>
  <%
    List<FightEntity> flights = (List<FightEntity>) request.getAttribute("flights");

    if (flights != null && !flights.isEmpty()) {
      for (FightEntity f : flights) {
  %>
  <tr align="center">
    <td align="center"><%= f.getFlightId() %></td>
    <td align="center"><%= f.getCompany() %></td>
    <td align="center"><%= f.getDepartureAirport() %></td>
    <td align="center"><%= f.getArriveAirport() %></td>
    <td align="center"><%= f.getModel() %></td>
    <td align="center"><a href="updateFlight?id=<%= f.getId() %>">修改</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="deletefight?id=<%= f.getId() %>">删除</a></td>
  </tr>
  <%
      }
    }
  %>


</table>
</body>
</html>
