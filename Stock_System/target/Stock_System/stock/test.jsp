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
<div class="second_body">
        <form method="post" action="${ pageContext.request.contextPath }/stockaction.action">
        <table border="0" style="width:300px;">
            <tr>
                <td style="white-space:nowrap; padding-bottom: 5px;width:55px;"> 股票代码：</td>
                <td colspan="2"><input type="text" id="code" name="code" /></td>
            </tr>
            <tr>
                <td colspan="3" style="text-align:center">
                    <input type="submit" value="查询"  />
                </td>
            </tr>
            <TABLE class=gridView id=ctl00_ContentPlaceHolder2_GridView1
                   style="WIDTH: 100%; BORDER-COLLAPSE: collapse" cellSpacing=0 rules=all
                   border=1>
                <TBODY>
                <TR>
                    <TH class=gridViewHeader scope=col>股票代码</TH>
                    <TH class=gridViewHeader scope=col>股票名称</TH>
                    <TH class=gridViewHeader scope=col>今日开盘价</TH>
                    <TH class=gridViewHeader scope=col>昨日收盘价</TH>
                    <TH class=gridViewHeader scope=col>今日最高价</TH>
                    <TH class=gridViewHeader scope=col>今日最低价</TH>
                    <TH class=gridViewHeader scope=col>当前价格</TH>
                    <TH class=gridViewHeader scope=col>时间</TH>
                </TR>
                <TR>
                    <TD class=gridViewItem>${sessionScope.data.code}<br></TD>
                    <TD class=gridViewItem>${sessionScope.data.simpleName}<br></TD>
                    <TD class=gridViewItem>${sessionScope.data.open}<br></TD>
                    <TD class=gridViewItem>${sessionScope.data.close}<br></TD>
                    <TD class=gridViewItem>${sessionScope.data.high}<br></TD>
                    <TD class=gridViewItem>${sessionScope.data.low}<br></TD>
                    <TD class=gridViewItem>${sessionScope.data.price}<br></TD>
                    <TD class=gridViewItem>${sessionScope.data.time}<br></TD>
                </TR>
                </TBODY>
            </TABLE>
        </table>
    </form>
</div>




</body>
</html>
