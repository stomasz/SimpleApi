using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using SimpleApi.Models;

namespace SimpleApi.Dtos
{
    public class GetAuthorDto
    {
        public string AuthorFirstName { get; set; } 
        public string AuthorLastName { get; set; }
        public string AuthorDescription { get; set; }
        public string AuthorAvatar { get; set; }
    }
}
