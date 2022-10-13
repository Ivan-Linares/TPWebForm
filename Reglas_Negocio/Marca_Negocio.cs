using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio_Clases;

namespace Reglas_Negocio
{
    public class Marca_Negocio
    {

        public List<Marca> ListarMarcas()
        {
            List<Marca> list = new List<Marca>();
            Acceso_A_Db DataBase = new Acceso_A_Db();

            try
            {
                DataBase.setearConsulta("select  Id, Descripcion from MARCAS"); //consulta SELECT sql
                DataBase.ejecutarLectura();

                while (DataBase.Lector.Read())
                {
                    Marca Obj = new Marca();

                    Obj.MarcaId = DataBase.Lector.GetInt32(0);
                    Obj.Descripcion = DataBase.Lector.GetString(1);

                    list.Add(Obj);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                DataBase.cerrarConexion();
            }

            return list;
        }
    }
}
