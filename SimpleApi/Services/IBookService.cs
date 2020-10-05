using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using SimpleApi.Dtos;
using SimpleApi.Models;

namespace SimpleApi.Services
{
    public interface IBookService
    {
        Task<ServiceResponse<List<GetBookDto>>> GetAllBooks();
        Task<ServiceResponse<GetBookDto>> GetBookById(int id);
        Task<ServiceResponse<List<GetBookDto>>> AddBook(AddBookDto newBook);
        Task<ServiceResponse<GetBookDto>> UpdateBook(UpdateBookDto updateBook);
        Task<ServiceResponse<List<GetBookDto>>> DeleteBook(int id);
    }
}
