﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="left.aspx.cs" Inherits="SDPTExam.Web.UI.LeftPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
</head>
<body style="font-size:12px; background:url(images/leftbg.jpg)">
    <form id="form1" runat="server">
    <div>
        <div>
            <br />
            <asp:TreeView ID="TreeView1" runat="server" AutoGenerateDataBindings="False" DataSourceID="XmlDataSource1"
                ExpandDepth="1" ImageSet="Simple">
                <ParentNodeStyle Font-Bold="False" />
                <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px"
                    VerticalPadding="0px" />
                <NodeStyle Font-Names="Tahoma" ForeColor="Black" HorizontalPadding="0px"
                    NodeSpacing="0px" VerticalPadding="0px" />
                <DataBindings>
                    <asp:TreeNodeBinding Text="功能菜单" DataMember="工作台" />
                            <asp:TreeNodeBinding DataMember="ParentMenu" NavigateUrlField="url" TargetField="target"
                        TextField="title" ToolTipField="title" SelectAction="Expand" />
                    <asp:TreeNodeBinding DataMember="SubMenu" NavigateUrlField="url" TargetField="target"
                        TextField="title" ToolTipField="title" />
                </DataBindings>
            </asp:TreeView>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lbnLogout" runat="server" OnClick="lbnLogout_Click" ToolTip="以管理员身份重新登录">安全退出</asp:LinkButton>
            <br />
            <br />

            <asp:XmlDataSource ID="XmlDataSource1" runat="server">
            </asp:XmlDataSource>
           <div style="text-align:center">           

                <br />
               <br />  
                <br />
            </div>
            </div>
    </div>
  
    </form>
</body>
</html>