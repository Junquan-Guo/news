<%@ Page Language="C#" Inherits="CuteEditor.EditorUtilityPage" %>
<script runat="server">
override protected void OnInit(EventArgs args)
{
	if(Context.Request.QueryString["Dialog"]=="Standard")
	{
	if(Context.Request.QueryString["IsFrame"]==null)
	{
		string FrameSrc="UniversalKeyboard.Aspx?IsFrame=1&"+Request.ServerVariables["QUERY_STRING"];
		CuteEditor.CEU.WriteDialogOuterFrame(Context,"[[UniversalKeyboard]]",FrameSrc);
		Context.Response.End();
	}
	}
	base.OnInit(args);
}
</script>
<html xmlns="http://www.w3.org/1999/xhtml">	
	<head runat="server">
		<title>[[UniversalKeyboard]]</title>
		<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)" />
		<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)" />
		<link href='Load.ashx?type=themecss&file=dialog.css&theme=[[_Theme_]]' type="text/css" rel="stylesheet" />
		<!--[if IE]>
			<link href="Load.ashx?type=style&file=IE.css" type="text/css" rel="stylesheet" />
		<![endif]-->
		<script type="text/javascript" src="Load.ashx?type=dialogscript&file=DialogHead.js"></script>
		<style type="text/css">
		body,textarea,input,td,select{font:normal 9pt MS Sans Serif;}
		div		{position:absolute;}
		.simple	{font-size:11pt;}
		.double	{font-size:9pt;}
		.simpledia	{font-size:11pt;color:red}
		.doubledia	{font-size:9pt;color:red}
		.action	{font-size:7pt;color:white;}
		.clavier	{font-size:7pt;color:blue;}
		.sign		{font-size:7pt;color:gray;}
		</style>
	</head>
	<body>		
		<textarea id="keyboard_area" cols="40" rows="4" style="width:99%;height:60px;" name="keyboard_area"></textarea>
		<script type="text/javascript" src="Load.ashx?type=scripts&file=Keyboard"></script>
		<div style="width: 300px; position: absolute; height: 30px; left:60px;top:235px">
			<input type="button" value="[[Insert]]" class="formbutton" onclick="do_insert()" id="Button1" name="Button1">&nbsp;
			<input type="button" value="[[Cancel]]" class="formbutton" onclick="do_Close()" id="Button2" name="Button2">
		</div>
	</body>
	<script type="text/javascript" src="Load.ashx?type=dialogscript&file=DialogFoot.js"></script>
	<script type="text/javascript" src="Load.ashx?type=dialogscript&file=Dialog_Keyboard.js"></script>
</html>