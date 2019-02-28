<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<style type="text/css">
	.codebutton
	{
		width:110px; 
	}
</style>
<fieldset><legend>[[Input]]</legend>
	<table class="normal">
		<tr>
			<td style="width:60px">[[Name]]:</td>
			<td><input type="text" id="inp_name" style="width:100px" /></td>
			<td>&nbsp;&nbsp;&nbsp;</td>
			<td>[[AccessKey]]:</td>
			<td>
				<input type="text" id="inp_access" size="1" maxlength="1" />
			</td>
		</tr>
		<tr>
			<td>[[ID]]:</td>
			<td><input type="text" id="inp_id" style="width:100px" /></td>
			<td>&nbsp;&nbsp;</td>
			<td>
				[[TabIndex]]:
			</td>
			<td>
				<input type="text" id="inp_index" size="5" value="" maxlength="5" onkeypress="return CancelEventIfNotDigit()" />&nbsp;
			</td>
		</tr>
		<tr>
			<td>[[Size]]:</td>
			<td colspan="4"><input type="text" id="inp_size" style="width:100px" /></td>
		</tr>
		<tr>
			<td>
			</td>
			<td colspan="4"><input type="checkbox" id="inp_Multiple" /><label for="inp_Multiple">[[AllowMultipleSelections]]</label>
			</td>
		</tr>
		<tr>
			<td>
			</td>
			<td colspan="4"><input type="checkbox" id="inp_Disabled" /><label for="inp_Disabled">[[Disabled]]</label>
			</td>
		</tr>
	</table>
	[[Items]]:
	<br />
	<table class="normal">
		<tr>
			<td>[[Text]]:
				<br />
				<input type="text" id="inp_item_text" style="width:130px" />
			</td>
			<td>[[Value]]:
				<br />
				<input type="text" id="inp_item_value" style="width:130px" />
			</td>
			<td rowspan="3" valign="top">
				<table>
					<tr>
						<td colspan="2"><button class="codebutton" onclick="Insert();" id="btnInsertItem">[[Insert]]</button>
						</td>
					</tr>
					<tr>
						<td colspan="2"><button class="codebutton" onclick="Update();" id="btnUpdateItem">[[Update]]</button>
						</td>
					</tr>
					<tr>
						<td colspan="2"><button class="codebutton" onclick="Delete();" id="btnDeleteItem">[[Delete]]</button>
						</td>
					</tr>
					<tr>
						<td colspan="2"><button class="codebutton" onclick="Move(1);" id="btnMoveUpItem">[[MoveUp]]</button>
						</td>
					</tr>
					<tr>
						<td colspan="2"><button class="codebutton" onclick="Move(-1);" id="btnMoveDownItem">[[MoveDown]]</button>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td><select size="6" id="list_options" style="width:130px" onchange="document.getElementById('list_options2').selectedIndex = this.selectedIndex;Select(this);FireUIChanged();"></select></td>
			<td><select size="6" id="list_options2" style="width:130px" onchange="document.getElementById('list_options').selectedIndex = this.selectedIndex;Select(this);FireUIChanged();"></select></td>
		</tr>
		<tr>
			<td>[[Color]]:&nbsp;<input autocomplete="off" size="7" type="text" id="inp_item_forecolor" />
			<img alt="" id="inp_item_forecolor_Preview" src="Load.ashx?type=image&file=colorpicker.gif" style="vertical-align:top"/>
			</td>
			<td>[[BackColor]]:&nbsp;<input autocomplete="off" size="7" type="text" id="inp_item_backcolor" />
			<img alt="" id="inp_item_backcolor_Preview" src="Load.ashx?type=image&file=colorpicker.gif" style="vertical-align:top"/>
			</td>
		</tr>
	</table>
</fieldset>
<script type="text/javascript" src="Load.ashx?type=dialogscript&file=Dialog_Tag_Select.js"></script>
