<%@ Page Title="AngryBird Web App" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AngryBirdWeb._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Angry Bird</h1>
        <p class="lead">
            An app powered by Azure Cognitive Services, uses Emptions API to 
            find different emotions on a face.
        </p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Let&#39;s Try!</h2>
            <p>
                You can take a selfie and upload it here. We will send the image to Azure 
                Cognitive Services and find emotions in the face. The average emotion will 
                reflect in the color of Angry Bird!
            </p>
            <p>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Button ID="Submit" Text="Upload" runat="server" OnClick="Submit_Click" /><br />
                <asp:Label ID="Label1" runat="server" Text="" Font-Bold="true" />
            </p>
        </div>
        <div class="col-md-4">
            <p>
                &nbsp;
            </p>
        </div>
        <div class="col-md-4">
            <h2>&nbsp;</h2>
        </div>
    </div>

</asp:Content>
