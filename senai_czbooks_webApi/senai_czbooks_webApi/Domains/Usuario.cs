using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace senai_czbooks_webApi.Domains
{
    public partial class Usuario
    {
        public Usuario()
        {
            Autores = new HashSet<Autores>();
            Clientes = new HashSet<Clientes>();
        }

        public int IdUsuario { get; set; }
        public int? IdTiposUsuario { get; set; }
        [Required(ErrorMessage = "É obrigatório definir uma senha!")]
        public string Senha { get; set; }
        [Required(ErrorMessage = "É obrigatório definir um email!")]
        public string Email { get; set; }

        public virtual TiposUsuario IdTiposUsuarioNavigation { get; set; }
        public virtual ICollection<Autores> MAutores { get; set; }
        public virtual ICollection<Clientes> Clientes { get; set; }
    }
}
