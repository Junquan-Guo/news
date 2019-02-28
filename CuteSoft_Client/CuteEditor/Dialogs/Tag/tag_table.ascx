<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset><legend>[[Table]]</legend>
	<table class="normal">
		<tr>
			<td>[[CellSpacing]]:</td>
			<td><input type="text" id="inp_cellspacing"  size="14" onkeypress="return CancelEventIfNotDigit()" /></td>
			<td>[[CellPadding]]:</td>
			<td><input type="text" id="inp_cellpadding"  size="14" onkeypress="return CancelEventIfNotDigit()" /></td>
		</tr>
		<tr>
			<td>[[ID]]:</td>
			<td><input type="text" id="inp_id" size="14" />&nbsp;&nbsp;</td>
			<td>[[Border]]:</td>
			<td><input type="text" id="inp_border"  size="14" onkeypress="return CancelEventIfNotDigit()" /></td>
		</tr>
		<tr>
			<td>[[Backgroundcolor]]:
			</td>
			<td><input autocomplete="off" type="text" id="inp_bgcolor"  size="14" style='vertical-align:top;'
					oncolorchange="this.value=this.selectedColor; this.style.backgroundColor=this.selectedColor" />
			</td>
			<td>[[BorderColor]]:
			</td>
			<td><input autocomplete="off" type="text" id="inp_bordercolor" size="14" style='vertical-align:top;'
					oncolorchange="this.value=this.selectedColor; this.style.backgroundColor=this.selectedColor" />
			</td>
		</tr>
		<tr>
			<td valign="middle" style="white-space:nowrap" >[[Rules]]:</td>
			<td><select id="sel_rules">
					<option value="">[[NotSet]]</option>
					<option value="all">all</option>
					<option value="rows">rows</option>
					<option value="cols">cols</option>
					<option value="none">none</option>
				</select>
			</td>
			<td colspan="2">
				<input type="checkbox" id="inp_collapse" />
				<label for="inp_collapse">[[CollapseBorder]]</label>&nbsp;				
			</td>
		</tr>
	</table>
	<table class="normal">
		<tr>
			<td style='width:60px'>[[Summary]] :</td>
			<td>
				<textarea id="inp_summary" rows="3" cols="20" style="width:320px"></textarea>
			</td>
		</tr>
	</table>
	<table class="normal" id="CaptionTable">
		<tr>
			<td style='width:60px'>[[Caption]] :</td>
			<td>
			     <input id="btn_editcaption" type="button" value="[[Insert]]" />
			     <input id="btn_delcaption" type="button" value="[[Delete]]" />
			</td>
			<td>&nbsp;</td>
			<td>[[THEAD]]:</td>
			<td>
			    <input id="btn_insthead" type="button" value="[[Insert]]" />	
			</td>
			
			<td>&nbsp;</td>
			<td>[[TFOOT]]:</td>
			<td>
			    <input id="btn_instfoot" type="button" value="[[Insert]]" />			
			</td>
			<td style="width:5"></td>
			<td><img src="Load.ashx?type=image&file=Accessibility.gif" title="Accessibility" /></td>
		</tr>
	</table>
</fieldset>
<fieldset><legend>[[Common]]</legend>
	<table class="normal">
		<tr>
			<td style='width:60px'>[[CssClass]]:</td>
			<td><input type="text" id="inp_class" style="width:80px" /></td>
			<td>[[Width]]:</td>
			<td style="white-space:nowrap">
				<input type="text" id="inp_width" style="width:42px" />
				<select id="sel_width_unit">
					<option value="px">px</option>
					<option value="%">%</option>
				</select>
			</td>
			<td>[[Height]]:</td>
			<td style="white-space:nowrap">
				<input type="text" id="inp_height" style="width:42px" />
				<select id="sel_height_unit">
					<option value="px">px</option>
					<option value="%">%</option>
				</select>
			</td>
		</tr>
	</table>
	<table class="normal">
		<tr>
			<td style='width:60px'>[[Alignment]]:</td>
			<td><select id="sel_align">
					<option value="">[[NotSet]]</option>
					<option value="left">[[Left]]</option>
					<option value="center">[[Center]]</option>
					<option value="right">[[Right]]</option>
				</select></td>
			<td>
				[[Text-Align]] :</td>
			<td><select id="sel_textalign">
					<option value="">[[NotSet]]</option>
					<option value="left">[[Left]]</option>
					<option value="center">[[Center]]</option>
					<option value="right">[[Right]]</option>
					<option value="justify">[[Justify]]</option>
				</select></td>
			<td>[[Float]]:
			</td>
			<td><select id="sel_float">
					<option value="">[[NotSet]]</option>
					<option value="left">[[Left]]</option>
					<option value="right">[[Right]]</option>
				</select></td>
		</tr>
	</table>
	<table class="normal">
		<tr>
			<td style='width:60px'>[[Title]] :</td>
			<td>
				<textarea id="inp_tooltip" rows="3" cols="20" style="width:320px"></textarea>
			</td>
		</tr>
	</table>
</fieldset>
<script type="text/javascript" src="Load.ashx?type=dialogscript&file=Dialog_Tag_Table.js"></script>

