﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/loginform.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
    <div class="loginbuttons">
        <img src="images/carpoolicon.png" alt="logo" class="loginbuttons" />

        <button onclick="document.getElementById('id01').style.display='block'" class="loginbuttons">Login</button>

        <button onclick="document.getElementById('id02').style.display='block'" class="loginbuttons">Register</button>

    </div>

    <div id="id01" class="modal">

        <form class="modal-content animate" runat="server">
            <div class="imgcontainer">
                <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                <h1> Log In </h1>
            </div>

            <div class="container">
                <label class="login" for="uname"><b>Username</b></label>
                <input class="login" type="text" placeholder="Enter Username" name="uname" required>

                <label class="login" for="psw"><b>Password</b></label>
                <input class="login" type="password" placeholder="Enter Password" name="psw" required>

                 <asp:Button ID="btnLogin" runat="server" Text="Log In" OnClick="Login" />
                
            </div>

            <div class="container" style="background-color:#f1f1f1">
                <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
                <span class="psw">Forgot <a href="#">password?</a></span>
            </div>
        </form>
    </div>

    <div id="id02" class="modal">

        <form class="modal-content animate" action="SignUp.aspx" method="post">
            <div class="imgcontainer">
                <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
                <h1> Register </h1>
            </div>

            <div class="container">
                <label class="login" for="uname"><b>Username</b></label>
                <input class="login" type="text" placeholder="Enter Username" name="uname" required>

                <label class="login" for="psw"><b>Password</b></label>
                <input class="login" type="password" placeholder="Enter Password" name="psw" required>

                <label class="login" for="psw"><b>Confirm Password</b></label>
                <input class="login" type="password" placeholder="Enter Password" name="psw2" required>

                <label class="login"> Forename: </label>
                <input class="login" type="text" name="forename" placeholder="Enter Forename" required/>
                <label class="login"> Surname: </label>
                <input class="login" type="text" name="surname" placeholder="Enter Surname" required/>
                <label class="login">Gender: </label>
                <select class="login" name="gender">
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                    <option value="other">Other</option>
                </select> <br />
                <button type="submit">Next</button>

            </div>

           
        </form>
    </div>

    <script>
        // Get the modal
        var modal1 = document.getElementById('id01');


        var modal2 = document.getElementById('id02');

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function (event) {
            if (event.target == modal1) {
                modal1.style.display = "none";
            }
        }


        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function (event) {
            if (event.target == modal2) {
                modal2.style.display = "none";
            }
        }
    </script>


</body>
</html>