using DataAccess;
using System.Linq;
using Entities;
using System;
using System.Collections.Generic;

namespace Business
{
    public class UsuarioBusiness : IUsuarioBusiness
    {
        private readonly AppDbContext context;

        public UsuarioBusiness(AppDbContext context)
        {
            this.context = context;
        }

        public IList<UsuarioDto> GetUser()
        {
            if (context.Usuario != null && context.Usuario.Count<Usuario>() > 0)
            {
                IList<Entities.UsuarioDto> usuariosDto = new List<Entities.UsuarioDto>();

                foreach (Entities.Usuario user in context.Usuario)
                {
                    usuariosDto.Add(new UsuarioDto() { Id = user.UsuId, Nombre = user.Nombre + " " + user.Apellido });
                }
                return usuariosDto;
            }
            return null;
        }
    }
}
