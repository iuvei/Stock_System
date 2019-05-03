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


<TABLE class=gridView id=ctl00_ContentPlaceHolder2_GridView1
       style="WIDTH: 100%; BORDER-COLLAPSE: collapse" cellSpacing=0 rules=all
       border=1>
    <TBODY>
    <TR>
        <TH class=gridViewHeader scope=col>股票代码</TH>
        <TH class=gridViewHeader scope=col>股票名称</TH>
        <TH class=gridViewHeader scope=col>委托价格</TH>
        <TH class=gridViewHeader scope=col>数量</TH>
        <TH class=gridViewHeader scope=col>委托时间</TH>

    </TR>
       <s:iterator value="#request.tradeEntities" >
           <tr>
               <td><s:property value="tradecode"/></td>
               <td><s:property value="tradename"/></td>
               <td><s:property value="tradeprice"/></td>
               <td><s:property value="tradenumber"/></td>
        <td><s:property value="tradedate"/></td>

           </tr>

           </s:iterator>
    </TBODY>
       </table>


</body>
</html>
