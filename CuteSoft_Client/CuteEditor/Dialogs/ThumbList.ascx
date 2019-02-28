<%@ Control Language="c#" Inherits="CuteEditor.Dialogs.ThumbList" %>

<ASP:DataList id="MyList" RepeatDirection="Horizontal" width="98%" HorizontalAlign="Center" height="300" RepeatColumns="4" CellSpacing="0" runat="server" EnableViewState="true" OnItemDataBound="Item_DataBound">
	
	<ItemStyle horizontalalign="Center"></ItemStyle>
    <FooterStyle horizontalalign="Center"></FooterStyle>
   
    <ItemTemplate>
			<img class="spring_image" onload="render_spring_image(this)" onclick="insert(this.getAttribute('Url'))" title="" 
				src="<%# ThumbUrl((String)(DataBinder.Eval(Container.DataItem,"Path"))) %>"  
				tooltip="<nobr><%# String_Name%>: <%# DataBinder.Eval(Container.DataItem, "Name")%></nobr><br /><nobr><%# String_Size%>: <%# ( Convert.ToInt32(DataBinder.Eval(Container.DataItem, "Length")) /1024).ToString("n0")%> KB</nobr><br /><nobr><%# String_Createddate%>: <%# DataBinder.Eval(Container.DataItem, "CreationTime") %></nobr><br /><nobr><%# String_Modifieddate%>: <%# DataBinder.Eval(Container.DataItem, "LastWriteTime")%></nobr>" 
				url="<%# DataBinder.Eval(Container.DataItem,"Url") %>"
			 />
	</ItemTemplate>
   
    <FooterTemplate>
		<%# NumImagesDisplayed()%> <asp:PlaceHolder id="plLinks" runat="server"></asp:PlaceHolder>
	</FooterTemplate>
</ASP:DataList>

<input id="hdnCurPage" type="hidden" runat="server" />
<input id="hdnPrevPath" type="hidden" runat="server" />