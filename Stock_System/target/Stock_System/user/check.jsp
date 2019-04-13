<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@page contentType="text/html; charset=gb2312" %>
<%@page import="com.firstgroup.entity.*"%>
<%@page import="java.util.*"%>
<%@page import="com.firstgroup.utils.*"%>
<%@page import="com.firstgroup.entity.*" %>


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

        function selectallbox()
        {
            var list = document.getElementsByName('setlist');
            var listAllValue='';
             if(document.getElementById('checkAll').checked)
             {
                  for(var i=0;i<list.length;i++)
                  {
                    list[i].checked = true;
                    if(listAllValue=='')
                        listAllValue=list[i].value;
                    else
                        listAllValue = listAllValue + ',' + list[i].value;
                  }
                  document.getElementById('boxListValue').value=listAllValue;
             }
             else 
             {
                  for(var i=0;i<list.length;i++)
                  {
                    list[i].checked = false;
                  }
                  document.getElementById('boxListValue').value='';
             }
         } 

//]]>
</SCRIPT>
<SCRIPT src="EmployeeMgr.files/WebResource.axd" type=text/javascript></SCRIPT>
<SCRIPT src="EmployeeMgr.files/ScriptResource.axd" type=text/javascript></SCRIPT>


<SCRIPT 
src="EmployeeMgr.files/ScriptResource(1).axd" 
type=text/javascript></SCRIPT>
<script type="text/javascript">

                function pass_all_check(){
                
                    var list = document.getElementsByName('setlist');
                    
                    var j=0;
                    
                    for(var i=0;i<list.length;i++)
                   {
                        if(list[i].checked == true){                       
                            j++;                       
                        }                                   
                   }
                
                    if(j==0){
                    
                        alert('批量通过不能为空');
                        
                        return ;
                    
                    }else{
                
                  
  						form0.actionCode.value="mycheck";
  						form0.methodCode.value="passAllCheck";
  						form0.submit();
  					}
  				    
  				}
  				
  				
  				function delete_all_check(){
  				
  				  var list = document.getElementsByName('setlist');
                    
                    var j=0;
                    
                    for(var i=0;i<list.length;i++){
                    
                        if(list[i].checked == true){                       
                            j++;                       
                        }                                   
                   }
                
                    if(j==0){
                    
                        alert('批量删除不能为空');
                        
                        return ;
                    
                    }else{
  				 				
  				    	form0.actionCode.value="mycheck";
  					    form0.methodCode.value="deleteAllCheck";
  					    form0.submit();
  					}
  				
  				}
  		
</script>

<DIV>
  <TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
    <TBODY>
      <TR 
  style="BACKGROUND-IMAGE: url(images/bg_header.gif); BACKGROUND-REPEAT: repeat-x" 
  height=47>
        <TD width=10><SPAN 
      style="FLOAT: left; BACKGROUND-IMAGE: url(images/main_hl.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN></TD>
        <TD><SPAN 
      style="FLOAT: left; BACKGROUND-IMAGE: url(images/main_hl2.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN><SPAN 
      style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FLOAT: left; BACKGROUND-IMAGE: url(images/main_hb.gif); PADDING-BOTTOM: 10px; COLOR: white; PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0px: ">审核用户 </SPAN><SPAN 
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
          
          <form name="form0" action="<%=request.getContextPath()%>/actionServlet" method="post">
            <TABLE class=gridView id=ctl00_ContentPlaceHolder2_GridView1 
      style="border-collapse: collapse;" cellSpacing=0 rules=all 
      border=1 width="100%" height="115">
              <TBODY>
                <TR>
                             
                  <TH width="5%" height="30" class=gridViewHeader style="WIDTH: 50px" scope=col>&nbsp;</TH>
                  <TH width="10%" class=gridViewHeader scope=col>用户名</TH>
                  <TH width="15%" class=gridViewHeader scope=col>真实姓名</TH>
                  <TH width="15%" class=gridViewHeader scope=col>密码</TH>
                  <TH width="14%" class=gridViewHeader scope=col>E-mail</TH>
                  <TH width="14%" class=gridViewHeader scope=col>联系电话</TH>
                  <TH colspan="17%" class=gridviewHeader scope=col>审核</TH>            
                </TR>
                 <%   
        	    List check_user = (List)request.getAttribute("check_user");
        	    
        	    MyCheckInfo mu = null;
        
                for(int i = 0;i<check_user.size();i++){
     
                      mu=new MyCheckInfo();
     	              mu= (MyCheckInfo)check_user.get(i);     
                %>               
                <TR>
                  <TD width="5%" height="48" class=gridViewItem style="WIDTH: 50px"><IMG 
            src="EmployeeMgr.files/bg_users.gif"> </TD>
                  <TD width="10%" class=gridViewItem><%=mu.getT_userid()%></TD>
                  <TD width="15%"class=gridViewItem><%=mu.getT_username()%></TD>
                  <TD width="15%"class=gridViewItem><%=mu.getT_password()%></TD>
                  <TD width="14%" class=gridViewItem><%=mu.getT_email()%></TD>
                  <TD width="14%" class=gridViewItem><%=mu.getT_TEL()%></TD>
             
                  <TD width="8%" class=gridViewItem><a class=cmdField href="<%=request.getContextPath()%>/actionServlet?actionCode=mycheck&methodCode=pass_check&checkId=<%=mu.getT_userid()%>">通过</a></TD>
                  <TD width="9%" class=gridViewItem><A class=cmdField 
            id=ctl00_ContentPlaceHolder2_GridView1_ctl02_LinkButton1 
            onclick="return confirm('确定要删除吗？');" 
            href="<%=request.getContextPath()%>/actionServlet?actionCode=mycheck&methodCode=del_check&checkId=<%=mu.getT_userid()%>">删除</A> </TD>
            <TD width="10%"><input type="checkbox" name="setlist" value="<%=mu.getT_userid()%>" align="middle" /> </TD>                 
                </TR>
               <%} %> 
                <TR>
                  <TD height="35" colspan="9" align="right" class=gridViewItem >
                  <table width="100%" border="0" align="right">
                    <tr>
                      
                      <td width="70%"><INPUT type="hidden" name="boxListValue"/></td>
                      <td width="10%"><input type="button" value="批量通过" onClick="pass_all_check()"/> </td>
                      <td width="10%"><input type="button" value="批量删除" onClick="delete_all_check()"/> </td>
                      <td width="10%"><INPUT onClick="selectallbox();" type="checkbox" name="checkAll"><font size="2">全选</></td>
                    </tr>
                  </table>                   
                  </TD>
                </TR>                
              </TBODY>
            </TABLE>
                      <table width="328" border="0">
                <tr>
                <%  
                     int pageCount = Integer.parseInt((String)request.getAttribute("pageCount")); 
                    
                     int pageNow = Integer.parseInt((String)request.getAttribute("pageNow")); 
                      
                     int k=1; 
                     if(pageNow>0){
                 %>
                 
                  <td width="80" align="right"><a href="<%=request.getContextPath()%>/actionServlet?actionCode=mycheck&methodCode=checkdisplay&pagenow=<%=k%>"><font size="2">首页</font></a></td>
                
                
                <% 
                    
                	if(pageNow==1){//显示上一页连接 
                	%>
                	     <td width="80" align="right"><a href="<%=request.getContextPath()%>/actionServlet?actionCode=mycheck&methodCode=checkdisplay&pagenow=<%=1%>"><img height="15" width="43" src="EmployeeMgr.files/back.gif"></a></td>
                	<% 
                	}else{ 
                	%>
                		 <td width="80" ><a href="<%=request.getContextPath()%>/actionServlet?actionCode=mycheck&methodCode=checkdisplay&pagenow=<%=pageNow-1%>"><img height="15" width="43" src="EmployeeMgr.files/back.gif"></a></td>
                	<% 
                	} 
                %><% 
                   if(pageCount>3){ 
                     if(pageNow==1){//显示中间连接 
                		  for(int i=0;i<3;i++){ 
                %>
                 
                
                		 <td width="80" ><a href="<%=request.getContextPath()%>/actionServlet?actionCode=mycheck&methodCode=checkdisplay&pagenow=<%=i+1%>"><font size="2">[<%=i+1 %>]</font></a></td>
                		<% 
                	   } 
                     }else if(pageNow+2<pageCount){ 
                		  for(int i=pageNow;i<pageNow+3 ;i++){ 
                	    %>
                		    <td width="80" ><a href="<%=request.getContextPath()%>/actionServlet?actionCode=mycheck&methodCode=checkdisplay&pagenow=<%=i%>"><font size="2">[<%=i %>]</font></a></td>
                		<% 
                		  } 
                	 }else if(pageNow+2>=pageCount){ 
                	    %>
                		    <td width="80" ><a href="<%=request.getContextPath()%>/actionServlet?actionCode=mycheck&methodCode=checkdisplay&pagenow=<%=pageCount-2%>"><font size="2">[<%=pageCount-2 %>]</font></a></td>
                		    <td width="80" ><a href="<%=request.getContextPath()%>/actionServlet?actionCode=mycheck&methodCode=checkdisplay&pagenow=<%=pageCount-1%>"><font size="2">[<%=pageCount-1 %>]</font></a></td>
                		    <td width="80" ><a href="<%=request.getContextPath()%>/actionServlet?actionCode=mycheck&methodCode=checkdisplay&pagenow=<%=pageCount%>"><font size="2">[<%=pageCount %>]</font></a></td>
                		<% 
                	 }   
                 }else{ 
                      for(int i=0;i<3 && i<pageCount;i++){ 
                %>
                		 <td width="80" ><a href="<%=request.getContextPath()%>/actionServlet?actionCode=mycheck&methodCode=checkdisplay&pagenow=<%=i+1%>"><font size="2">[<%=i+1 %>]</font></a></td>
                		<% 
                	   } 
                 }      	 
                 %><% 
                   if(pageNow==pageCount){ 
                   %>
                 
                   <td width="80"><a href="<%=request.getContextPath()%>/actionServlet?actionCode=mycheck&methodCode=checkdisplay&pagenow=<%=pageCount%>"><img height="15" width="43" src="EmployeeMgr.files/next.gif"></a></td>
                   <% 
                   }else{ 
                   %>
                   <td width="80"><a href="<%=request.getContextPath()%>/actionServlet?actionCode=mycheck&methodCode=checkdisplay&pagenow=<%=pageNow+1%>"><img height="15" width="43" src="EmployeeMgr.files/next.gif"></a></td>
                   <% 
                   } 
                   
                  %>
                <td width="80"><a href="<%=request.getContextPath()%>/actionServlet?actionCode=mycheck&methodCode=checkdisplay&pagenow=<%=pageCount%>"><font size="2">尾页</font></a></td>
                <% }%>
                <td width="130" align="center"><font size="2">共<%=pageCount %>页</font></td>
               
                </tr>
            </table>               
            <p>&nbsp;</p>
         
          
          <input type="hidden" name="actionCode" value="user"/>

          <input type="hidden" name="methodCode" value="passAllCheck"/>
           </form>
         </DIV>
        </TD>
        <TD style="BACKGROUND-IMAGE: url(images/main_rs.gif)"></TD>
      </TR>
      <TR 
  style="BACKGROUND-IMAGE: url(mages/main_fs.gif); BACKGROUND-REPEAT: repeat-x" 
  height=10>
        <TD style="BACKGROUND-IMAGE: url(images/main_lf.gif)"></TD>
        <TD style="BACKGROUND-IMAGE: url(images/main_fs.gif)"><br></TD>
        <TD 
style="BACKGROUND-IMAGE: url(images/main_rf.gif)"><br></TD>
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


