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
<SCRIPT src="EmployeeMgr.files/WebResource.axd" type=text/javascript></SCRIPT>
<SCRIPT src="EmployeeMgr.files/ScriptResource.axd" 
type=text/javascript></SCRIPT>
<SCRIPT 
src="EmployeeMgr.files/ScriptResource(1).axd" 
type=text/javascript></SCRIPT>
<DIV>
<form name="form1" action="<%=request.getContextPath() %>/actionServlet" method="post" >
  <TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
    <TBODY>
      <TR 
  style="BACKGROUND-IMAGE: url(images/bg_header.gif); BACKGROUND-REPEAT: repeat-x" 
  height=47>
        <TD width=10><SPAN 
      style="FLOAT: left; BACKGROUND-IMAGE: url(images/main_hl.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN></TD>
        <TD><SPAN 
      style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FLOAT: left; BACKGROUND-IMAGE: url(images/main_hb.gif); PADDING-BOTTOM: 10px; COLOR: white; PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0px:">股票受益</SPAN></TD>
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
                  <TH colspan="9" class=gridViewHeader style="WIDTH: 50px" scope=col><table width="792" border="0" height="43">
                    <tr>
                      <td>股票ID:</td>
                      <td><input type="text" name="stockid"></td>
                      <td>股票名：</td>
                      <td><input type="text" name="stockname"></td>
                       <td>收益情况<select name="earn">
                       <option value="" selected="selected">--</option>
                       <option value="profit">盈利</option>
                       <option value="deficit">亏损</option>
                       </select></td>
                       <td>盈利率最高</td>
                       <td><input type="checkbox" name="earnratemax" value="max"/></td>
                      <td><input type="submit" value="查询"></td>
                    
                    </tr>
                  </table></TH>
                </TR>
                <TR>
                  <TH class=gridViewHeader style="WIDTH: 50px" scope=col>&nbsp;</TH>
                  <TH class=gridViewHeader scope=col>股票ID</TH>
                  <TH class=gridViewHeader scope=col>股票名</TH>
                  <TH class=gridViewHeader scope=col>发行价</TH>
                  <TH class=gridViewHeader scope=col>成交价</TH>
                  <TH class=gridViewHeader scope=col>股票总量</TH>
                  <TH class=gridViewHeader scope=col>时间</TH>
                  <TH class=gridViewHeader scope=col>本股总受益</TH>
                  <TH class=gridViewHeader scope=col>本股受益率</TH>
                  
                </TR>
                <%List list=(List)request.getAttribute("transearn");
                for(int i=0;i<list.size();i++)
                {
                   MyTransEarn mte=(MyTransEarn)list.get(i);
                
                 %>
                <TR>
                  <TD class=gridViewItem style="WIDTH: 50px"><IMG 
            src="EmployeeMgr.files/bg_users.gif"> </TD>
                  <TD class=gridViewItem><%=mte.getStockid() %></TD>
                  <TD class=gridViewItem><%=mte.getStockname() %></TD>
                  <TD class=gridViewItem><%=mte.getStockprice() %></TD>
                   <TD class=gridViewItem><%=mte.getPrice() %></TD>
                  <TD class=gridViewItem><%=mte.getStocksum() %></TD>
                  <TD class=gridViewItem><%=mte.getT_date() %></TD>
                  <TD class=gridViewItem><%Double db=Double.valueOf(mte.getEarn());int earn=db.intValue();
                   out.print(earn);
                   %></TD>
                    <TD class=gridViewItem><%Double dbr=Double.valueOf(mte.getEarnrate());int earnrate=dbr.intValue();
                   out.print(earnrate);
                   %>%</TD>
                </TR>
                <%} %>
                <TR>
                  <TD colspan="9" class=gridViewItem style="WIDTH: 50px">&nbsp;</TD>
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
  <input type="hidden" name="actionCode" value="stockTrans">
   <input type="hidden" name="methodCode" value="selectearn">
  
  </form>
</DIV>
<SCRIPT type=text/javascript>
//<![CDATA[
Sys.Application.initialize();
//]]>
</SCRIPT>
</BODY>
</HTML>
