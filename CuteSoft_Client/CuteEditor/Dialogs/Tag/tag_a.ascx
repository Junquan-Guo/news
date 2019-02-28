<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset><legend>[[Hyperlink_Information]]</legend>
	<table class="normal">
		<tr>
			<td style="width:60px">[[Url]]:</td>
			<td colspan="3"><input type="text" id="inp_src" style="width:260px" />
			</td>
			<td><button id="btnbrowse" class="formbutton">[[Browse]]</button></td>
		</tr>
		<tr>
			<td style="width:60px">[[Type]]:</td>
			<td>
				<select id="sel_protocol" onchange="sel_protocol_change()">
					<option value="http://">http://</option>
					<option value="https://">https://</option>
					<option value="ftp://">ftp://</option>
					<option value="news://">news://</option>
					<option value="mailto:">mailto:</option>
					<!-- last one : if move this to front , change the script too -->
					<option value="others">[[Other]]</option>
				</select>
			</td>
			<td>
				[[Target]]: 
			</td>
			<td>
				<select id="inp_target" name="inp_target">
					<option value="" selected="selected">[[NotSet]]</option>
					<option value="_blank">[[Newwindow]]</option>
					<option value="_self">[[Samewindow]]</option>
					<option value="_top">[[Topmostwindow]]</option>
					<option value="_parent">[[Parentwindow]]</option>
				</select>
			</td>
			<td>
			</td>
		</tr>		
		<tr>
			<td valign="middle" style="white-space:nowrap" >[[ID]]:</td>
			<td>
				<input type="text" id="inp_id" size="14" />
			</td>
			<td>Nofollow:</td>
			<td>
				<input type="checkbox" name="Nofollow" id="Nofollow" value="Nofollow" />
			</td>
		</tr>
		<tr>
			<td valign="middle" style="white-space:nowrap" >[[CssClass]]:</td>
			<td>
				<input type="text" id="inp_class" size="14" />
			</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td valign="middle" style="white-space:nowrap" >[[AccessKey]]:</td>
			<td colspan="4">
				<input type="text" id="inp_access" size="2" maxlength="1" />
				&nbsp;
				[[TabIndex]]:&nbsp;
				<input type="text" id="inp_index" size="5" maxlength="5" onkeypress="return CancelEventIfNotDigit()" />
				&nbsp;
				[[Color]]:&nbsp;
				<input autocomplete="off" type="text" id="inp_color" size="7" style="width:57px" />
				<img alt="" id="inp_color_Preview" src="Load.ashx?type=image&file=colorpicker.gif" style="vertical-align:top"/>
			</td>
		</tr>
		<tr>
			<td>[[Title]]:</td>
			<td colspan="3">
				<textarea id="inp_title" rows="2" cols="20" style="width:260px"></textarea>
			</td>
			<td></td>
		</tr>
		<tr>
			<td align="right"></td>
			<td colspan="4">
				<input type="checkbox" id="inp_checked" onclick="ToggleAnchors();" />[[SelectAnchor]]
				<br />
				<select size="5" name="allanchors" style="width: 255" id="allanchors" onchange="selectAnchor(this.value);"></select>
			</td>
		</tr>
	</table>				
</fieldset>
<script type="text/javascript" src="Load.ashx?type=dialogscript&file=Dialog_Tag_A.js"></script>