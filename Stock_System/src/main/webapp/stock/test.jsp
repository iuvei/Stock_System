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
                <td style="white-space:nowrap; padding-bottom: 5px;width:55px;">股票代码：</td>
                <td colspan="2"><input type="text" id="code" name="code" /></td>
            </tr>

            <tr>
                <td colspan="3" style="text-align:center">
                    <input type="submit" value="查询"  />

                </td>
            </tr>
        </table>
    </form>
</div>




</body>
</html>
