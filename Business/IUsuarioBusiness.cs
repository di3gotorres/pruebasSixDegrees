using System;
using System.Collections.Generic;
using System.Text;
using Entities;

namespace Business
{
    public interface IUsuarioBusiness
    {
        IList<UsuarioDto> GetUser();
    }
}
