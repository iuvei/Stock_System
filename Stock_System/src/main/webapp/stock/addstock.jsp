<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@page import="com.firstgroup.entity.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<HTML>
<HEAD>
<TITLE>Untitled Page</TITLE>
    <link rel="stylesheet" type="text/css" href="jquery-easyui-1.0.5/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="jquery-easyui-1.0.5/themes/icon.css">

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
  function check(){
  		if(form0.stockid.value==null ||form0.stockid.value==""){
  			alert("股票代码不能为空！");
  			
  			return;
  		}else if(form0.stockname.value==null || form0.stockname.value==""){
  			alert("股票名称不能为空！");
  			return;
  		}else if(form0.stocknum.value==null || form0.stocknum.value==""){
  			alert("发行量不能为空！");
  			return;
  		}else if(!form0.stocknum.value.match(/^[1-9]\d*$/)){
  			alert('发行量为数字');
  			return;
  		}else if(form0.stockprice.value==null || form0.stockprice.value==""){
  			alert("发行价不能为空！");
  			return;
  		}else if(!form0.stockprice.value.match(/^[1-9]\d*\.?\d{0,2}$/)){
  			alert('发行价为double型');
  			return;
  		}else if(form0.owner.value==null || form0.owner.value==""){
  			alert("持有人不能为空！");
  			return;
  		}else{
  		  form0.submit();
  		  }
  }

</script>
<script type="text/javascript" src="jquery-easyui-1.0.5/jquery-1.4.2.min.js"></script>
	<script type="text/javascript" src="jquery-easyui-1.0.5/jquery.easyui.min.js"></script>


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
<form name="form0" method="post" action="<%=request.getContextPath()%>/actionServlet">
  <TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
    <TBODY>
      <TR 
  style="BACKGROUND-IMAGE: url(images/bg_header.gif); BACKGROUND-REPEAT: repeat-x" 
  height=47>
        <TD width=10><SPAN 
      style="FLOAT: left; BACKGROUND-IMAGE: url(images/main_hl.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN></TD>
        <TD><SPAN 
      style="FLOAT: left; BACKGROUND-IMAGE: url(images/main_hl2.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN><SPAN 
      style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FLOAT: left; BACKGROUND-IMAGE: url(images/main_hb.gif); PADDING-BOTTOM: 10px; COLOR: white; PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0px: ">股票管理</SPAN><SPAN 
      style="FLOAT: left; BACKGROUND-IMAGE: url(images/main_hr.gif); WIDTH: 60px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN></TD>
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
      style="WIDTH: 50%; BORDER-COLLAPSE: collapse" cellSpacing=0 rules=all 
      border=1>
              <TBODY>
              <%
                 if(request.getAttribute("stockflag")!=null){
                 	out.println("<script>alert('股票代码重复，请重新写入！')</script>");
                 }
               %>
                <TR>
                  <TH colspan="2" class=gridViewHeader scope=col>增加股票信息</TH>
                </TR>
                <TR>
                  <TH class=gridViewHeader style="text-align: right" scope=col>股票代码</TH>
                  <TH scope=col><input type="text" name="stockid" class="easyui-validatebox" required="true" validType="length[4,6]"></TH>
                </TR>
               
                <TR>
                  <TH class=gridViewHeader style="text-align: right"  scope=col>股票名称</TH>
                  <TH scope=col><input type="text" name="stockname" class="easyui-validatebox" required="true" ></TH>
                </TR>
                <TR>
                  <TH class=gridViewHeader style="text-align: right"  scope=col >发行量</TH>
                  <TH scope=col>
                    <input type="text" name="stocknum" class="easyui-validatebox" required="true" validType="intnum">
                  </span></TH>
                </TR>
                <TR>
                  <TH class=gridViewHeader style="text-align: right" scope=col>发行价</TH>
                  <TH   scope=col><input type="text" name="stockprice" class="easyui-validatebox" required="true" validType="doublenum"></TH>
                </TR>
                <TR>
                
                  <TH  class=gridViewHeader style="text-align: right" scope=col>持有人</TH>
                  <TH  scope=col><select name="owner" class="easyui-validatebox" required="true" >
                    <option>--</option>
               <%
                 MyUserInfo user=null;
                 List list=(List)request.getAttribute("userlist");
              	  for(int i=0;i<list.size();i++){
              	     user=new MyUserInfo();
              	     user=(MyUserInfo)list.get(i);
              	  %>
              	  <option value="<%=user.getT_userid()%>"><%=user.getT_username() %></option>
              	  <%
              	   }
               %>
                  
                  </select></TH>
                  </TR>
                <TR>
                  <TH  class=gridViewHeader scope=col>&nbsp;</TH>
                  <TH  scope=col>&nbsp;</TH>
                </TR>
                <TR>
                  <TH  class=gridViewHeader scope=col>&nbsp;</TH>
                  <TH  scope=col>
                    <input type="button" value="确认增加" onclick="check()">
                    <input type="hidden" value="stock" name="actionCode">
                    <input type="hidden" value="addstock" name="methodCode">
                  </TH>
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
</form>
</DIV>
<SCRIPT type=text/javascript>
//<![CDATA[
Sys.Application.initialize();
//]]>
</SCRIPT>
</BODY>
</HTML>
