using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace skitbot1
{
    public partial class registering : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);
            var rolestore = new RoleStore<IdentityRole>(identityDbContext);
            var rolemanager = new RoleManager<IdentityRole>(rolestore);
            var user = new IdentityUser() { UserName = TextBox5.Text, Email = TextBox6.Text };
            IdentityResult result = manager.Create(user, TextBox7.Text);
            if (result.Succeeded)
            {
                IdentityRole endUserRole = new IdentityRole("endUser");
                rolemanager.Create(endUserRole);
                Server.Transfer("login.aspx", true);
            }
            else
            {
                Literal1.Text = "An error has occurred:" + result.Errors.FirstOrDefault();

            }
            
        }
    }
}