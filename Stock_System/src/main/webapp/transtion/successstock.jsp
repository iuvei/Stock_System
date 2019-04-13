<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@page contentType="text/html; charset=GBK"  %>
<%@page import="com.firstgroup.entity.*,com.jspsmart.upload.*"%>
<%@page import="java.util.*"%>
<HTML>
<HEAD>
<TITLE>Untitled Page</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
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
<script type="text/javascript" src="js/adddate.js" ></script> 
<DIV>
<%String save=null;
save=(String)request.getAttribute("save");
if(save!=null)
{
 SmartUpload su = new SmartUpload();
// 初始化
su.initialize(pageContext);
// 设定contentDisposition为null以禁止浏览器自动打开文件，
//保证点击链接后是下载文件。若不设定，则下载的文件扩展名为
//doc时，浏览器将自动用word打开它。扩展名为pdf时，
//浏览器将用acrobat打开。
su.setContentDisposition(null);
// 下载文件
su.downloadFile("/file/transInfo.xls");
}
 %>
<form name="form1" action="<%=request.getContextPath()%>/actionServlet" method="post">
  <TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
    <TBODY>
      <TR 
  style="BACKGROUND-IMAGE: url(images/bg_header.gif); BACKGROUND-REPEAT: repeat-x" 
  height=47>
        <TD width=10><SPAN 
      style="FLOAT: left; BACKGROUND-IMAGE: url(images/main_hl.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN></TD>
        <TD><SPAN 
      style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FLOAT: left; BACKGROUND-IMAGE: url(images/main_hb.gif); PADDING-BOTTOM: 10px; COLOR: white; PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0px:">成交股票</SPAN></TD>
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
                  <TH colspan="10" class=gridViewHeader  scope=col><table width="999" border="0" height="86">
                    <tr>
                     <td ><strong>股票号</strong></td>
                     <td valign="top"><br></td><td><strong><input type="text" name="stockid"></strong></td>
                     <td ><strong>股票名</strong></td>
                     <td><strong><input type="text" name="stockname"></strong></td>
                      <td ><strong>开始时间</strong></td>
                      <td><strong><input type="text" name="starttime" value="" maxlength="100" id="Text4" onclick="SelectDate(this,'yyyy-MM-dd hh:mm')"></strong>
</td>
                      <td><strong>结束时间</strong></td>
                      <td><strong><input type="text" name="endtime" value="" maxlength="100" id="Text" onclick="SelectDate(this,'yyyy-MM-dd hh:mm')"></strong></td>
                      <td><strong><input type="submit" value="查询"></strong></td>
                     
                    </tr>
                  </table></TH>
                </TR>
                <TR>
                  <TH class=gridViewHeader style="WIDTH: 50px" scope=col><strong>&nbsp;</strong></TH>
                  <TH class=gridViewHeader scope=col><strong>卖家ID</strong></TH>
                  <TH class=gridViewHeader scope=col><strong>卖家姓名</strong></TH>
                  <TH class=gridViewHeader scope=col><strong>买家ID</strong></TH>
                  <TH class=gridViewHeader scope=col><strong>买家姓名</strong></TH>
                  <TH class=gridViewHeader scope=col><strong>交易股号</strong></TH>
                  <TH class=gridViewHeader scope=col><strong>交易股名</strong></TH>
                  <TH class=gridViewHeader scope=col><strong>交易数量</strong></TH>
                  <TH class=gridViewHeader scope=col><strong>每股成交价</strong></TH>
                  <TH class=gridViewHeader scope=col><strong>成交时间</strong></TH>
                </TR>
              
                <%
                List list=(List)request.getAttribute("suctrans");
                for(int i=0;i<list.size();i++)
                {
                MySuccTrans mst=(MySuccTrans)list.get(i);
                
                 %>
                   <TR>
                  <TD class=gridViewItem style="WIDTH: 50px"><strong><img src="EmployeeMgr.files/bg_users.gif"></strong> </TD>
                  <TD class=gridViewItem><strong><%=mst.getS_userid() %></strong></TD>
                  <TD class=gridViewItem><strong><%=mst.getS_username() %></strong></TD>
                  <TD class=gridViewItem><strong><%=mst.getB_userid() %></strong></TD>
                  <TD class=gridViewItem><strong><%=mst.getB_username() %></strong></TD>
                  <TD class=gridViewItem><strong><%=mst.getStockid() %></strong></TD>
                  <TD class=gridViewItem><strong><%=mst.getStockname() %></strong></TD>
                  <TD class=gridViewItem><strong><%=mst.getChangenum() %></strong></TD>
                  <TD class=gridViewItem><strong><%=mst.getPrice() %></strong></TD>
                  <TD class=gridViewItem><strong><%=mst.getT_date() %></strong></TD>
                </TR>
                <%} %>
                

                
              </TBODY>
            </TABLE>
            <h4>导出execl表格:<a href="<%=request.getContextPath()%>/actionServlet?actionCode=stockTrans&methodCode=outexcel"><font color="red">导出</font></a></h4>
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
  <input type="hidden" name=actionCode value="stockTrans">
    <input type="hidden" name=methodCode value="selecttrans">
  </form>
</DIV>
<SCRIPT type=text/javascript>
//<![CDATA[
Sys.Application.initialize();
//]]>
</SCRIPT>
</BODY>
</HTML>
