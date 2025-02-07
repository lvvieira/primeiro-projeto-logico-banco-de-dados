# primeiro-projeto-logico-banco-de-dados

# Construindo seu Primeiro Projeto Lógico de Banco de Dados

Este repositório contém a implementação do desafio **"Construindo seu Primeiro Projeto Lógico de Banco de Dados"**, que tem como objetivo criar o esquema lógico e físico de um banco de dados para um sistema de e-commerce. A solução envolve modelagem lógica, criação de tabelas com chaves primárias e estrangeiras, inserção de dados de teste e execução de queries complexas.

## 🔍 **Contexto do Projeto**
O banco de dados modela as principais entidades de um sistema de e-commerce, considerando:
- Clientes, incluindo distinção entre **Pessoa Física (PF)** e **Pessoa Jurídica (PJ)**.
- Produtos e seu controle de estoque com fornecedores.
- Registro de pedidos e as formas de pagamento associadas.
- Informações sobre o status de entrega dos pedidos.

### **Refinamentos Adicionados**
- Diferenciação entre clientes PF e PJ.
- Registro de múltiplas formas de pagamento para cada pedido.
- Registro de entregas com status e código de rastreamento.

---

## 🛠️ **Estrutura do Banco de Dados**
As tabelas principais do esquema lógico são:
- **clientes**: Armazena os dados gerais de clientes.
- **clientes_pf** e **clientes_pj**: Armazenam detalhes específicos de clientes PF e PJ.
- **produtos**: Informações dos produtos disponíveis.
- **fornecedores**: Dados dos fornecedores responsáveis pelo estoque.
- **estoque**: Relaciona os produtos aos fornecedores e quantidades disponíveis.
- **pedidos**: Registro dos pedidos realizados pelos clientes.
- **formas_pagamento**: Formas de pagamento associadas a cada pedido.
- **entrega**: Informações de entrega dos pedidos.

---

## 📂 **Estrutura do Repositório**
│
├── schema.sql        # Criação do banco e tabelas
├── insert.sql        # Inserção de dados de exemplo
├── queries.sql       # Consultas SQL com cláusulas exigidas
└── README.md         # Descrição e instruções
