using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class thu_vien_chi_tiet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            var odsPhotoAlbumCategory = new TLLib.PhotoAlbumCategory();
            var dv = odsPhotoAlbumCategory.PhotoAlbumCategorySelectOne(Request.QueryString["lib"]).DefaultView;
            lblName.Text = dv[0]["PhotoAlbumCategoryName"].ToString();
        }
    }
}