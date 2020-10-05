using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SimpleApi.Dtos;
using SimpleApi.Services;

namespace SimpleApi.Controllers
{
    [Authorize]
    [ApiController]
    [Route("[controller]")]
    public class BookController : ControllerBase
    {
        private readonly IBookService _bookService;

        public BookController(IBookService bookService)
        {
            _bookService = bookService;
        }
        [HttpGet("GetAll")]        
        public async Task<IActionResult> GetAll()
        {
            return Ok(await _bookService.GetAllBooks());
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetSingle(int id)
        {
            return Ok(await _bookService.GetBookById(id));
        }
        
        [HttpPost]
        public async Task<IActionResult> AddBook(AddBookDto newBook)
        {
            return Ok(await _bookService.AddBook(newBook));
        }

        [HttpPut]
        public async Task<IActionResult> UpdateBook(UpdateBookDto newBook)
        {
            return Ok(await _bookService.UpdateBook(newBook));
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteBook(int id)
        {
            return Ok(await _bookService.DeleteBook(id));
        }
    }
}
