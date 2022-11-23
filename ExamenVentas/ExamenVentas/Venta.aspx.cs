using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection;

namespace ExamenVentas
{
    public partial class Venta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Bagregar_Click(object sender, EventArgs e)
        {            
            int cajero = int.Parse((DropDownList1.SelectedValue).ToString());
            int Maquina = int.Parse((DropDownList2.SelectedValue).ToString());
            int Producto = int.Parse((DropDownList3.SelectedValue).ToString());
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["VentasConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("Insert into Ventas(Cajero, Maquina, Producto)values("+cajero+","+Maquina+","+Producto+")", conexion);
            comando.ExecuteNonQuery();
            conexion.Close();
            LlenarGrid();            
        }
        protected void LlenarGrid()            
        {
            int i = 1;
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["VentasConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select N_Fac from Ventas", conexion);
            SqlDataReader registro = comando.ExecuteReader();

            while (registro.Read())
            {
                i++;
            }
            


            conexion.Close();





            string constr = ConfigurationManager.ConnectionStrings["VentasConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Select  v.N_Fac, v.Fecha, c.Nombre, c.Apellido, p.Nombre, p.Precio, mr.Piso " +
                    " from Ventas v inner join Cajeros c on v.Cajero = c.Codigo_Cajero " +
                    "inner join Productos p on v.Producto = p.Codigo_Producto " +
                    "inner join Maquina_Registradora mr on v.Maquina = mr.Codigo_Maquina where N_Fac =" + i))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }
    }
    
}