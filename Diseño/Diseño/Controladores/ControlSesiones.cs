using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Diseño.Controladores
{
    public class ControlSesiones : System.Web.UI.Page
    {

        public String NombreUsuario
        {
            get { return (String) Session["NombreUsuario"]; }
            set { Session["NombreUsuario"] = value; }
        }

        public String Contrasena
        {
            get { return (String) Session["Contrasena"]; }
            set { Session["Contrasena"] = value; }
        }

        // When retrieving an object from session state, cast it as 
// the appropriate type.
//ArrayList stockPicks = (ArrayList)Session["StockPicks"];

// Write the modified stock picks list back to session state.
//Session["StockPicks"] = stockPicks;
    }
}