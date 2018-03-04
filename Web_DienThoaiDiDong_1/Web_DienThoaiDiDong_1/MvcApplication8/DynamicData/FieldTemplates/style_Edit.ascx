<%@ Control Language="C#" CodeBehind="style_Edit.ascx.cs" Inherits="MvcApplication8.DynamicData.FieldTemplates.style_EditField" %>

<asp:TextBox ID="TextBox1" runat="server" Text='<%# FieldValueEditString %>'></asp:TextBox>

<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="TextBox1" Display="Dynamic" Enabled="false" />
<asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1" ControlToValidate="TextBox1" Display="Dynamic" Enabled="false" />
<asp:DynamicValidator runat="server" ID="DynamicValidator1" ControlToValidate="TextBox1" Display="Dynamic" />
