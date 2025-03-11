<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Clockify.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <style>
        body { 
            color: white;
            background-image:url('https://th.bing.com/th/id/R.170f3106830eb8fc6bcc4952fb2620f9?rik=Ad2dZm7iAVt7Ig&riu=http%3a%2f%2fwallpaperswide.com%2fdownload%2fold_clock-wallpaper-1024x768.jpg&ehk=9TYILrzRnCDm2Y6gOXofkf%2b1Qa%2bupwPF9aeTVoYtDJo%3d&risl=&pid=ImgRaw&r=0');
            background-repeat:no-repeat;
            background-size:cover;
        }
        .btnLogin {
            background-color: green;
            color: white;
            font-weight: bold;
        }
        h2 {
            font-size: 28px; 
            font-family: Algerian;
            border:solid darkgoldenrod;
        }
        h3 {
            background-color: black;
            font-size: 24px; 
            font-family: Algerian; 
            color: darkgoldenrod
        }
        #lblNumOfWeeksInSemester {
            font-size: large;
        }
        #lblSemesterDate {
            font-size: large;
        }
        #lblModuleCode {
            font-size: large;
        }
        #lblModuleName {
            font-size: large;
        }
        #lblNumOfCredits {
            font-size: large;
        }
        #lblClassHrsPerWeek {
            font-size: large;
        }
        #lblMCode {
            font-size: large;
        }
        #lblHrsSpent {
            font-size: large;
        }
        #lblCurrentDate {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="Home" runat="server">
            <h1 style="font-size: 32px; font-family: Algerian; font-weight: bold; color: darkgoldenrod" >Clockify</h1>
            <h2 style="text-align: center">Welcome</h2>
            <h3>Semester Information</h3>
            <div>
                <label id="lblNumOfWeeksInSemester">Number Of weeks in Semester:</label>
                <asp:TextBox runat="server" ID="txtNumOfWeeksInSem" Height="16px" style="margin-left: 69px" Width="172px"></asp:TextBox>
            </div>
            <br />
            <div>
                <label id="lblSemesterDate">Semester StartDate for the 1st Week:</label>
                <asp:TextBox runat="server" ID="txtSemesterStartDate" placeholder="e.g. 11/02/2023" style="margin-left: 26px" Width="171px"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Button ID="btnSubmitS" CssClass="btnLogin" runat="server" text="Submit" style="margin-left: 396px" Width="82px" OnClick="btnSubmitS_Click"/>
            </div>
            <br />
            <h3>Semester Module Information</h3>
            <div>
                <label id="lblModuleCode">Module Code:</label>
                <asp:TextBox runat="server" ID="txtModuleCode" style="margin-left: 120px" Width="166px"></asp:TextBox>
            </div>
            <br />
            <div>
                <label id="lblModuleName">Module Name:</label>
                <asp:TextBox runat="server" ID="txtModuleName" style="margin-left: 115px" Width="166px"></asp:TextBox>
            </div>
            <br />
            <div>
                <label id="lblNumOfCredits">Number of Credits:</label>
                <asp:TextBox runat="server" ID="txtNumOfCredits" style="margin-left: 82px" Width="167px"></asp:TextBox>
            </div>
            <br />
            <div>
                <label id="lblClassHrsPerWeek">Class Hours Per Week:</label>
                <asp:TextBox runat="server" ID="txtClassHrsPerWeek" style="margin-left: 53px" Width="166px"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Button ID="btnSubmitM" CssClass="btnLogin" runat="server" text="Submit" style="margin-left: 318px" Width="82px" OnClick="btnSubmitM_Click"/>
            </div>
            <br />
            <h3>Find Out How Many Hours of Self-study Remain for a Module</h3>
            <div>
                <label id="lblMCode">Module Code:</label>
                <asp:TextBox runat="server" ID="txtMCode" style="margin-left: 231px" Width="163px"></asp:TextBox>
            </div>
            <br />
            <div>
                <label id="lblHrsSpent">Number of Hours Spent working on Module:</label>
                <asp:TextBox runat="server" ID="txtHrsSpent" style="margin-left: 9px" Width="164px"></asp:TextBox>
            </div>
            <br />
            <div>
                <label id="lblCurrentDate">Current Date:</label>
                <asp:TextBox runat="server" ID="txtCurrentDate" placeholder="e.g. 11/02/2023" style="margin-left: 235px" Width="163px"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Button ID="btnSubmit" CssClass="btnLogin" runat="server" text="Submit" style="margin-left: 318px" Width="82px" OnClick="btnSubmit_Click1"/>
            </div>
            <br />
    </form>
</body>
</html>
