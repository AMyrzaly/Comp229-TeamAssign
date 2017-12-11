using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Team_Assign
{
    public partial class main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CallTitlePage();
        }
        private void CallTitlePage()
        {
            switch (Page.Title)
            {
                case "HomePage":
                    Page.Title = string.Format("Home Page");
                    break;
            }
        }
            }
}