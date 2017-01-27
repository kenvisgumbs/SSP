using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

using Microsoft.Owin.Security;

namespace SSBP
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //if user is signed in
                if (User.Identity.IsAuthenticated)
                {
                    LoginStatusText.Text = String.Format("Hello, {0}", User.Identity.GetUserName());
                    LoginStatusPlaceHolder.Visible = true;
                    SignOutPlaceHolder.Visible = true;
                }
                //if user is signed out
                else
                {
                    LoginFormPlaceHolder.Visible = true;
                }
            }
        }

        protected void SignInButton_Click(object sender, EventArgs e)
        {
            var userStore = new UserStore<IdentityUser>();
            var userManager = new UserManager<IdentityUser>(userStore);
            //search user
            var user = userManager.Find(UserNameInput.Text, PasswordInput.Text);
            
            //if user exists
            if(user != null)
            {
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                //sign in
                authenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = false }, userIdentity);
                Response.Redirect("~/Login.aspx");
            }
            //if user not exist
            else
            {
                LoginStatusText.Text = "Invalid username and.or password";
                LoginStatusPlaceHolder.Visible = true;
            }

        }

        protected void SignOutButton_Click(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();
            Response.Redirect("~/Login.aspx");
        }
    }
}