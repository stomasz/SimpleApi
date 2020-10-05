using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using SimpleApi.Models;

namespace SimpleApi.Dtos
{
    public class UpdateBookDto
    {
        public int Id { get; set; }
        public string BookTitle { get; set; }
        public string CoverImage { get; set; }
        public string Isbn { get; set; }
        public double Rating { get; set; }
        public string BookDescription { get; set; }
        public int BookPublisherId { get; set; }
        public int GenreId { get; set; }
        public int AuthorId { get; set; }
    }
}
