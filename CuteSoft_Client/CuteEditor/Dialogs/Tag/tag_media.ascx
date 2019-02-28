<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset><legend>[[Src]]</legend>
	<input type="text" id="inp_src" style="width:320px" /><button id="btnbrowse">[[Browse]]</button>
</fieldset>
<fieldset style="height:180px;width:270px;overflow:hidden;"><legend>[[Demo]]</legend>
	<img id="img_demo" src="" alt="" />
</fieldset>

<script type="text/javascript" src="Load.ashx?type=dialogscript&file=Dialog_Tag_Media.js"></script>
