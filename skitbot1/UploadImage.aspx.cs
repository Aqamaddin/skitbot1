using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace skitbot1
{
    public partial class UploadImage : System.Web.UI.Page
    {
        private string saveLocation;

        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];
            string filename = productId + ".jpg";

            CurrentImage.ImageUrl = "~/Image/" + filename;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];
            string filename = productId + ".jpg";
            string saveLocation = Server.MapPath("~/Image/" + filename);

            FileUpload1.SaveAs(saveLocation);
        }
    }
}