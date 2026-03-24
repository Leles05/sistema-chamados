using Microsoft.AspNetCore.Mvc;
using SistemaChamadosAPI.Data;
using SistemaChamadosAPI.Models;

namespace SistemaChamadosAPI.Controllers
{
    [ApiController]
    [Route("clientes")]
    public class ClienteController : ControllerBase
    {
        private readonly AppDbContext _context;

        public ClienteController(AppDbContext context)
        {
            _context = context;
        }

        // 🔹 GET - teste
        [HttpGet]
        public IActionResult ListarClientes()
        {
            var clientes = _context.Clientes.ToList();
            return Ok(clientes);
        }

        // 🔹 POST - criar cliente
        [HttpPost]
        public IActionResult CriarCliente(Cliente cliente)
        {
            _context.Clientes.Add(cliente);
            _context.SaveChanges();

            return Ok(cliente);
        }
    }
}