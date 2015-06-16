using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Objects;
using System.Data.Objects.DataClasses;

namespace Entidades
{
    public class ContactoModel
    {
        public static bool GuardarContacto(String comentatio, String email, String nombreCompleto)
        {
            if (String.IsNullOrEmpty(comentatio) || String.IsNullOrEmpty(email) || String.IsNullOrEmpty(nombreCompleto))
            {
                string message = String.Format("Error al guardar Comentario - Nombre Completo: {0} , Email: {1}, Comentario: {2}", nombreCompleto, email, comentatio);
                throw new Exception(message);
            }else {
                using (var torneosContext = new TorneosEntities()) {
                    var contacto = new Contacto();
                    contacto.Comentario = comentatio;
                    contacto.Email = email;
                    contacto.NombreCompleto = nombreCompleto;

                    torneosContext.Contacto.AddObject(contacto);
                    int agregado = torneosContext.SaveChanges();
                    return (agregado == 1);
                }
            }
        }
    }
}
