﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SimpleApi.Models
{
    public class Genre
    {
        public int GenreId { get; set; }
        public string Name { get; set; }
        public List<Book> Books { get; set; }

    }
}
