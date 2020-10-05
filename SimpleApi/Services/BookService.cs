using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using AutoMapper;
using Microsoft.AspNetCore.Http;
using Microsoft.EntityFrameworkCore;
using SimpleApi.Data;
using SimpleApi.Dtos;
using SimpleApi.Models;

namespace SimpleApi.Services
{
    public class BookService : IBookService
    {
        private readonly DataContext _context;
        private readonly IMapper _mapper;
        private readonly IHttpContextAccessor _httpContextAccessor;

        public BookService(DataContext context, IMapper mapper, IHttpContextAccessor _httpContextAccessor)
        {
            _context = context;
            _mapper = mapper;
            this._httpContextAccessor = _httpContextAccessor;
        }

        private int GetUserId() =>
            int.Parse(_httpContextAccessor.HttpContext.User.FindFirstValue(ClaimTypes.NameIdentifier));

        public async Task<ServiceResponse<List<GetBookDto>>> GetAllBooks()
        {
            ServiceResponse<List<GetBookDto>> response = new ServiceResponse<List<GetBookDto>>();

            List<Book> dbBooks = await _context.Books.Where(b => b.User.Id == GetUserId()).Include(b => b.BookPublisher)
                .Include(b => b.Genre)
                .Include(b => b.Authors)
                .ToListAsync();

            List<Book> dbBooks2 = await _context.Books.ToListAsync();

            response.Data = (dbBooks.Select(b => _mapper.Map<GetBookDto>(b)).ToList());

            return response;
        }
        

        public async Task<ServiceResponse<GetBookDto>> GetBookById(int id)
        {
            ServiceResponse<GetBookDto> serviceResponse = new ServiceResponse<GetBookDto>();

            Book dbBook = await _context.Books.Include(b => b.BookPublisher)
                .Include(b => b.Genre)
                .Include(b => b.Authors).FirstOrDefaultAsync(b => b.Id == id && b.User.Id == GetUserId());

            serviceResponse.Data = _mapper.Map<GetBookDto>(dbBook);

            return serviceResponse;
        }

        public async Task<ServiceResponse<List<GetBookDto>>> AddBook(AddBookDto newBook)
        {
            ServiceResponse<List<GetBookDto>> serviceResponse = new ServiceResponse<List<GetBookDto>>();

            Book book = _mapper.Map<Book>(newBook);
        
            book.Authors = await _context.Authors.FirstOrDefaultAsync(a => a.AuthorId == newBook.AuthorId);
            book.BookPublisher =
                await _context.BookPublishers.FirstOrDefaultAsync(bp => bp.BookPublisherId == newBook.BookPublisherId);
            book.Genre = await _context.Genres.FirstOrDefaultAsync(g => book.GenreId == newBook.GenreId);
            book.User = await _context.Users.FirstOrDefaultAsync(u => u.Id == GetUserId());

            await _context.AddAsync(book);
            await _context.SaveChangesAsync();

            serviceResponse.Data = (_context.Books.Select(b => _mapper.Map<GetBookDto>(b))).ToList();
            return serviceResponse;
        }

        public async Task<ServiceResponse<GetBookDto>> UpdateBook(UpdateBookDto updateBook)
        {
           ServiceResponse<GetBookDto> serviceResponse = new ServiceResponse<GetBookDto>();
            
            try
            {
                var book1 = await _context.Books.FirstOrDefaultAsync(b => b.Id == updateBook.Id);

                Book book = await _context.Books.Include(b => b.BookPublisher)
                    .Include(b => b.Genre)
                    .Include(b => b.Authors)
                    .Include(b=> b.User)
                    .FirstOrDefaultAsync(b => b.Id == updateBook.Id && b.User.Id == GetUserId());
                if (book.User.Id == GetUserId())
                {
                   // book.Id = updateBook.Id;
                    book.BookTitle = updateBook.BookTitle;
                    book.BookDescription = updateBook.BookDescription;
                    book.CoverImage = updateBook.CoverImage;
                    book.Isbn = updateBook.Isbn;
                    book.Rating = updateBook.Rating;
                    book.BookPublisherId = updateBook.BookPublisherId;
                    book.GenreId = updateBook.GenreId;
                    book.AuthorId = updateBook.AuthorId;


                    _context.Books.Update(book);
                    await _context.SaveChangesAsync();

                    serviceResponse.Data = _mapper.Map<GetBookDto>(book); 
                }
                else
                {
                    serviceResponse.Sucess = false;
                    serviceResponse.Message = "Book not found.";
                }

            }
            catch (Exception e)
            {
                serviceResponse.Sucess = false;
                serviceResponse.Message = e.Message;
            }

            return serviceResponse;
        }

        public async Task<ServiceResponse<List<GetBookDto>>> DeleteBook(int id)
        {
            ServiceResponse<List<GetBookDto>> serviceResponse = new ServiceResponse<List<GetBookDto>>();
            
            try
            {
                Book book = await _context.Books.FirstOrDefaultAsync(b => b.Id == id && b.User.Id == GetUserId());

                if (book != null)
                {
                    _context.Remove(book);
                    await _context.SaveChangesAsync();

                    var dbBooks = await _context.Books.Where(b => b.User.Id == GetUserId()).Include(b => b.BookPublisher)
                        .Include(b => b.Genre)
                        .Include(b => b.Authors)
                        .ToListAsync();
                    serviceResponse.Data = (dbBooks.Select(b => _mapper.Map<GetBookDto>(b)).ToList());

                }
                else
                {
                    serviceResponse.Sucess = false;
                    serviceResponse.Message = "Book not found";
                }
            }
            catch (Exception e)
            {
                serviceResponse.Sucess = false;
                serviceResponse.Message = e.Message;
            }

            return serviceResponse;
        }

    }
}
