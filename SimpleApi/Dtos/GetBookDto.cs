using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using SimpleApi.Models;

namespace SimpleApi.Dtos
{
    public class GetBookDto
    {
        public int Id { get; set; }
        public string BookTitle { get; set; }
        public string CoverImage { get; set; }
        public string Isbn { get; set; }
        public double Rating { get; set; }
        public string BookDescription { get; set; }
        public GetBookPublisherDto BookPublisher { get; set; }
        public GetGenreDto Genre { get; set; }
        public GetAuthorDto Authors { get; set; }
    }
}
