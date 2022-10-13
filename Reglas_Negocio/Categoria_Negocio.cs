using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio_Clases;

namespace Reglas_Negocio
{
    public class Categoria_Negocio
    {
        public List<Categoria> ListarCategorias()
        {
            List<Categoria> list = new List<Categoria>();
            Acceso_A_Db DataBase = new Acceso_A_Db();

            try
            {
                DataBase.setearConsulta("select Id, Descripcion from CATEGORIAS");
                DataBase.ejecutarLectura();

                while (DataBase.Lector.Read())
                {
                    Categoria Obj = new Categoria();

                    Obj.CategoriaId = DataBase.Lector.GetInt32(0);
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
