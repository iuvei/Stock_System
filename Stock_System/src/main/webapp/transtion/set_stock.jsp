<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@page contentType="text/html; charset=gbk" %>
<%@page import="java.util.*" %>
<%@page import="com.firstgroup.entity.*"%>
<HTML>
<HEAD>
<TITLE>Untitled Page</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<STYLE type=text/css> 
{
	FONT-SIZE: 12px
}
.gridView {
	BORDER-RIGHT: #bad6ec 1px; BORDER-TOP: #bad6ec 1px; BORDER-LEFT: #bad6ec 1px; COLOR: #566984; BORDER-BOTTOM: #bad6ec 1px; FONT-FAMILY: Courier New
}
.gridViewHeader {
	BORDER-RIGHT: #bad6ec 1px solid; BORDER-TOP: #bad6ec 1px solid; BACKGROUND-IMAGE: url(images/bg_th.gif); BORDER-LEFT: #bad6ec 1px solid; LINE-HEIGHT: 27px; BORDER-BOTTOM: #bad6ec 1px solid
}
.gridViewItem {
	BORDER-RIGHT: #bad6ec 1px solid; BORDER-TOP: #bad6ec 1px solid; BORDER-LEFT: #bad6ec 1px solid; LINE-HEIGHT: 32px; BORDER-BOTTOM: #bad6ec 1px solid; TEXT-ALIGN: center
}
.cmdField {
	BORDER-RIGHT: 0px; BORDER-TOP: 0px; BACKGROUND-IMAGE: url(images/bg_rectbtn.png); OVERFLOW: hidden; BORDER-LEFT: 0px; WIDTH: 67px; COLOR: #364c6d; LINE-HEIGHT: 27px; BORDER-BOTTOM: 0px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 27px; BACKGROUND-COLOR: transparent; TEXT-DECORATION: none
}
.buttonBlue {
	BORDER-RIGHT: 0px; BORDER-TOP: 0px; BACKGROUND-IMAGE: url(images/bg_button_blue.gif); BORDER-LEFT: 0px; WIDTH: 78px; COLOR: white; BORDER-BOTTOM: 0px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 21px
}
</STYLE>
<META content="MSHTML 6.00.2900.5848" name=GENERATOR>
</HEAD>
<BODY 
style="BACKGROUND-POSITION-Y: -120px; BACKGROUND-IMAGE: url(images/bg.gif); BACKGROUND-REPEAT: repeat-x">
<SCRIPT type=text/javascript>
//<![CDATA[
var theForm = document.forms['aspnetForm'];
if (!theForm) {
    theForm = document.aspnetForm;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</SCRIPT>
 <script type="text/javascript">   
function _submit()   
    {   
        form1.submit();   
    }   
   </script>   
<SCRIPT src="EmployeeMgr.files/WebResource.axd" type=text/javascript></SCRIPT>
<SCRIPT src="EmployeeMgr.files/ScriptResource.axd" 
type=text/javascript></SCRIPT>
<SCRIPT 
src="EmployeeMgr.files/ScriptResource(1).axd" 
type=text/javascript></SCRIPT>
<DIV>
<form name="form1" action="<%=request.getContextPath() %>/actionServlet" method="post">
  <TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
    <TBODY>    <TR 
  style="BACKGROUND-IMAGE: url(images/bg_header.gif); BACKGROUND-REPEAT: repeat-x" 
  height=47>
        <TD width=10><SPAN 
      style="FLOAT: left; BACKGROUND-IMAGE: url(images/main_hl.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN></TD>
        <TD><SPAN 
      style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FLOAT: left; BACKGROUND-IMAGE: url(images/main_hb.gif); PADDING-BOTTOM: 10px; COLOR: white; PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0px:">交易设置</SPAN></TD>
        <TD 
    style="BACKGROUND-POSITION: 50% bottom; BACKGROUND-IMAGE: url(images/main_rc.gif)" 
    width=10></TD>
      </TR>
      <TR>
        <TD style="BACKGROUND-IMAGE: url(images/main_ls.gif)">&nbsp;</TD>
        <TD 
    style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; COLOR: #566984; PADDING-TOP: 10px; BACKGROUND-COLOR: white" 
    vAlign=top align=middle>
          <div>
         
          <table width="50%" class=gridView id=ctl00_ContentPlaceHolder2_GridView1 
       BORDER-COLLAPSE: collapse" cellSpacing=0 align="center"  border="1">
<tbody>
  <tr>
  <%List list=(List)request.getAttribute("transet");
    MyTransLimit trans=(MyTransLimit)list.get(0);
   %>
    <td colspan="3" class=gridViewHeader  scope=col align="center">交易设置</td>
  </tr>
  <tr>
    <td width="154" align="center" class=gridViewHeader  scope=col><IMG 
            src="EmployeeMgr.files/bg_users.gif" align="center" ></td>
    <td width="187" align="center" class=gridViewHeader  scope=col >最小交易额</td>
    <td width="282" align="center"><select name="mintrans">
                        <option value="<%=trans.getT_minnum() %>"><%=trans.getT_minnum()%></option>
                    	<% if(!trans.getT_minnum().equals("50"))
                    	out.println("<option value='50'>50</option>");
                    	%>
                      <% if(!trans.getT_minnum().equals("100"))
                    	out.println("<option value='100'>100</option>");
                    	%>
                    	<% if(!trans.getT_minnum().equals("150"))
                    	out.println("<option value='150'>150</option>");
                    	%>
                    	<% if(!trans.getT_minnum().equals("200"))
                    	out.println("<option value='200'>200</option>");
                    	%>
                    </select></td>
  </tr>
  <tr>
    <td class=gridViewHeader  scope=col align="center"><IMG 
            src="EmployeeMgr.files/bg_users.gif"></td>
    <td class=gridViewHeader  scope=col align="center">最大交易额</td>
    <td width="282" align="center"><select name="maxtrans">
     <option value="<%=trans.getT_maxnum() %>"><%=trans.getT_maxnum()%></option>
                    	<% if(!trans.getT_maxnum().equals("10000"))
                    	out.println("<option value='10000'>10000</option>");
                    	%>
                        <% if(!trans.getT_maxnum().equals("15000"))
                    	out.println("<option value='15000'>15000</option>");
                    	%>
                    	<% if(!trans.getT_maxnum().equals("20000"))
                    	out.println("<option value='20000'>20000</option>");
                    	%>
                    	<% if(!trans.getT_maxnum().equals("25000"))
                    	out.println("<option value='25000'>25000</option>");
                    	%>
                    </select>
                    </td>
  </tr>
  <tr>
    <td class=gridViewHeader  scope=col align="center"><IMG 
            src="EmployeeMgr.files/bg_users.gif"></td>
    <td class=gridViewHeader  scope=col align="center">跌停</td>
    <td width="282" align="center"> <select name="stoptrans">
                        <option value="<%=trans.getT_stop() %>"><%=trans.getT_stop()%></option>
                    	 <% if(!trans.getT_stop().equals("-5%"))
                    	out.println("<option value='-5%'>-5%</option>");
                    	%>
                     <% if(!trans.getT_stop().equals("-10%"))
                    	out.println("<option value='-10%'>-10%</option>");
                    	%>
                    	<% if(!trans.getT_stop().equals("-15%"))
                    	out.println("<option value='-15%'>-15%</option>");
                    	%>
                    	<% if(!trans.getT_stop().equals("-20%"))
                    	out.println("<option value='-20%'>-20%</option>");
                    	%>
                    </select>
                    </td>
  </tr>
  <tr>
    <td class=gridViewHeader  scope=col align="center"><IMG 
            src="EmployeeMgr.files/bg_users.gif"></td>
    <td class=gridViewHeader  scope=col align="center">涨停</td>
    <td width="282" align="center"> <select name="uppingtrans">
     <option value="<%=trans.getT_upping() %>"><%=trans.getT_upping()%></option>
                    <% if(!trans.getT_upping().equals("5%"))
                    	out.println("<option value='5%'>5%</option>");
                    	%>
                        <% if(!trans.getT_upping().equals("10%"))
                    	out.println("<option value='10%'>10%</option>");
                    	%>
                       <% if(!trans.getT_upping().equals("15%"))
                    	out.println("<option value='15%'>15%</option>");
                    	%>
                      <% if(!trans.getT_upping().equals("20%"))
                    	out.println("<option value='20%'>20%</option>");
                    	%>
                    </select>
  </tr>
  <tr>
    <td colspan="3" align="center"><A class=cmdField 
            id=ctl00_ContentPlaceHolder2_GridView1_ctl02_LinkButton2 
              onclick="return confirm('确定要修改吗？');" value = "提交"
            href="javascript:_submit()">提交</A></td>
    </tr>
  </tbody>
</table>

          
          </div>
        </TD>
        <TD style="BACKGROUND-IMAGE: url(images/main_rs.gif)"></TD>
      </TR>
      <TR 
  style="BACKGROUND-IMAGE: url(images/main_fs.gif); BACKGROUND-REPEAT: repeat-x" 
  height=10>
        <TD style="BACKGROUND-IMAGE: url(images/main_lf.gif)"></TD>
        <TD style="BACKGROUND-IMAGE: url(images/main_fs.gif)"></TD>
        <TD 
style="BACKGROUND-IMAGE: url(images/main_rf.gif)"></TD>
      </TR>
    </TBODY>
  </TABLE>
 <input type="hidden" name="actionCode" value="stockTrans">
  <input type="hidden" name="methodCode" value="transadd">
  <input type="hidden" name="transid" value="<%=trans.getT_id()%>">
  </form>
</DIV>
<SCRIPT type=text/javascript>
//<![CDATA[
Sys.Application.initialize();
//]]>
</SCRIPT>
</BODY>
</HTML>