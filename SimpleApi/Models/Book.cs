using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SimpleApi.Models
{
    public class Book
    {
        public int Id { get; set; }
        public string BookTitle { get; set; }
        public string CoverImage { get; set; }
        public string Isbn { get; set; }
        public double Rating { get; set; }
        public string BookDescription { get; set; }
        public int AuthorId { get; set; }
        public Author Authors { get; set; }
        public int BookPublisherId { get; set; }
        public BookPublisher BookPublisher { get; set; }
        public int GenreId { get; set; }
        public Genre Genre { get; set; }
        public int UserId { get; set; }
        public User User { get; set; }

    }
}
