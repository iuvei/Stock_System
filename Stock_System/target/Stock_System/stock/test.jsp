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
<<body>
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
                    <TH class=gridViewHeader style="WIDTH: 50px" scope=col>&nbsp;</TH>
                    <TH class=gridViewHeader scope=col>股票号</TH>
                    <TH class=gridViewHeader scope=col>股票名</TH>
                    <TH class=gridViewHeader scope=col>股票数量</TH>
                    <TH class=gridViewHeader scope=col>发行价格</TH>
                    <TH class=gridViewHeader scope=col>持有人</TH>
                    <TH class=gridviewHeader scope=col>更新</TH>
                    <TH class=gridviewHeader scope=col>删除</TH>
                </TR>
                <p>${sessionScope.data.code}</p>
                </TBODY>
            </TABLE>
        </table>
    </form>
</div>




</body>
</html>
