<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@page contentType="text/html;charset=gbk" %>
<%@page import="java.util.*" %>
<%@page import="com.firstgroup.entity.*" %>
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
	BORDER-RIGHT: #bad6ec 1px solid;
	BORDER-TOP: #bad6ec 1px solid;
	BACKGROUND-IMAGE: url(../images/bg_th.gif);
	BORDER-LEFT: #bad6ec 1px solid;
	LINE-HEIGHT: 27px;
	BORDER-BOTTOM: #bad6ec 1px solid;
	font-size: large;
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
      <TR 
  style="BACKGROUND-IMAGE: url(images/bg_header.gif); BACKGROUND-REPEAT: repeat-x" 
  height=47>
        <TD width=10><SPAN 
      style="FLOAT: left; BACKGROUND-IMAGE: url(images/main_hl.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN></TD>
        <TD><SPAN 
      style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FLOAT: left; BACKGROUND-IMAGE: url(../images/main_hb.gif); PADDING-BOTTOM: 10px; COLOR: white; PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0px: ">新闻管理 </SPAN></TD>
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
          <form action="<%=request.getContextPath()%>/actionServlet?actionCode=news&methodCode=update" method="post">
            <TABLE width="90%" 
      border=0 align="center" cellSpacing=0 class=gridView id=ctl00_ContentPlaceHolder2_GridView1 
      style="WIDTH: 50%; BORDER-COLLAPSE: collapse">
              <TBODY>
                <TR>
                <TH colspan="2" class=gridViewHeader scope=col>修改公告</TH>
                </TR>
                
                 <% 
                	MyNewsInfo ni = new MyNewsInfo();
                	
                    ni = (MyNewsInfo)request.getAttribute("ni");
                
                
                 %>
                
                
                <TR>
                  <TH width="176"  style="WIDTH: 200px; font-size: small;" class=gridViewHeader scope=col align="right">新闻编号:</TH>
                   <TH scope="col" align="left"><input type="text" name="messageId" value="<%=ni.getT_messageid()%>" readonly="readonly" ></TH>
                </TR>
                <TR>
                 <TH width="176"  style="WIDTH: 200px; font-size: small;" class=gridViewHeader scope=col align="right">主题:</TH>
                  <TH scope="col" align="left"><input type="text" name="messagename" value="<%=ni.getT_messagename()%>" >
                  </span></TH>
                </TR>
                <TR>
                  <TH width="176" style="WIDTH: 200px; font-size: small;" class=gridViewHeader scope=col  align="right">种类:</TH>
                  <TD ><select name="flag" selected="<%=ni.getT_flag()%>">
     <option value="1">新闻</option>  
      <option value="2">推荐</option> 
       <option value="3">消息</option> 
               </select></TD>
                </TR>
                                <TR>
                  <TH  style="WIDTH: 200px; font-size: small;" class=gridViewHeader scope=col  align="right" >添加附件:</TH>
                  <TD ><input type="file"></TD>
                </TR>
                <TR>
                  <TH width="176"  style="WIDTH: 200px; font-size: small;" class=gridViewHeader scope=col  align="right" >内容:</TH>
                  <TH   scope="col" align="left"> <textarea name="content" rows="10"> <%=ni.getT_content()%> </textarea> </span></TH>
                </TR>
                <TR>
                  <TD colspan="2" align="center" style="WIDTH: 50px"><table width="200" border="0" align="center">
                    <tr align="center">
                      <th width="92" scope="col">
                        <input type="reset" value="重置">
                      </span></th>
                      <th width="92" scope="col">
                        <input type="submit" value="添加">
                      </th>
                      </tr>
                  </table></TD>
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
</BODY>
</HTML>
