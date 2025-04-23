using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenFinal.CapaVista
{
    public partial class Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string nombreComun = txtNombreComun.Text.Trim();
            string descripcion = txtDescripcion.Text.Trim();
            string categoriaId = ddlCategoria.SelectedValue;
            string frecuenciaRiego = txtFrecuenciaRiego.Text.Trim();
            string clima = txtClima.Text.Trim();

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            using (SqlCommand cmd = new SqlCommand("SP_InsertPlanta", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@NombreComun", nombreComun);
                cmd.Parameters.AddWithValue("@Descripcion", string.IsNullOrEmpty(descripcion) ? (object)DBNull.Value : descripcion);
                cmd.Parameters.AddWithValue("@CategoriaId", categoriaId);
                cmd.Parameters.AddWithValue("@FrecuenciaRiego", string.IsNullOrEmpty(frecuenciaRiego) ? (object)DBNull.Value : frecuenciaRiego);
                cmd.Parameters.AddWithValue("@Clima", string.IsNullOrEmpty(clima) ? (object)DBNull.Value : clima);

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}