<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@page contentType="text/html; charset=GBK" %>
<%@page import="com.firstgroup.entity.*"%>
<%@page import="java.util.*"%>
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
<script type="text/javascript" src="js/adddate.js" ></script> 
<META content="MSHTML 6.00.2900.5848" name=GENERATOR>
</HEAD>
<BODY 
style="BACKGROUND-POSITION-Y: -120px; BACKGROUND-IMAGE: url(images/bg.gif); BACKGROUND-REPEAT: repeat-x">
<form name="form1" action="<%=request.getContextPath()%>/actionServlet" method="post">
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
<SCRIPT src="EmployeeMgr.files/WebResource.axd" type=text/javascript></SCRIPT>
<SCRIPT src="EmployeeMgr.files/ScriptResource.axd" 
type=text/javascript></SCRIPT>
<SCRIPT 
src="EmployeeMgr.files/ScriptResource(1).axd" 
type=text/javascript></SCRIPT>
<DIV>
  <TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
    <TBODY>
      <TR 
  style="BACKGROUND-IMAGE: url(images/bg_header.gif); BACKGROUND-REPEAT: repeat-x" 
  height=47>
        <TD width=10><SPAN 
      style="FLOAT: left; BACKGROUND-IMAGE: url(images/main_hl.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN></TD>
        <TD><SPAN 
      style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FLOAT: left; BACKGROUND-IMAGE: url(images/main_hb.gif); PADDING-BOTTOM: 10px; COLOR: white; PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0px:">待交易股票</SPAN></TD>
        <TD 
    style="BACKGROUND-POSITION: 50% bottom; BACKGROUND-IMAGE: url(images/main_rc.gif)" 
    width=10></TD>
      </TR>
      <TR>
        <TD style="BACKGROUND-IMAGE: url(images/main_ls.gif)">&nbsp;</TD>
        <TD 
    style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; COLOR: #566984; PADDING-TOP: 10px; BACKGROUND-COLOR: white" 
    vAlign=top align=middle>
          <DIV>
            <TABLE class=gridView id=ctl00_ContentPlaceHolder2_GridView1 
      style="WIDTH: 100%; BORDER-COLLAPSE: collapse" cellSpacing=0 rules=all 
      border=1>
              <TBODY>
                <TR>
                  <TH colspan="8" class=gridViewHeader style="WIDTH: 50px" scope=col><table width="942" border="0" height="82">
                    <tr>
                      <td >股票号：</td>
                      <td><input type="text" name="stockid"></td>
                      <td>股票名：</td>
                      <td><input type="text" name="stockname"></td>
                      <td>挂牌时间</td>
                      <td><input type="text" name="stocktime" value="" maxlength="100" id="Text4" onclick="SelectDate(this,'yyyy-MM-dd hh:mm')"></td>
                      <td><input type="radio" checked="checked" name=selectime value="&lt;"/>以前</td>
                      <td><input type="radio" name=selectime value="="/>当时</td>
                      <td><input type="radio" name=selectime value="&gt;"/>以后</td>
                       <td><input type="submit" value="查询"></td>
                    </tr>
                  </table></TH>
                </TR>
                <TR>
                  <TH class=gridViewHeader style="WIDTH: 50px" scope=col>&nbsp;</TH>
                  <TH class=gridViewHeader scope=col>股民ID</TH>
                  <TH class=gridViewHeader scope=col>股民姓名</TH>
                  <TH class=gridViewHeader scope=col>所持股号</TH>
                  <TH class=gridViewHeader scope=col>所持股名</TH>
                  <TH class=gridViewHeader scope=col>所持股数</TH>
                  <TH class=gridViewHeader scope=col>每股价格</TH>
                  <TH class=gridViewHeader scope=col>挂牌时间</TH>
                </TR>
               
                <%
                List list=(List)request.getAttribute("owns");
                for(int i=0;i<list.size();i++)
                {
                MyOwnS_Stockinfo mos=(MyOwnS_Stockinfo)list.get(i);
                %>
                 <TR>
                  <TD class=gridViewItem style="WIDTH: 50px"><IMG 
            src="EmployeeMgr.files/bg_users.gif"></TD>
                  <TD class=gridViewItem><%=mos.getT_userid()%></TD>
                  <TD class=gridViewItem><%=mos.getT_usernam() %></TD>
                  <TD class=gridViewItem><%=mos.getT_stockid() %></TD>
                  <TD class=gridViewItem><%=mos.getT_stocknam() %></TD>
                  <TD class=gridViewItem><%=mos.getT_number() %></TD>
                  <TD class=gridViewItem><%=mos.getT_price() %></TD>
                  <TD class=gridViewItem><%=mos.getT_date() %></TD>
                  
                </TR>
                <%} %>
                <TR>
                  <TD colspan="8" class=gridViewItem style="WIDTH: 50px">&nbsp;</TD>
                </TR>
              </TBODY>
            </TABLE>
          </DIV>
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
</DIV>
<SCRIPT type=text/javascript>
//<![CDATA[
Sys.Application.initialize();
//]]>
</SCRIPT>
<input type="hidden" name="actionCode" value="stockTrans">
<input type="hidden" name="methodCode" value="selectstock">
</form>
</BODY>
</HTML>
