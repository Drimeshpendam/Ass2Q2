using System;
using System.Web.UI;

public partial class Store : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Clear any messages when the page loads
        lblMessage.Visible = false;
    }

    // Button click handler to check if the boiling point is valid
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // First, validate the input using CompareValidator
        if (Page.IsValid) // Page.IsValid ensures all validators pass
        {
            // If the input is valid, show success message
            lblMessage.Text = "The boiling point you entered is valid!";
            lblMessage.CssClass = "success-message";
        }
        else
        {
            // If the input is invalid, show error message
            lblMessage.Text = "Please enter a valid boiling point (≥ 100°C).";
            lblMessage.CssClass = "error-message";
        }

        // Display the message
        lblMessage.Visible = true;
    }
}
