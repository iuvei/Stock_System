<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
 <head>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>股票模拟交易系统</title>
	<%@ include file="/content/common/basePath.jsp"%>
	<link href="/content/css/page/login.css" rel="stylesheet" type="text/css" />
 </head>
 
 <body>
 	<div class="second_body">
        <form method="post" action="<%=path%>/loginAction.action">
        	<div class="logo"></div>
            <div class="title-zh">股票模拟交易系统</div>
            <div class="title-en" style="">Stock Simulation Trading System</div>
            <div class="message" data-bind="html:message"></div>

            <table border="0" style="width:300px;">
            	<tr>
                	<td style="white-space:nowrap; padding-bottom: 5px;width:55px;">用户名：</td>
                    <td colspan="2"><input type="text" id="usersid" name="usersid" /></td>
                </tr>
                <tr>
                    <td class="lable" style="white-space:nowrap; letter-spacing: 0.5em; vertical-align: middle">密码：</td>
                    <td colspan="2"><input type="password" id="password"  name="password" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2"><input type="checkbox" data-bind="checked:form.remember" /><span>系统记住我</span></td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align:center">
                        <input type="submit" value="登录"  />
                        <input type="button" value="重置"  />
                    </td>
                </tr>
            </table>
        </form>
    </div>




 </body>
</html>       