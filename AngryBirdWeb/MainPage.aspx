<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="AngryBirdWeb.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AngryBird App</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
            <hr />
            <h3>Azure Cognitive Service</h3>
    <p>Check my post on Hackster </p>
    https://www.hackster.io/achindra/azure-cognitive-service-emotion-api-dd29f8
            <br />
            <hr />
            <h3>Achindra Bhatnagar</h3>
    <address>
        Twitter: @achindra<br />
        Projects: <a href="www.hackster.io/achindra">Hackster</a><br />        
    </address>

    <address>
        <strong>Email:</strong>   <a href="mailto:achindrabhatnagar@gmail.com">achindrabhatnagar@gmail.com</a><br />
        <strong>Site:</strong> <a href="http://about.me/achindra">about.me/achindra</a>
    </address>
        </div>
    </form>
</body>
</html>
