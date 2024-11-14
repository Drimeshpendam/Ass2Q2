<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Store.aspx.cs" Inherits="Store" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Boiling Point Validator</title>
    <style>
        .form-container {
            width: 40%;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
        }

        .form-container input {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-container button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .form-container button:hover {
            background-color: #45a049;
        }

        .error-message {
            color: red;
        }

        .success-message {
            color: green;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Enter the Boiling Point of Water</h2>
            
            <!-- Boiling Point Input -->
            <label for="txtBoilingPoint">Boiling Point (°C):</label>
            <asp:TextBox ID="txtBoilingPoint" runat="server" CssClass="input-field" />

            <!-- CompareValidator to check if the boiling point is >= 100 -->
            <asp:CompareValidator
                ID="cvBoilingPoint"
                runat="server"
                ControlToValidate="txtBoilingPoint"
                Operator="GreaterThanEqual"
                ValueToCompare="100"
                Type="Integer"
                ForeColor="Red"
                ErrorMessage="The boiling point of water must be at least 100°C." />

            <!-- Submit Button -->
            <asp:Button ID="btnSubmit" runat="server" Text="Validate Boiling Point" OnClick="btnSubmit_Click" />

            <!-- Label to display success or error message -->
            <asp:Label ID="lblMessage" runat="server" CssClass="error-message" Visible="false" />
        </div>
    </form>
</body>
</html>
