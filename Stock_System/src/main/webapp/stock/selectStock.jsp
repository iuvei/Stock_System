<%@page pageEncoding="GBK" %>
<%@page import="java.util.*"  %>
<%@page import="com.firstgroup.entity.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
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
<script type="text/javascript">
	function   outPut() 
{   
       var   obj1=document.getElementsByName( "idlist")[0].value; 
       var   obj2=document.getElementsByName( "namelist")[0].value; 
       var   obj3=document.getElementsByName( "ownlist")[0].value; 
       document.location.href= "/StockSpirit/actionServlet?actionCode=stock&methodCode=query&idlist="+obj1+"&namelist="+obj2+"&ownlist="+obj3;   
} 
</script>
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
  <TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
    <TBODY>
      <TR 
  style="BACKGROUND-IMAGE: url(images/bg_header.gif); BACKGROUND-REPEAT: repeat-x" height=47> <TD width=10><SPAN 
      style="FLOAT: left; BACKGROUND-IMAGE: url(images/main_hl.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN></TD>
      <TD><SPAN 
      style="FLOAT: left; BACKGROUND-IMAGE: url(images/main_hl2.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN>
      <SPAN  style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FLOAT: left; BACKGROUND-IMAGE: url(images/main_hb.gif); PADDING-BOTTOM: 10px; COLOR: white; PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0px:">股票管理</SPAN>
      <SPAN 
      style="FLOAT: left; BACKGROUND-IMAGE: url(images/main_hr.gif); WIDTH: 60px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN></TD>
        <TD  style="BACKGROUND-POSITION: 50% bottom; BACKGROUND-IMAGE: url(images/main_rc.gif)"  width=10></TD>
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
                  <TH class=gridViewHeader style="WIDTH: 50px" scope=col>&nbsp;</TH>
                  <TH class=gridViewHeader scope=col>股票号</TH>
                  <TH class=gridViewHeader scope=col>股票名</TH>
                  <TH class=gridViewHeader scope=col>股票数量</TH>
                  <TH class=gridViewHeader scope=col>发行价格</TH>
                  <TH class=gridViewHeader scope=col>持有人</TH>
                  <TH class=gridviewHeader scope=col>更新</TH>
                  <TH class=gridviewHeader scope=col>删除</TH>
                </TR>
                <% 
                	List list1=(List)request.getAttribute("stocklist1"); 
                	Stock_Own stockown=null;  
                	 
                	for(int i=0;i<list1.size();i++){ 
                		stockown=new Stock_Own(); 
                		stockown=(Stock_Own )list1.get(i);  
                %>
                		      <TR>
                  <TD class=gridViewItem style="WIDTH: 50px"><img src="EmployeeMgr.files/bg_users.gif"> </TD>
                  <TD class=gridViewItem><%=stockown.getT_stockid() %><br></TD>
                  <TD class=gridViewItem><%=stockown.getT_stockname() %><br></TD>
                  <TD class=gridViewItem><%=stockown.getT_stocknum() %><br></TD>
                  <TD class=gridViewItem><%=stockown.getT_stockprice() %><br></TD>
                  <TD class=gridViewItem><%=stockown.getT_ownname() %><br></TD>
                  <TD class=gridViewItem>
                  <a class="cmdField" href="<%=request.getContextPath()%>/actionServlet?actionCode=stock&amp;methodCode=update&amp;s_id=<%=stockown.getS_id()%>&amp;o_id=<%=stockown.getO_id()%>">编辑</a></TD>
                  <TD class=gridViewItem>
                  <a class="cmdField" id="ctl00_ContentPlaceHolder2_GridView1_ctl02_LinkButton1" onclick="return confirm('确定要删除吗？');" href="<%=request.getContextPath()%>/actionServlet?actionCode=stock&amp;methodCode=deletestock&amp;s_id=<%=stockown.getS_id()%>&amp;o_id=<%=stockown.getO_id()%>">删除</a> </TD>
                </TR>
                <% 
                	} 
                %>    
                <TR > <table align="center"><td class=gridViewItem><a class="cmdField"   href="<%=request.getContextPath()%>/actionServlet?actionCode=stock&amp;methodCode=showstock&amp;"><font size=4px>返回</font></a></td></table> </TR> 
              </TBODY>
            </TABLE>
          </DIV>
        <br></TD>
        <TD style="BACKGROUND-IMAGE: url(images/main_rs.gif)"><br></TD>
      </TR>
      <TR 
  style="BACKGROUND-IMAGE: url(images/main_fs.gif); BACKGROUND-REPEAT: repeat-x" 
  height=10>
        <TD style="BACKGROUND-IMAGE: url(images/main_lf.gif)"><br></TD>
        <TD style="BACKGROUND-IMAGE: url(images/main_fs.gif)"><br></TD>
        <TD 
style="BACKGROUND-IMAGE: url(images/main_rf.gif)">p</TD>
      </TR>
    </TBODY>
  </TABLE>
</DIV>
<SCRIPT type=text/javascript>
//<![CDATA[
Sys.Application.initialize();
//]]>
</SCRIPT>
</BODY>
</HTML>
