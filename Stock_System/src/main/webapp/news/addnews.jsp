<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@page import="com.firstgroup.entity.*,com.jspsmart.upload.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
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
<script type="text/javascript">
  function check(){
  		if(form0.messageid.value==null ||form0.messageid.value==""){
  			alert("���ű�Ų���Ϊ�գ�");
  			
  			return;
  		}

  		else if(form0.messagename.value==null || form0.messagename.value==""){
  			alert("���ű��ⲻ��Ϊ�գ�");
  			return;
  		}else if(form0.flag.value==null || form0.flag.value==""){
  			alert("�������");
  			return;
  		}else if(form0.content.value==null || form0.content.value==""){
  			alert("�������ݲ���Ϊ�գ�");
  			return;
  		}else{
  		  form0.submit();
  		  }
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
<!-- enctype="multipart/form-data" -->
<DIV>
<form name="form0" method="post" action="<%=request.getContextPath()%>/actionServlet" enctype="multipart/form-data">
  <TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
    <TBODY>
      <TR 
  style="BACKGROUND-IMAGE: url(images/bg_header.gif); BACKGROUND-REPEAT: repeat-x" 
  height=47>
        <TD width=10><SPAN 
      style="FLOAT: left; BACKGROUND-IMAGE: url(images/main_hl.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN></TD>
        <TD><SPAN 
      style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FLOAT: left; BACKGROUND-IMAGE: url(images/main_hb.gif); PADDING-BOTTOM: 10px; COLOR: white; PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0px: ">���Ź��� </SPAN></TD>
        <TD 
    style="BACKGROUND-POSITION: 50% bottom; BACKGROUND-IMAGE: url(images/main_rc.gif)" 
    width=10></TD>
      </TR>
      <TR>
        <TD style="BACKGROUND-IMAGE: url(images/main_ls.gif)">&nbsp;</TD>
        <TD align=middle 
    vAlign=top 
    style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; COLOR: #566984; PADDING-TOP: 10px; BACKGROUND-COLOR: white">
          <DIV>
            <TABLE width="90%" 
      border=0 align="center" cellSpacing=0 class=gridView id=ctl00_ContentPlaceHolder2_GridView1 
      style="WIDTH: 50%; BORDER-COLLAPSE: collapse">
              <TBODY>
                <TR>
                <TH colspan="2" class=gridViewHeader scope=col>����</TH>
                </TR>
                <TR>
                  <TH width="176"  style="WIDTH: 200px; font-size: small;" class=gridViewHeader scope=col align="right">����Id:</TH>
                  <TD width="351" ><input type="text" name="messageid" height="20px"></TD>
                </TR>
                <TR>
                 <TH width="176"  style="WIDTH: 200px; font-size: small;" class=gridViewHeader scope=col align="right">����:</TH>
                  <TD ><input type="text" name="messagename" height="20px"></TD>
                </TR>
                <TR>
                  <TH width="176" style="WIDTH: 200px; font-size: small;" class=gridViewHeader scope=col  align="right">����:</TH>
                  <TD ><select name="flag">
     <option>--</option>
     <option value="1">����</option>  
      <option value="2">�Ƽ�</option> 
       <option value="3">��Ϣ</option> 
               </select></TD>
                </TR>
                <TR>
                  <TH  style="WIDTH: 200px; font-size: small;" class=gridViewHeader scope=col  align="right" >��Ӹ���:</TH>
                  <TD ><input type="file" name="upload"></TD>
                </TR>
                <TR>
                  <TH width="176"  style="WIDTH: 200px; font-size: small;" class=gridViewHeader scope=col  align="right" >����:</TH>
                  <TD ><textarea name="content" rows="10"></textarea></TD>
                </TR>

                
                <TR>
                  <TD colspan="2" align="center" style="WIDTH: 50px"><table width="200" border="0" align="center">
                    <tr align="center">
                      <th width="92" scope="col">
                        <input type="reset" value="����">
                </th>
                      <th scope=col width="92" scope="col">
                        <input type="button" value="���" onclick="check()" >
                         <input type="hidden" value="news" name="actionCode">
                         <input type="hidden" value="addnews" name="methodCode">
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
  </form>
</DIV>
<SCRIPT type=text/javascript>
//<![CDATA[
Sys.Application.initialize();
//]]>
</SCRIPT>
</BODY>
</HTML>
