<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset><legend>[[Src]]</legend>
	<input type="text" id="inp_src" style="width:320px"><button id="btnbrowse">[[Browse]]</button>
</fieldset>
<fieldset style="height:180px;width:270px;overflow:hidden;"><legend>[[Demo]]</legend>
	<object id=flash_preview classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,42,0"
		VIEWASTEXT>
		<embed type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer"></embed>
	</object>
</fieldset>

<script type="text/javascript" src="Load.ashx?type=dialogscript&file=Dialog_Tag_Flash.js"></script>

