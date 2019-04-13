<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@page contentType="text/html; charset=gbk" %>
<%@page import="com.firstgroup.entity.*"%>
<%@page import="java.util.*"%>
<%@page import="com.firstgroup.utils.*"%>
<HTML>

<HEAD>
<TITLE>Untitled Page</TITLE>
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
  <TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
    <TBODY>
    
    <form name="form0" action="<%=request.getContextPath()%>/actionServlet" method ="post">
    
      <TR 
  style="BACKGROUND-IMAGE: url(images/bg_header.gif); BACKGROUND-REPEAT: repeat-x" 
  height=47>
        <TD width=10><SPAN 
      style="FLOAT: left; BACKGROUND-IMAGE: url(images/main_hl.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN></TD>
        <TD><SPAN 
      style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FLOAT: left; BACKGROUND-IMAGE: url(images/main_hb.gif); PADDING-BOTTOM: 10px; COLOR: white; PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0px: ">新闻管理 </SPAN></TD>
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
           
                <TR>
                  <TH class=gridViewHeader style="WIDTH: 50px" scope=col>&nbsp;</TH>
                  <TH class=gridViewHeader scope=col>新闻Id</TH>
                  <TH class=gridViewHeader scope=col>主题</TH>
                  <TH class=gridViewHeader scope=col>种类</TH>
                  <TH class=gridviewHeader scope=col>内容</TH>
                  <TH class=gridviewHeader scope=col>更新</TH>
                  <TH class=gridviewHeader scope=col>删除</TH>
                </TR>

         <%     
        	List news = (List)request.getAttribute("news");
        	MyNewsInfo mn = null;
        
           for(int i = 0;i<news.size();i++){
     
           mn=new MyNewsInfo();
     	   mn= (MyNewsInfo)news.get(i);
           
     
    %>
          <tr>
      <td>&nbsp;</td>
        <td><%=mn.getT_messageid()%></td>
        <td><%=mn.getT_messagename()%></td>
        <td><%=mn.getT_flag()%></td>
         <td><a href="<%=request.getContextPath()%>/actionServlet?actionCode=news&methodCode=disNews&messageid=<%=mn.getT_messageid()%>" target="mainFrame">详情查询</a></td>
         <td><a href="<%=request.getContextPath()%>/actionServlet?actionCode=news&methodCode=modify&messageid=<%=mn.getT_messageid()%>" target="mainFrame">编辑</a></td>
         <TD class=gridViewItem><A class=cmdField 
            id=ctl00_ContentPlaceHolder2_GridView1_ctl02_LinkButton1 
            onclick="return confirm('确定要删除吗？');" 
            href="<%=request.getContextPath()%>/actionServlet?actionCode=news&methodCode=delNews&messageid=<%=mn.getT_messageid()%>" target="mainFrame">删除</A>
        </TD>
      </tr>
      <%}
     %>
      
    

   
                

                <TR>
                  <TD colspan="7" align="center" class=gridViewItem style="WIDTH: 50px">
                  <table width="328" border="0">
                <tr>
                <% 
                     int pageCount = Integer.parseInt((String)request.getAttribute("pageCount"));
                     
                     int pageNow = Integer.parseInt((String)request.getAttribute("pageNow"));
                                         
                     if(pageNow>1){
                     
                     %>
                     
                         <td width="80" align="right"><a href="<%=request.getContextPath()%>/actionServlet?actionCode=news&methodCode=display&pagenow=<%=pageNow-1%>"><font size="2">上一页</font></a></td>
                     
                     <%}
                     
                     if((pageNow+2)<=pageCount){
                     
                     for(int i= pageNow;i<=pageNow+2;i++){
                          
                 %>
                 
                 <td width="30"><a href="<%=request.getContextPath()%>/actionServlet?actionCode=news&methodCode=display&pagenow=<%=i%>">[<%=i%>]</a></td>
                 
                 <% }
                 }else {
                      
                      for(int i= pageNow;i<=pageCount;i++){
                          
                 %>
                 
                 <td width="30"><a href="<%=request.getContextPath()%>/actionServlet?actionCode=news&methodCode=display&pagenow=<%=i%>">[<%=i%>]</a></td>
                 
                 <% }
                 
                 
                 }
                 
                 if((pageNow+2)<pageCount){
                 
                 %>
                     <td width="80"><a href="<%=request.getContextPath()%>/actionServlet?actionCode=news&methodCode=display&pagenow=<%=pageNow+1%>"><font size="2">下一页</font></a></td>
                                 
                 <% 
                 
                 
                 }
                 
                 %>
                 
                 
                </tr>
            </table>
                  </TD>
                </TR>
            </TABLE>
          </DIV>
        </TD>
        <TD style="BACKGROUND-IMAGE: url(images/main_rs.gif)"></TD>
      </TR>
      <TR 
  style="BACKGROUND-IMAGE: url(../images/main_fs.gif); BACKGROUND-REPEAT: repeat-x" 
  height=10>
        <TD style="BACKGROUND-IMAGE: url(images/main_lf.gif)"></TD>
        <TD style="BACKGROUND-IMAGE: url(images/main_fs.gif)"></TD>
        <TD 
style="BACKGROUND-IMAGE: url(images/main_rf.gif)"></TD>
      </TR>
      
      
               
    
    
    </TBODY>
  </TABLE>
  <input type="hidden" name="actionCode" value="news"/>

<input type="hidden" name="methodCode" value="disNews"/>
</DIV>
<SCRIPT type=text/javascript>
//<![CDATA[
Sys.Application.initialize();
//]]>
</SCRIPT>
</BODY>
</HTML>
