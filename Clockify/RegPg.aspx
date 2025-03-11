<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegPg.aspx.cs" Inherits="Clockify.RegPg" %>

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
         .btnRegister {
             background-color: deepskyblue;
             color: white;
             font-weight: bold;
            margin-left: 272px;
        }

         p {
             font-size: x-large;
            font-weight: 700;
        }
        #lblNewUsername {
            font-size: x-large;
        }
        #lblNewPassword {
            font-size: x-large;
        }
        #lblNPassword {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Clockify</h1>
            <h2>Welcome to Clockify, your Time Management Tool</h2>
            <p>Be a part of our network of students</p>
            <div>
                <label id="lblNewUsername">Username:</label>
                <asp:TextBox runat="server" ID="txtNewUserName" Height="16px" style="margin-left: 130px" Width="147px"></asp:TextBox>
            </div>
            <br />
            <div>
                <label id="lblNewPassword">Password:</label>
                <asp:TextBox runat="server" ID="txtNewPassword" style="margin-left: 134px" Width="149px"></asp:TextBox>
            </div>
            <br />
            <div>
                <label id="lblNPassword">Confirm Password:</label>
                <asp:TextBox runat="server" ID="txtConfirmPassword" style="margin-left: 47px" Width="150px"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Button ID="btnRegister" CssClass="btnRegister" runat="server" Width="119px" text="Register" OnClick="btnRegister_Click"/>
            </div>
            <br />
        </div>
    </form>
</body>
</html>
