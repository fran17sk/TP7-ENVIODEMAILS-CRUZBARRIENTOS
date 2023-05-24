<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TP7_EnviadoMails_CRUZBARRIENTOSFRANCISCO.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            display: block;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #212529;
            background-clip: padding-box;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            border-radius: .375rem;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container form-mails">
        <h1>Casilla de Mails</h1>
        <div class="form-grup">
            <asp:Label ID="Label1" runat="server" Text="DE"></asp:Label>
            <asp:TextBox ID="mailemisor" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="El campo es obligatorio" ControlToValidate="mailemisor" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="Txt01" runat="server" ControlToValidate = "mailemisor" Display ="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Please enter valid email address.."></asp:RegularExpressionValidator> 

        </div>
        <div class="form-grup">
            <asp:Label ID="Label2" runat="server" Text="PARA"></asp:Label>
            <asp:TextBox ID="maildestinatario" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="El campo es obligatorio" ControlToValidate="maildestinatario" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate = "maildestinatario" Display ="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Please enter valid email address.."></asp:RegularExpressionValidator>
        </div>
        <div class="form-grup">
            <asp:Label ID="Label3" runat="server" Text="ASUNTO"></asp:Label>
            <asp:TextBox ID="Asunto" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="El campo es obligatorio" ControlToValidate="Asunto" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-grup">
            <asp:Label ID="Label4" runat="server" Text="MENSAJE"></asp:Label>
            <asp:TextBox ID="msj" CssClass="auto-style1 msj" runat="server" Height="95px" TextMode="MultiLine" Width="100%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="El campo es obligatorio" ControlToValidate="msj" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-grup">
            <asp:Button ID="btnMail" CssClass="btn" runat="server" Text="ENVIAR" OnClick="Button1_Click" />
        </div>
    </div>


</asp:Content>
