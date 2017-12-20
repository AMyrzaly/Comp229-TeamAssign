using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Team_Assign
{
    public partial class Index : System.Web.UI.Page
    {
        /// <summary>
        /// This is page load
        /// </summary>
        /// <param name="sender">Sending elements</param>
        /// <param name="e">Arguments</param>
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// Register button for new users
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnToRegistrationPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("registration.aspx");
        }
    }
}