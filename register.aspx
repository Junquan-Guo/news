<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户注册</title>
    <style type="text/css">
        body {
            padding: 0;
            margin: 0;
        }

        #contianer {
        }

        #left {
            background-image: url("images/zc_bg.jpg");
            height: 100%;
            width: 35%;
            background-size: contain;
            background-repeat: no-repeat;
            position: fixed;
        }

        #right {
            float: right;
            width: 65%;
            height: 100%;
        }

        #content {
            width:400px;
            margin-left: 25%;
        }

        .sty1 {
            border: 1px solid rgba(153,153,153,1);
            border-radius: 5px;
            height: 40px;
            width: 400px;
            margin-bottom: 20px;
            padding:0 10px;
        }

        .sty1:focus {

            outline:none;
        }
        h1 {
            font-size: 50px;
            font-weight: normal;
            margin-left: -30px;
            margin-top: 150px;
        }

        .menu {
            font-size: 20px;
            color: rgba(255,255,255,1);
            background-color: rgba(204,51,102,1);
            float: right;
            height: 30px;
            width: 80px;
            margin-top: 30px;
            margin-right: 50px;
            text-decoration: none;
            text-align: center;
            border-radius: 5px;
        }

        h2 {
            font-weight: normal;
            margin-bottom: 50px;
        }
        .submit {
            border: 1px solid rgba(153,153,153,1);
            border-radius: 5px;
            height: 40px;
            width: 400px;
            margin-bottom: 20px;
            font-size: 20px;
            background-color: rgba(0,153,255,1);
            color: rgba(255,255,255,1);
            margin-top: 20px;
        }
    </style>
    <script src="js/jquery.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="contianer">
            <div id="left"></div>
            <div id="right">
                <div><a href="Default.aspx" class="menu">主页</a><a href="login.aspx" class="menu">登录</a></div>
                <div id="content">
                    <h1>&nbsp;&nbsp;欢迎新用户注册</h1>
                    <h2>登录也是一种态度！！！</h2>
                    <div>&nbsp;&nbsp;用户名:<asp:TextBox ID="txtusername" runat="server" CssClass="sty1"></asp:TextBox></div>
                    <div>&nbsp;&nbsp;手机号码:<asp:TextBox ID="txtphone" runat="server" CssClass="sty1"></asp:TextBox></div>
                    <div>&nbsp;&nbsp;邮&nbsp;&nbsp;&nbsp;箱:<asp:TextBox ID="txtemail" runat="server" CssClass="sty1"></asp:TextBox></div>
                    <div>&nbsp;&nbsp;密&nbsp;&nbsp;&nbsp;码:<asp:TextBox ID="txtpassword" runat="server" CssClass="sty1" TextMode="Password"></asp:TextBox></div>
                    <div>&nbsp;&nbsp;确认密码:<asp:TextBox ID="txtrepassword" runat="server" CssClass="sty1" TextMode="Password"></asp:TextBox></div>
                    <div>&nbsp;&nbsp;性&nbsp;&nbsp;&nbsp;别:
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="100px">
                            <asp:ListItem Selected="True">男</asp:ListItem>
                            <asp:ListItem>女</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div>
                        <asp:Button ID="btnregister" runat="server" Text="注册" onclick="btnregister_Click" CssClass="submit"/>       
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script>
        $(document).ready(function (e) {
            var h = $(window).height();
            $("#left").height(h);
        });
    </script>
</body>
</html>
