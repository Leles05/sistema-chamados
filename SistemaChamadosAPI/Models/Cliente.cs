using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SistemaChamadosAPI.Models
{
    [Table("cliente")]
    public class Cliente
    {
        [Key]
        [Column("id_cliente")] // 🔥 ESSENCIAL
        public int IdCliente { get; set; }

        [Column("nome")]
        public string Nome { get; set; }

        [Column("email")]
        public string Email { get; set; }

        [Column("senha")]
        public string Senha { get; set; }

        [Column("telefone")]
        public string Telefone { get; set; }
    }
}