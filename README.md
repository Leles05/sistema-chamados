# 🚀 Sistema de Chamados API

Sistema de chamados desenvolvido em **.NET**, com integração ao banco de dados **PostgreSQL**, permitindo o cadastro e gerenciamento de clientes.

---

## 📌 Descrição

Este projeto tem como objetivo simular um sistema de atendimento técnico, onde clientes podem ser cadastrados e futuramente abrir chamados para suporte.

---

## 🛠️ Tecnologias utilizadas

- .NET / ASP.NET Core
- Entity Framework Core
- PostgreSQL
- Swagger (OpenAPI)
- Git & GitHub

---

## 📂 Estrutura do projeto

SistemaChamadosAPI/
├── Controllers/
├── Models/
├── Data/
├── Program.cs
├── appsettings.json

---

## ⚙️ Como rodar o projeto

### 1. Clonar o repositório

git clone https://github.com/Leles05/sistema-chamados.git  
cd sistema-chamados  

---

### 2. Configurar o banco de dados

No arquivo:

appsettings.Development.json  

Adicione sua connection string:

"ConnectionStrings": {
  "DefaultConnection": "Host=localhost;Port=5432;Database=seubanco;Username=postgres;Password=123456"
}

---

### 3. Executar o projeto

dotnet run  

---

## 🌐 Acessar a API

Após rodar:

http://localhost:5186/swagger  

---

## 📌 Endpoints disponíveis

### 👤 Cliente

GET /clientes → Lista clientes  
POST /clientes → Cadastra cliente  

---

## 📥 Exemplo de requisição

{
  "nome": "Lucas Leles",
  "email": "lucas.leles@email.com",
  "senha": "123456",
  "telefone": "62999887766"
}

---

## 🚧 Próximas funcionalidades

- Cadastro de chamados  
- Relacionamento cliente → chamado  
- Sistema de status  
- Autenticação (JWT)  
- Criptografia de senha  

---

## 🔐 Segurança

Não versionar dados sensíveis como connection string.  
Utilizar appsettings.Development.json para ambiente local.

---

## 👨‍💻 Autor

Desenvolvido por Lucas Leles  

---

## 📌 Status do projeto

Em desenvolvimento 🚧