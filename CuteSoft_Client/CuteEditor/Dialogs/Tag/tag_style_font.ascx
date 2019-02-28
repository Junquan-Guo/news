<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset>
    <legend>[[SystemFont]]</legend>
	<select id="sel_font" style="width:240">
		<option value="">[[NotSet]]</option>
		<option value="caption">[[Caption]]</option>
		<option value="icon">[[Icon]]</option>
		<option value="menu">[[Menu]]</option>
		<option value="messagebox">[[Messagebox]]</option>
		<option value="smallcaption">[[Smallcaption]]</option>
		<option value="statusbar">[[Statusbar]]</option>
	</select>
</fieldset>
<div id="div_font_detail">
	<fieldset><legend>[[FontFamily]]</legend>
	<select id="sel_fontfamily" style="width:240">
		<option value="">[[NotSet]]</option>
		<option value="Arial">Arial</option>
		<option value="Verdana">Verdana</option>
		<option value="Comic Sans MS">Comic Sans MS</option>
		<option value="Courier">Courier</option>
		<option value="Georgia">Georgia</option>
		<option value="Tahoma">Tahoma</option>
		<option value="Times New Roman">Times New Roman</option>
		<option value="Wingdings">Wingdings</option>
	</select>
	</fieldset>
	<fieldset><legend>[[Decoration]]</legend>
		<input type="checkbox" id="cb_decoration_under" /><label for="cb_decoration_under">[[Underline]]</label>
		<input type="checkbox" id="cb_decoration_over" /><label for="cb_decoration_over">[[Overline]]</label>
		<input type="checkbox" id="cb_decoration_through" /><label for="cb_decoration_through">[[Strikethrough]]</label>
	</fieldset>
	<fieldset><legend>[[Style]]</legend>
		<input type="checkbox" id="cb_style_bold" /><label for="cb_style_bold">[[Bold]]</label>
		<input type="checkbox" id="cb_style_italic" /><label for="cb_style_italic">[[Italic]]</label>
		&nbsp;&nbsp;[[Capitalization]]:
		<select id="sel_fontTransform">
			<option value="">[[NotSet]]</option>
			<option value="uppercase">[[uppercase]]</option>
			<option value="lowercase">[[lowercase]]</option>
			<option value="capitalize">[[InitialCap]]</option>
		</select>
	</fieldset>
	<fieldset><legend>[[Size]]</legend>
		<select id="sel_fontsize">
			<option value="">[[NotSet]]</option>
			<option value="xx-large">xx-large</option>
			<option value=" x-large">x-large</option>
			<option value="large">large</option>
			<option value="medium">medium</option>
			<option value="small">small</option>
			<option value="x-small">x-small</option>
			<option value="xx-small">xx-small</option>
			<option value="larger">larger</option>
			<option value="smaller">Smaller</option>
		</select>
		[[OR]] <input type="text" id="inp_fontsize" style="width:56" />
		<select id="sel_fontsize_unit">
			<option value="px">px</option>
			<option value="pt">pt</option>
			<option value="pc">pc</option>
			<option value="em">em</option>
			<option value="cm">cm</option>
			<option value="mm">mm</option>
			<option value="in">in</option>
		</select>
	</fieldset>
	<fieldset><legend>[[Color]]</legend>
		<input size="14" type="text" id="inp_color"/>
		<img alt="" id="inp_color_Preview" src="Load.ashx?type=image&file=colorpicker.gif" style="vertical-align:top"/>
	</fieldset>
</div>
<div id="outer"><div id="div_demo">[[DemoText]]</div></div>
<script type="text/javascript" src="Load.ashx?type=dialogscript&file=Dialog_Tag_Style_Font.js"></script>
