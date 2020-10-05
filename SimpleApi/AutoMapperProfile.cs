using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using SimpleApi.Dtos;
using SimpleApi.Models;

namespace SimpleApi
{
    public class AutoMapperProfile : Profile
    {
        public AutoMapperProfile()
        {
            CreateMap<Book, GetBookDto>();
            CreateMap<Author, GetAuthorDto>();
            CreateMap<AddBookDto, Book>();
            CreateMap<Genre, GetGenreDto>();
            CreateMap<BookPublisher, GetBookPublisherDto>();
        }
    }
}
