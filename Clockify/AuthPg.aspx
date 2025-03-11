<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AuthPg.aspx.cs" Inherits="Clockify.AuthPg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
         body { 
             color: white;
             background-image:url('https://th.bing.com/th/id/R.170f3106830eb8fc6bcc4952fb2620f9?rik=Ad2dZm7iAVt7Ig&riu=http%3a%2f%2fwallpaperswide.com%2fdownload%2fold_clock-wallpaper-1024x768.jpg&ehk=9TYILrzRnCDm2Y6gOXofkf%2b1Qa%2bupwPF9aeTVoYtDJo%3d&risl=&pid=ImgRaw&r=0');
             background-repeat:no-repeat;
             background-size:cover;
             text-align: center;
         }

         h1 {
             font-size: 32px; 
             font-family: Algerian; 
             font-weight: bold; 
             color: darkgoldenrod
         }

         h2 {
             font-size: 28px; 
             font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
             border:solid darkgoldenrod;
         }
         h3 {
             background-color: black;
             font-size: 24px; 
             font-family: Algerian; 
             color: darkgoldenrod
         }
         #lblUsername {
             font-size: x-large;
         }
         #lblPassword {
             font-size: x-large;
         }
         .btnLogin {
             background-color: green;
             color: white;
             font-weight: bold;
         }

         p {
             font-size: large;
             
         }
        
         .auto-style1 {
             font-size: x-large;
         }
         .auto-style2 {
             font-size: large;
         }
        
     </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Clockify</h1>
            <h2>Welcome to Clockify, your Time Management Tool</h2>
            <p class="auto-style1"><strong>Already a member? Login</strong></p>
            <div>
                <label id="lblUsername">Username:</label>
                <asp:TextBox runat="server" ID="txtUserName" Height="16px" style="font-size: large; margin-left: 47px" Width="173px"></asp:TextBox>
            </div>
            <br />
            <div>
                <label id="lblPassword">Password:</label>
                <asp:TextBox runat="server" ID="txtPassword" style="margin-left: 51px" Width="171px"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Button ID="btnLogin" CssClass="btnLogin" runat="server" text="Login" style="margin-left: 249px" Width="82px" OnClick="btnLogin_Click"/>
            </div>
            <br />
            <div>
                <span class="auto-style2">Not a member? Join our network of students </span> <a href="RegPg.aspx"><span class="auto-style2">Register</span></a>
            </div>
            <br />
        </div>
    </form>
</body>
</html>
