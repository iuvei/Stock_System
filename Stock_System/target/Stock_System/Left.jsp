<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>无标题页</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<STYLE type=text/css> 
{
	FONT-SIZE: 12px
}
#menuTree A {
	COLOR: #566984; TEXT-DECORATION: none
}
</STYLE>
<SCRIPT src="Left.files/TreeNode.js" language="javascript"></SCRIPT>
<SCRIPT src="Left.files/Tree.js" language="javascript"></SCRIPT>
<META content="MSHTML 6.00.2900.5848" name=GENERATOR>
</HEAD>
<BODY 
style="BACKGROUND-POSITION-Y: -120px; BACKGROUND-IMAGE: url(images/bg.gif); BACKGROUND-REPEAT: repeat-x">
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
    <TR>
      <TD width=10 height=29><IMG src="Left.files/bg_left_tl.gif"></TD>
      <TD 
    style="FONT-SIZE: 18px; BACKGROUND-IMAGE: url(images/bg_left_tc.gif); COLOR: white; FONT-FAMILY: system">Main 
        Menu</TD>
      <TD width=10><IMG src="Left.files/bg_left_tr.gif"></TD>
    </TR>
    <TR>
      <TD style="BACKGROUND-IMAGE: url(images/bg_left_ls.gif)"></TD>
      <TD id=menuTree 
    style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px; HEIGHT: 100%; BACKGROUND-COLOR: white" 
    vAlign=top></TD>
      <TD style="BACKGROUND-IMAGE: url(images/bg_left_rs.gif)"></TD>
    </TR>
    <TR>
      <TD width=10><IMG src="Left.files/bg_left_bl.gif"></TD>
      <TD style="BACKGROUND-IMAGE: url(images/bg_left_bc.gif)"></TD>
      <TD width=10><IMG 
src="Left.files/bg_left_br.gif"></TD>
    </TR>
  </TBODY>
</TABLE>
<SCRIPT language="javascript">
var tree = null;var root = new TreeNode('系统菜单');
           var fun1 = new TreeNode('交易管理');var fun2 = new TreeNode('股票交易', '/stock/selectStock.jsp', 'tree_node.gif', null, 'tree_node.gif', null);fun1.add(fun2);var fun3 = new TreeNode('挂单情况', '/StockSpirit/actionServlet?actionCode=stockTrans&methodCode=waitingtrans', 'tree_node.gif', null, 'tree_node.gif', null);fun1.add(fun3);var fun4 = new TreeNode('成功交易信息', '/StockSpirit/actionServlet?actionCode=stockTrans&methodCode=succtrans', 'tree_node.gif', null, 'tree_node.gif', null);fun1.add(fun4);var fun5 = new TreeNode('盈亏情况', '/StockSpirit/actionServlet?actionCode=stockTrans&methodCode=transearn', 'tree_node.gif', null, 'tree_node.gif', null);fun1.add(fun5);root.add(fun1);
           var fun6 = new TreeNode('股票查询');var fun7 = new TreeNode('股票查询', '/stock/test.jsp', 'tree_node.gif', null, 'tree_node.gif', null);fun6.add(fun7);var fun8 = new TreeNode('', '/StockSpirit/actionServlet?actionCode=mycheck&methodCode=checkdisplay', 'tree_node.gif', null, 'tree_node.gif', null);fun6.add(fun8);root.add(fun6);
		   tree = new Tree(root);tree.show('menuTree')
</SCRIPT>
</BODY>
</HTML>
