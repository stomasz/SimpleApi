using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SimpleApi.Models
{
    public class BookPublisher
    {
        public int BookPublisherId { get; set; }
        public string BookPublisherName { get; set; }
        public List<Book> Books { get; set; }
    }
}
