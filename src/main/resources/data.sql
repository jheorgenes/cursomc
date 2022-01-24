/* Populando CATEGORIA */
INSERT INTO CATEGORIA (ID, NOME) VALUES (1, 'Informática');
INSERT INTO CATEGORIA (ID, NOME) VALUES (2, 'Escritório');
/* Populando PRODUTO */
INSERT INTO PRODUTO (ID, NOME, PRECO) VALUES (1, 'Computador', 2000.00);
INSERT INTO PRODUTO (ID, NOME, PRECO) VALUES (2, 'Impressora', 800.00);
INSERT INTO PRODUTO (ID, NOME, PRECO) VALUES (3, 'Mouse', 80.00);
/* Populando PRODUTO_CATEGORIA */
INSERT INTO PRODUTO_CATEGORIA (PRODUTO_ID, CATEGORIA_ID) VALUES (1, 1);
INSERT INTO PRODUTO_CATEGORIA (PRODUTO_ID, CATEGORIA_ID) VALUES (2, 1);
INSERT INTO PRODUTO_CATEGORIA (PRODUTO_ID, CATEGORIA_ID) VALUES (3, 1);
INSERT INTO PRODUTO_CATEGORIA (PRODUTO_ID, CATEGORIA_ID) VALUES (2, 2);
/* Populando ESTADO */
INSERT INTO ESTADO (ID, NOME) VALUES (1, 'Minas Gerais');
INSERT INTO ESTADO (ID, NOME) VALUES (2, 'São Paulo');
/* Populando CIDADE */
INSERT INTO CIDADE (ID, NOME, ESTADO_ID) VALUES (1, 'Uberlândia', 1);
INSERT INTO CIDADE (ID, NOME, ESTADO_ID) VALUES (2, 'São Paulo', 2);
INSERT INTO CIDADE (ID, NOME, ESTADO_ID) VALUES (3, 'Campinas', 2);
/* Populando CLIENTE */
INSERT INTO CLIENTE (ID, NOME, EMAIL, CPF_OU_CNPJ, TIPO) VALUES (1, 'Maria Silva', 'maria@gmail.com', '36378912377', '1');
INSERT INTO CLIENTE (ID, NOME, EMAIL, CPF_OU_CNPJ, TIPO) VALUES (2, 'Jheorgenes Warlley', 'jheorgenes@gmail.com', '12345678910', '1');
/* Populando TELEFONE */
INSERT INTO TELEFONE (CLIENTE_ID, TELEFONES) VALUES (1, '27363323');
INSERT INTO TELEFONE (CLIENTE_ID, TELEFONES) VALUES (1, '93838393');
/* Populando ENDERECO */
INSERT INTO ENDERECO (ID, LOGRADOURO, NUMERO, COMPLEMENTO, BAIRRO, CEP, CLIENTE_ID, CIDADE_ID) VALUES (1, 'Rua Flores', '300', 'Apartamento 303', 'Jardim', '38220834', '1', '1');
INSERT INTO ENDERECO (ID, LOGRADOURO, NUMERO, COMPLEMENTO, BAIRRO, CEP, CLIENTE_ID, CIDADE_ID) VALUES (2, 'Avenida Matos', '105', 'Sala 800', 'Centro', '38777012', '1', '2');
/* Populando PEDIDO */
INSERT INTO PEDIDO (ID,	INSTANTE, CLIENTE_ID, ENDERECO_DE_ENTREGA_ID) VALUES (1, '2017-09-30 10:32:00', 1, 1);
INSERT INTO PEDIDO (ID,	INSTANTE, CLIENTE_ID, ENDERECO_DE_ENTREGA_ID) VALUES (2, '2017-10-10 19:35:00', 1, 2);
/* Populando PAGAMENTO */
INSERT INTO PAGAMENTO (PEDIDO_ID, ESTADO) VALUES (1, 2);
INSERT INTO PAGAMENTO (PEDIDO_ID, ESTADO) VALUES (2, 1);
/* Populando PAGAMENTO_COM_CARTAO */
INSERT INTO PAGAMENTO_COM_CARTAO (NUMERO_DE_PARCELAS, PEDIDO_ID) VALUES (6, 1);
/* Populando PAGAMENTO_COM_BOLETO */
INSERT INTO PAGAMENTO_COM_BOLETO (DATA_PAGAMENTO, DATA_VENCIMENTO, PEDIDO_ID) VALUES ('2017-10-20 00:00:00', NULL, 2);
/* Populando ITEM_PEDIDO */
INSERT INTO ITEM_PEDIDO (PEDIDO_ID, PRODUTO_ID, DESCONTO, QUANTIDADE, PRECO) VALUES (1, 1, 0.00, 1, 2000.00);
INSERT INTO ITEM_PEDIDO (PEDIDO_ID, PRODUTO_ID, DESCONTO, QUANTIDADE, PRECO) VALUES (1, 3, 0.00, 2, 80.00);
INSERT INTO ITEM_PEDIDO (PEDIDO_ID, PRODUTO_ID, DESCONTO, QUANTIDADE, PRECO) VALUES (2, 2, 100.00, 1, 800.00);

/* Associando os Pedidos aos itens dos pedidos */
/*
UPDATE PEDIDO SET PEDIDO.ITEMPEDIDO = 1 WHERE PEDIDO.ID = 1;
UPDATE PEDIDO SET PEDIDO.ITEMPEDIDO = 2 WHERE PEDIDO.ID = 1;
UPDATE PEDIDO SET PEDIDO.ITEMPEDIDO = 3 WHERE PEDIDO.ID = 2;
*/
/* Associação de PAGAMENTO PEDIDO */
/* UPDATE PEDIDO SET PAGAMENTO_PEDIDO_ID =  */



