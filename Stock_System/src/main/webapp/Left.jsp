﻿<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
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
           var fun1 = new TreeNode('交易管理');var fun2 = new TreeNode('买入股票', '/stock/tradstock.jsp', 'tree_node.gif', null, 'tree_node.gif', null);fun1.add(fun2);var fun3 = new TreeNode('卖出股票', '/stock/SellStock.jsp', 'tree_node.gif', null, 'tree_node.gif', null);fun1.add(fun3);var fun4 = new TreeNode('委托单情况', 'action/showAction.action', 'tree_node.gif', null, 'tree_node.gif', null);fun1.add(fun4);var fun5 = new TreeNode('成功交易信息', 'action/findAction.action', 'tree_node.gif', null, 'tree_node.gif', null);fun1.add(fun5);var fun6 = new TreeNode('持仓信息查询', 'action/findAction2.action', 'tree_node.gif', null, 'tree_node.gif', null);fun1.add(fun6);root.add(fun1);
           var fun7 = new TreeNode('股票查询');var fun8 = new TreeNode('股票查询', '/stock/test.jsp', 'tree_node.gif', null, 'tree_node.gif', null);fun7.add(fun8);root.add(fun7);
           var fun8 = new TreeNode('用户管理');var fun9 = new TreeNode('用户信息修改', '/user/modify.jsp', 'tree_node.gif', null, 'tree_node.gif', null);fun8.add(fun9);root.add(fun8);
		   tree = new Tree(root);tree.show('menuTree')
</SCRIPT>
</BODY>
</HTML>
