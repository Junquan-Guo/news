<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<style>
	.box{cursor:default;border:#9B95A6 1 solid;background:white;}
	#tag-list ul,ol{margin-top:5px;margin-bottom:5px;}
	#tag-list div{margin-top:2px;margin-bottom:2px;}
	#tag-list li{margin-top:0px;margin-bottom:0px;}
</style>
<table width="85%" align=center cellpadding="1" cellspacing="2" id="tag-list">
	<tr>
		<td class="box">
			<div id="box1" style="color:#555555;border:solid 2px #ffffff;padding:0px;"
				onclick="doClick1(this)" 
				onmouseover="doMouseOver(this)" 
				onmouseout="doMouseOut(this)">
				<ul style="list-style-type: none;">
					<li>
						<div><img src="../images/listbar.gif"></div> 
						<div><img src="../images/listbar.gif"></div> 
					</li>
					<li>
						<div><img src="../images/listbar.gif"></div> 
						<div><img src="../images/listbar.gif"></div> 
					</li>
					<li>
						<div><img src="../images/listbar.gif"></div> 
						<div><img src="../images/listbar.gif"></div> 
					</li>
				</ul>	
			</div>
		</td>
		<td>&nbsp;</td>
		<td class="box">
					<div id="box2" style="color:#555555;border:solid 2px #ffffff;"
						onclick="doClick1(this)" 
						onmouseover="doMouseOver(this)" 
						onmouseout="doMouseOut(this)">
						<ol type="1">
							<li>
								<div><img src="../images/listbar.gif"></div> 
								<div><img src="../images/listbar.gif"></div> 
							</li>
							<li>
								<div><img src="../images/listbar.gif"></div> 
								<div><img src="../images/listbar.gif"></div> 
							</li>
							<li>
								<div><img src="../images/listbar.gif"></div>
								<div><img src="../images/listbar.gif"></div> 
							</li>
						</ol>	
					</div>
		</td>
		<td>&nbsp;</td>
		<td class="box">
					<div id="box3" style="color:#555555;border:solid 2px #ffffff;"
						onclick="doClick1(this)" 
						onmouseover="doMouseOver(this)" 
						onmouseout="doMouseOut(this)">
						<ol type="I">
							<li>
								<div><img src="../images/listbar.gif"></div> 
								<div><img src="../images/listbar.gif"></div> 
							</li>
							<li>
								<div><img src="../images/listbar.gif"></div> 
								<div><img src="../images/listbar.gif"></div> 
							</li>
							<li>
								<div><img src="../images/listbar.gif"></div> 
								<div><img src="../images/listbar.gif"></div> 
							</li>
						</ol>	
					</div>
		</td>
	</tr>
	<tr>
		<td colspan="5" style="padding-top:5;height:4">
		</td>
	</tr>
	<tr>
	<td class="box">
				<div id="box4" style="color:#555555;border:solid 2px #ffffff;"
					onclick="doClick1(this)" 
					onmouseover="doMouseOver(this)" 
					onmouseout="doMouseOut(this)">
				<ol type="A">
					<li>
						<div><img src="../images/listbar.gif"></div> 
						<div><img src="../images/listbar.gif"></div> 
					</li>
					<li>
						<div><img src="../images/listbar.gif"></div> 
						<div><img src="../images/listbar.gif"></div> 
					</li>
					<li>
						<div><img src="../images/listbar.gif"></div> 
						<div><img src="../images/listbar.gif"></div> 
					</li>
				</ol>	
				</div>
	</td>
	<td>&nbsp;</td>
	<td class="box">
				<div id="box5" style="color:#555555;border:solid 2px #ffffff;"
					onclick="doClick1(this)" 
					onmouseover="doMouseOver(this)" 
					onmouseout="doMouseOut(this)">
					<ol type="a">
						<li>
							<div><img src="../images/listbar.gif"></div>
							<div><img src="../images/listbar.gif"></div> 
						</li>
						<li>
							<div><img src="../images/listbar.gif"></div> 
							<div><img src="../images/listbar.gif"></div> 
						</li>
						<li>
							<div><img src="../images/listbar.gif"></div> 
							<div><img src="../images/listbar.gif"></div> 
						</li>
					</ol>	
				</div>
	</td>
	<td>&nbsp;</td>
	<td class="box">
		<div id="box6" style="color:#555555;border:solid 2px #ffffff;"
			onclick="doClick1(this)" 
			onmouseover="doMouseOver(this)" 
			onmouseout="doMouseOut(this)">
		<ol type="i">
		<li>
			<div><img src="../images/listbar.gif"></div> 
			<div><img src="../images/listbar.gif"></div> 
		</li>
		<li>
			<div><img src="../images/listbar.gif"></div> 
			<div><img src="../images/listbar.gif"></div> 
		</li>
		<li>
			<div><img src="../images/listbar.gif"></div> 
			<div><img src="../images/listbar.gif"></div> 
		</li>
		</ol>	
		</div>
	</td>
	</tr>
	<tr>
	<td colspan="5" style="padding-top:5;height:4">
	</td>
	</tr>
	<tr>
	<td class="box" style="padding:1">
		<div id="box7" style="color:#555555;border:solid 2px #ffffff;"
			onclick="doClick1(this)" 
			onmouseover="doMouseOver(this)" 
			onmouseout="doMouseOut(this)">
		<ul type="disc">
		<li>
			<div><img src="../images/listbar.gif"></div> 
			<div><img src="../images/listbar.gif"></div> 
		</li>
		<li>
			<div><img src="../images/listbar.gif"></div> 
			<div><img src="../images/listbar.gif"></div> 
		</li>
		<li>
			<div><img src="../images/listbar.gif"></div> 
			<div><img src="../images/listbar.gif"></div> 
		</li>
		</ul>	
		</div>
	</td>
	<td>&nbsp;</td>
	<td class="box">
		<div id="box8" style="color:#555555;border:solid 2px #ffffff;"
			onclick="doClick1(this)" 
			onmouseover="doMouseOver(this)" 
			onmouseout="doMouseOut(this)">
		<ul type="circle">
		<li>
			<div><img src="../images/listbar.gif"></div> 
			<div><img src="../images/listbar.gif"></div> 
		</li>
		<li>
			<div><img src="../images/listbar.gif"></div> 
			<div><img src="../images/listbar.gif"></div> 
		</li>
		<li>
			<div><img src="../images/listbar.gif"></div> 
			<div><img src="../images/listbar.gif"></div> 
		</li>
		</ul>	
		</div>
	</td>
	<td>&nbsp;</td>
	<td class="box">
		<div id="box9" style="color:#555555;border:solid 2px #ffffff;"
			onclick="doClick1(this)" 
			onmouseover="doMouseOver(this)" 
			onmouseout="doMouseOut(this)">
		<ul type="square">
		<li>
			<div><img src="../images/listbar.gif"></div> 
			<div><img src="../images/listbar.gif"></div> 
		</li>
		<li>
			<div><img src="../images/listbar.gif"></div> 
			<div><img src="../images/listbar.gif"></div> 
		</li>
		<li>
			<div><img src="../images/listbar.gif"></div> 
			<div><img src="../images/listbar.gif"></div> 
		</li>
		</div>
	</td>
	</tr>
	<tr>
	<td nowrap colspan="5" style="padding-top:5">
		<span style="width:90">[[StartingNumber]]</span>: <input onkeypress="return CancelEventIfNotDigit()" id="inp_start" type="text" name="inp_start" value="1" size="3">
	</td>
	</tr>
	<tr>
	<td colspan="5">		
		<input type="checkbox" id="inp_checked" onclick="ToggleCustomBullet();" />[[CustomBullet]]
		<br />
		<div id="CustomBullet">
			[[Image]]:
			<input type="text" id="inp_src" style="width:200px" />&nbsp;&nbsp;
			<button id="btnbrowse"  class="formbutton">...</button>
		</div>
	</td>
	</tr>
	</table>
<script type="text/javascript" src="Load.ashx?type=dialogscript&file=Dialog_Tag_li.js"></script>
