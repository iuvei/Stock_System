<%--
  Created by IntelliJ IDEA.
  User: 63128
  Date: 2019/4/21
  Time: 12:09
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
  <title>Title</title>
</head>
<body>

<table>
              <tr>
                  <th>股票代码</th>
                  <th>股票名称</th>
                  <th>委托价格</th>
                  <th>数量</th>
                          <th>订单提交时间</th>
              </tr>
     <s:iterator value="#request.tradeEntities">
     <tr>
         <td><s:property value="tradecode"/></td>
         <td><s:property value="tradename"/></td>
         <td><s:property value="tradeprice"/></td>
         <td><s:property value="tradenumber"/></td>
             <td><s:property value="tradedate"/></td>
     </tr>
     </s:iterator>  
     </table>


</body>
</html>
