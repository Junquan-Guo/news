<%@ Page Language="C#" Inherits="CuteEditor.EditorUtilityPage" %>
<script runat="server">
	string FrameSrc;
override protected void OnInit(EventArgs args)
{
	base.OnInit(args);
	if(Request.Browser.Browser=="IE")
	{
		Server.Transfer("colorpicker_more_ie.aspx");
	}
	else
	{
		Server.Transfer("colorpicker_more_ns.aspx");
	}
}
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat=server>
		
	</head>
	<body>
	</body>
</html>