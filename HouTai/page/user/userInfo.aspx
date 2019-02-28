<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userInfo.aspx.cs" Inherits="page_user_userInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>编辑资料</title>
	<link rel="stylesheet" href="../../layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="../../css/user.css" media="all" />
</head>
<body class="childrenBody">
	<form class="layui-form" runat="server">
		<div class="user_left">
			<div class="layui-form-item">
                <asp:Label ID="Label1" runat="server" Text="用户名" class="layui-form-label"></asp:Label>
			    <div class="layui-input-block">
                    <asp:TextBox ID="managename1" runat="server" Text="登录后显示用户名！" disabled="disabled" class="layui-input layui-disabled" ></asp:TextBox>
			    </div>
			</div>
			<div class="layui-form-item">
                <asp:Label ID="Label2" runat="server" Text="用户组" class="layui-form-label"></asp:Label>
			    <div class="layui-input-block">
                    <asp:TextBox ID="managegroup" runat="server" Text="这里显示会员等级！" disabled="disabled" class="layui-input layui-disabled"></asp:TextBox>
			    </div>
			</div>
			<div class="layui-form-item" pane="">
                <asp:Label ID="Label4" runat="server" Text="性别" class="layui-form-label"></asp:Label>
			    <div class="layui-input-block">
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="sex" Text="男" title="男" Checked="True"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="sex" Text="女" title="女" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="sex" Text="保密" title="保密" />
			    	<!--<input type="radio" name="sex" value="男"  checked=""/>
	     			<input type="radio" name="sex" value="女" />
	     			<input type="radio" name="sex" value="保密" />-->
			    </div>
			</div>
			<div class="layui-form-item">
                <asp:Label ID="Label5" runat="server" Text="手机号码" class="layui-form-label"></asp:Label>
			    <div class="layui-input-block">
                    <asp:TextBox ID="phone" runat="server" placeholder="请输入手机号码" lay-verify="required|phone" class="layui-input"></asp:TextBox>
			    </div>
			</div>
			<div class="layui-form-item">
                <asp:Label ID="Label6" runat="server" Text="出生年月" class="layui-form-label"></asp:Label>
			    <div class="layui-input-block">
                    <asp:TextBox ID="birthday" runat="server"  placeholder="请输入出生年月" lay-verify="required|date" onclick="layui.laydate({ elem: this, max: laydate.now() })" class="layui-input"></asp:TextBox>
			    </div>
			</div>
			<div class="layui-form-item">
                <asp:Label ID="Label7" runat="server" Text="所在地区" class="layui-form-label"></asp:Label>
			    <div class="layui-input-inline">
	                <select name="province" lay-filter="province">
	                    <option value="" >请选择省</option>
	                </select>
	            </div>
	            <div class="layui-input-inline">
	                <select name="city" lay-filter="city" disabled="disabled">
	                    <option value="">请选择市</option>
	                </select>
	            </div>
            </div>
            <div class="layui-form-item">
                <asp:Label ID="Label8" runat="server" Text="邮箱" class="layui-form-label"></asp:Label>
			    <div class="layui-input-block">
                    <asp:TextBox ID="email" runat="server" placeholder="请输入邮箱" lay-verify="required|email" class="layui-input"></asp:TextBox>
			    </div>
			</div>
			<div class="layui-form-item">
                <asp:Label ID="Label9" runat="server" Text="介绍" class="layui-form-label"></asp:Label>
			    <div class="layui-input-block">
                    <asp:TextBox ID="introduce" runat="server" TextMode="MultiLine" placeholder="请输入内容" class="layui-textarea"></asp:TextBox>
			    </div>
			</div>
		</div>
		<div class="user_right">
			<asp:Image ID="userFace" runat="server" class="layui-circle"/>
            <br /><br /><br />
            <input type="file" name="dddd" class="layui-upload-file" lay-title="修改头像"/>
		</div>
		<div class="layui-form-item" style="margin-left: 5%; padding-top:60px;">
		    <div class="layui-input-block">
                <asp:Button ID="Button1" runat="server" Text="保存" class="layui-btn" lay-submit="" lay-filter="changeUser" />
                <asp:Button ID="Button2" runat="server" Text="取消" class="layui-btn layui-btn-primary"/>
		    </div>
		</div>   
	</form>
	<script type="text/javascript" src="../../layui/layui.js"></script>
	<script type="text/javascript" src="address.js"></script>
	<script type="text/javascript" src="user.js"></script>
</body>
</html>