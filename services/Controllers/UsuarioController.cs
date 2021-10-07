using Business;
using Entities;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace services.Controllers
{
    [ApiController]
    [Route("api/usuario")]
    public class UsuarioController : ControllerBase
    {
        private readonly IUsuarioBusiness usuarioBusiness;
        
        public UsuarioController(IUsuarioBusiness usuario)
        {
            usuarioBusiness = usuario;
        }

        [HttpGet]
        public ActionResult Get()
        {
           IList<UsuarioDto> usuarios = usuarioBusiness.GetUser();

            if (usuarios != null)
            {
                if (usuarios.Count > 0)
                    return Ok(usuarios);
                return NotFound();
            }
            return BadRequest();
        }
    }

    
}
