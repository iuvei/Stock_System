<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

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
  		if(form0.code.value==null ||form0.code.value==""){
  			alert("股票代码不能为空！");
  			
  			return;
  		}else if(form0.pride.value==null || form0.pride.value==""){
  			alert("股票价格不能为空！");
  			return;
  		}else if(form0.num.value==null || form0.num.value==""){
  			alert("购买量不能为空！");
  			return;
  		}
        else if(form0.num.value%100!=0){
            alert("购买量为100的整数倍！");
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
  <form method="post" action="${ pageContext.request.contextPath }/tradeAction.action">
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
            <form method="post" action="${ pageContext.request.contextPath }/tradeAction.action">
            <TABLE class=gridView id=ctl00_ContentPlaceHolder2_GridView1 
      style="WIDTH: 50%; BORDER-COLLAPSE: collapse" cellSpacing=0 rules=all 
      border=1>
              <TBODY>


                <TR>
                  <TH colspan="2" class=gridViewHeader scope=col>买入股票</TH>
                </TR>
                <TR>
                  <TH class=gridViewHeader style="text-align: right" scope=col>股票代码</TH>
                  <TH scope=col><input type="text" id="tradecode" name="tradecode"></TH>
                </TR>
                <TR>
                  <TH class=gridViewHeader style="text-align: right" scope=col>股票名称</TH>
                  <TH scope=col><input type="text" id="tradename" name="tradename"></TH>
                </TR>
               
                <TR>
                  <TH class=gridViewHeader style="text-align: right"  scope=col>价格</TH>
                  <TH scope=col><input type="text" id="tradeprice" name="tradeprice"  ></TH>
                </TR>
                <TR>
                  <TH class=gridViewHeader style="text-align: right"  scope=col >数量</TH>
                  <TH scope=col>
                    <input type="text" name="tradenumber" >
                  </TH>
                </TR>


                <TR>
                  <TH  class=gridViewHeader scope=col>&nbsp;</TH>
                  <TH  scope=col>
                    <input type="submit" value="提交" >
                  </TH>
                </TR>
              </TBODY>
            </TABLE>
            </form>
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

</BODY>
</HTML>
