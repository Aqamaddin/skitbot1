using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace skitbot1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var identityDbcontext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbcontext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(TextBox8.Text, TextBox9.Text);
            if (user != null)
            {
                LogUserIn(userManager, user);
                Server.Transfer("login.aspx", true);
            }
            else
            {
                Literal1.Text = "Invalid Username or Password.";
            }
        }

        private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new Microsoft.Owin.Security.AuthenticationProperties() { }, userIdentity);
        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        { }
    }
}