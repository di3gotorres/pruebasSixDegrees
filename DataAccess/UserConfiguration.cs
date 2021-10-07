using Entities;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccess
{
    public class UserConfiguration
    {
        public UserConfiguration(EntityTypeBuilder<Usuario> entityTypeBuilder)
        {
            entityTypeBuilder.HasKey(x => x.UsuId);
        }
    }
}
