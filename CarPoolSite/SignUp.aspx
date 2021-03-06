﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>Register</title>
    <link rel="stylesheet" href="css/loginform.css">
</head>
<body onload="document.getElementById('id01').style.display='block'">


     <div id="id01" class="modal">
         
        <form class="modal-content animate" runat="server">
            <div class="imgcontainer">
                <span onclick="location.href = 'Default.aspx'" class="close" title="Return">&times;</span>
                <h1> Profile Image </h1>
                <div>
                     
            </div>
               
            <label><b>Upload Image</b></label>
          
                <input type="file" name="filetag" id="filetag" accept="image/x-png,image/jpeg" runat="server"/>
                
                <asp:Image runat="server" ID="preview" src ="" style="border-radius:50%;" height="200" width="200" />
            
            
            <hr />

                <label><b>Course: </b></label>
                <select class="login" name="course">
                    <option value="Computer Science">Computer Science</option>
                    <option value="Maths">Maths</option>
                    <option value="English">English</option>
                </select> <br />
           
          <label><b>Would you like to register as a driver?</b></label>
           <input type="checkbox" name="isDriver" id="isDriver" />
               
                <br />
            <asp:Button ID="btnUpload" runat="server" Text="Next" OnClick="Upload" />
                
            </div>

            
        </form>
         
    </div>
   
    
     <script>

       

          var fileTag = document.getElementById("filetag"),
            preview = document.getElementById("preview");
    
        fileTag.addEventListener("change", function() {
          changeImage(this);
        });

        function changeImage(input) {
          var reader;

          if (input.files && input.files[0]) {
            reader = new FileReader();

            reader.onload = function(e) {
              preview.setAttribute('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
          }
        }

         

    </script>

</body>
</html>
