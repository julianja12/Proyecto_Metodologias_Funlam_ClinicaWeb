﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Funlam_2015_02_Clinica_Web
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        protected void InsertButton_Click(object sender, EventArgs e)
        {
            bool n = true;

            if (n == true)
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Se Registro el Usuario Correctamente')</script>");
            }
        }

 

        protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {

            try {

                if (e.Exception != null)
                {

                    
                        e.ExceptionHandled = true;

                        Response.Write("<script LANGUAGE='JavaScript' >alert('Error: Usuario Duplicado')</script>");
                }
            }

            catch
            {

              
            }
        }

        
                    

    }
}