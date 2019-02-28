<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset><legend>[[Layout]]</legend>
	<table border="0" cellspacing="0" cellpadding="2" class="normal">
		<tr>
			<td style="width:50">[[Position]]:
			</td>
			<td><select style="width:80" id="sel_position">
					<option value="">[[NotSet]]</option>
					<option value="absolute">[[Absolute]]</option>
					<option value="relative">[[Relative]]</option>
				</select></td>
			<td style="width:50">[[Display]]:
			</td>
			<td><select style="width:80" id="sel_display">
					<option value="">[[NotSet]]</option>
					<option value="block">block</option>
					<option value="inline">inline</option>
					<option value="inline-block">inline-block</option>
				</select></td>
		</tr>
		<tr>
			<td style="width:50">[[Float]]:
			</td>
			<td><select style="width:80" id="sel_float">
					<option value="">[[NotSet]]</option>
					<option value="left">[[FloatLeft]]</option>
					<option value="right">[[FloatRight]]</option>
					<option value="none">[[FloatNone]]</option>
				</select></td>
			<td style="width:50">[[Clear]]:
			</td>
			<td><select style="width:80" id="sel_clear">
					<option value="">[[NotSet]]</option>
					<option value="left">[[ClearLeft]]</option>
					<option value="right">[[ClearRight]]</option>
					<option value="both">[[ClearBoth]]</option>
					<option value="none">[[ClearNone]]</option>
				</select></td>
		</tr>
	</table>
</fieldset>
<fieldset><legend>[[Size]]</legend>
	<table border="0" cellspacing="0" cellpadding="2" class="normal">
		<tr>
			<td style="width:50">[[Top]]</td>
			<td><input type="text" id="tb_top" style="width:42" />
				<select id="sel_top_unit">
					<option value="px">px</option>
					<option value="pt">pt</option>
					<option value="pc">pc</option>
					<option value="em">em</option>
					<option value="cm">cm</option>
					<option value="mm">mm</option>
					<option value="in">in</option>
				</select></td>
			<td style="width:50">[[Height]]</td>
			<td><input type="text" id="tb_height" style="width:42" />
				<select id="sel_height_unit">
					<option value="px">px</option>
					<option value="%">%</option>
					<option value="pt">pt</option>
					<option value="pc">pc</option>
					<option value="em">em</option>
					<option value="cm">cm</option>
					<option value="mm">mm</option>
					<option value="in">in</option>
				</select></td>
		</tr>
		<tr>
			<td style="width:50">[[Left]]</td>
			<td><input type="text" id="tb_left" style="width:42" />
				<select id="sel_left_unit">
					<option value="px">px</option>
					<option value="pt">pt</option>
					<option value="pc">pc</option>
					<option value="em">em</option>
					<option value="cm">cm</option>
					<option value="mm">mm</option>
					<option value="in">in</option>
				</select></td>
			<td style="width:50">[[Width]]</td>
			<td><input type="text" id="tb_width" style="width:42" />
				<select id="sel_width_unit">
					<option value="px">px</option>
					<option value="%">%</option>
					<option value="pt">pt</option>
					<option value="pc">pc</option>
					<option value="em">em</option>
					<option value="cm">cm</option>
					<option value="mm">mm</option>
					<option value="in">in</option>
				</select></td>
		</tr>
	</table>
</fieldset>
<fieldset><legend>[[Clipping]]</legend>
	<table border="0" cellspacing="0" cellpadding="2" class="normal">
		<tr>
			<td style="width:50">[[Top]]</td>
			<td><input type="text" id="tb_cliptop" style="width:42" />
				<select id="sel_cliptop_unit">
					<option value="px">px</option>
					<option value="%">%</option>
					<option value="pt">pt</option>
					<option value="pc">pc</option>
					<option value="em">em</option>
					<option value="cm">cm</option>
					<option value="mm">mm</option>
					<option value="in">in</option>
				</select></td>
			<td style="width:50">[[Bottom]]</td>
			<td><input type="text" id="tb_clipbottom" style="width:42" />
				<select id="sel_clipbottom_unit">
					<option value="px">px</option>
					<option value="%">%</option>
					<option value="pt">pt</option>
					<option value="pc">pc</option>
					<option value="em">em</option>
					<option value="cm">cm</option>
					<option value="mm">mm</option>
					<option value="in">in</option>
				</select></td>
		</tr>
		<tr>
			<td style="width:50">[[Left]]</td>
			<td><input type="text" id="tb_clipleft" style="width:42" />
				<select id="sel_clipleft_unit">
					<option value="px">px</option>
					<option value="%">%</option>
					<option value="pt">pt</option>
					<option value="pc">pc</option>
					<option value="em">em</option>
					<option value="cm">cm</option>
					<option value="mm">mm</option>
					<option value="in">in</option>
				</select></td>
			<td style="width:50">[[Right]]</td>
			<td><input type="text" id="tb_clipright" style="width:42" />
				<select id="sel_clipright_unit">
					<option value="px">px</option>
					<option value="%">%</option>
					<option value="pt">pt</option>
					<option value="pc">pc</option>
					<option value="em">em</option>
					<option value="cm">cm</option>
					<option value="mm">mm</option>
					<option value="in">in</option>
				</select></td>
		</tr>
	</table>
</fieldset>
<fieldset><legend>[[Misc]]</legend>
	<div>[[Overflow]]:
		<select id="sel_overflow">
			<option value="">[[NotSet]]</option>
			<option value="auto">[[OverflowAuto]]</option>
			<option value="scroll">[[OverflowScroll]]</option>
			<option value="visible">[[OverflowVisible]]</option>
			<option value="hidden">[[OverflowHidden]]</option>
		</select>
		z-index: <input type="text" style="width:60px" id="tb_zindex" />
	</div>
	<table border="0" cellspacing="0" cellpadding="0" class="normal">
		<tr>
			<td style="width:120">[[PrintingBefore]]:</td>
			<td><select id="sel_pagebreakbefore"><option value="">[[NotSet]]</option>
					<option value="auto">[[Auto]]</option>
					<option value="always">[[Always]]</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>[[PrintingAfter]]:
			</td>
			<td><select id="sel_pagebreakafter"><option value="">[[NotSet]]</option>
					<option value="auto">[[Auto]]</option>
					<option value="always">[[Always]]</option>
				</select></td>
		</tr>
	</table>
</fieldset>
<div id="outer" style="height:100px"><div id="div_demo">[[DemoText]]</div>
</div>
<script type="text/javascript" src="Load.ashx?type=dialogscript&file=Dialog_Tag_Style_Layout.js"></script>
