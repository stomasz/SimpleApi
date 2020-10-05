﻿using System.Collections.Generic;

namespace SimpleApi.Models
{
    public class Author
    {
        public int AuthorId { get; set; }
        public string AuthorFirstName { get; set; }
        public string AuthorLastName { get; set; }
        public string AuthorDescription { get; set; }
        public string AuthorAvatar { get; set; }
        public List<Book> Books { get; set; }
    }
}