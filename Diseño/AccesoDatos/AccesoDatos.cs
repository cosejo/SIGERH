using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AccesoDatos
{
    public static class AccesoDatos
    {
        #region atributos
        //string _Connection = ConfigurationManager.ConnectionStrings["Pruebas2ConnectionString"].ConnectionString;
        //string _Connection = "Data Source=10.0.0.5,1433;Initial Catalog=Proyecto;Integrated Security=True";
        //string _Connection = "Data Source=CARLOS-PC; Network Library=DBMSSOCN; Initial Catalog=SIGERH;User ID=proyecto;Password=Proyecto123;Integrated Security=True";
        //string _Connection = "Data Source=10.0.0.5,1433; Network Library=DBMSSOCN; Initial Catalog=Proyecto;User ID=proyecto;Password=Proyecto123;Integrated Security=True";
        //string _Connection = "Data Source=CARLOS-PC;Initial Catalog=Pruebas;Integrated Security=True";
        //Data Source=190.190.200.100,1433;Network Library=DBMSSOCN;Initial Catalog=myDataBase;User ID=myUsername;Password=myPassword;
        //ConnectionString="Data Source=192.100.10.98\sqlexpress;Initial Catalog=TeresaDeCalcuta1;Integrated Security=SSPI;"
        //string _Connection = "Data Source=WIN-6ENZ8ZHHGWQ/;Trusted_Connection=True; Initial Catalog=Proyecto;User ID=Proyecto;Password=Proyecto123;Integrated Security=true";
        //string _Connection = "Data Source=10.0.0.4,1433; Network Library=DBMSSOCN; Initial Catalog=Proyecto;User ID=sa;Password=sa;";
        //string _Connection = "";
        public const string _Connection = "Data Source=CARLOS-PC; Network Library=DBMSSOCN; Initial Catalog=SIGERH;User ID=proyecto;Password=Proyecto123;Integrated Security=True";
        //protected const string _Connection = "Data Source=192.168.0.100; Network Library=DBMSSOCN; Initial Catalog=SIGERH;User ID=Proyecto;Password=Proyecto123;Integrated Security=false";
        #endregion
    }
}
