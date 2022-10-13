using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace Reglas_Negocio
{
    public class Acceso_A_Db
    {
        private SqlConnection Conn;
        private SqlCommand Cmd;
        private SqlDataReader DataReader;
        public Acceso_A_Db()
        {
            Conn = new SqlConnection("server=.\\SQLEXPRESS; database=CATALOGO_DB; integrated security=true");
            Cmd = new SqlCommand();
        }

        public void setearConsulta(string NewConsulta)
        {
            Cmd.CommandType = System.Data.CommandType.Text;
            Cmd.CommandText = NewConsulta;
        }

        public SqlDataReader Lector
        {
            get { return DataReader; }
        }

        public void ejecutarLectura()
        {
            Cmd.Connection = Conn;
            try
            {
                Conn.Open();
                DataReader = Cmd.ExecuteReader();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void ejecutarAccion()
        {
            Cmd.Connection = Conn;
            try
            {
                Conn.Open();
                Cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void setearParametro(string nombre, object valor)
        {
            Cmd.Parameters.AddWithValue(nombre, valor);
        }

        public void cerrarConexion()
        {
            if (DataReader != null)
                DataReader.Close();
            Conn.Close();
        }
    }
}
