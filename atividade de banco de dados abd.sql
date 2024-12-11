
create database abd;
use abd;

create table tipo_campo(
  tip_cod INT PRIMARY KEY,
  tip_desc varchar(60)not null
  );
  CREATE TABLE campo (
    cam_cod int PRIMARY KEY,
    cam_descricao varchar(60) not null,
    cam_tipcod int not null,
    cam_valor decimal (10,2) NOT NULL,
    foreign key (cam_tipcod)REFERENCES tipocampo(tip_cod)
    );
    create table cliente (
    cli_cod int PRIMARY KEY,
    cli_nome varchar(20)not null,
    cli_cpf varchar(11)not NULL,
    cli_mail varchar(60)not null,
    clitel_numero1 varchar(20) not null,
    clitel_numero2 varchar(20),
    cli_endereco varchar(180) not null
     );
    
    create table hora(
      horacod int primary KEY,
       horadesc varchar(80) not null
       );
      
      
      
      create table reserva(
        res_cod int PRIMARY KEY,
        res_clicod int not NULL,
        res_camcod int not null,
        res_horcod int not null,
        res_data date not null,
        res_valortotal decimal(10,2)not null,
        
        
        
        FOREIGN key (res_clicod) REFERENCES cliente(cli_cod),
        FOREIGN key (res_camcod) REFERENCES campo(cam_cod),
        foreign key (res_horcod) REFERENCES hora(hora_cod)
    );
      
       create table pagamento(
        pag_cod int PRIMARY KEY,
        pago_operadora varchar(60)not null,
        pag_rescod int not null,
        pag_status varchar(20) not null,
        pag_tipo varchar(35) not null,
        
        foreign key(pag_rescod)REFERENCES reserva(res_cod)
      );
     
      
      
      
      INSERT INTO tipocampo (tip_cod,tip_desc)VALUES
      
      (1,'futebol'),
      (2,'basquete'),
      (3,'Ciclismo'),
      (4,'Triatlo'),
      (5,'Escalada'),
      (6,'Levantamento de peso'),
      (7,'Beisebol'),
      (8,'Handebol'),
      (9, 'Tênis'),
      (10, 'Vôlei');
      
      
    INSERT INTO campo (cam_cod, cam_descricao, cam_tipcod, cam_valor) VALUES
     (1, 'Quadra 22001', 1, 120.00),
     (2, 'Quadra 22002', 2, 150.00),
     (3, 'Quadra 22003', 3, 130.00),
     (4, 'Quadra 22004', 4, 200.00),
     (5, 'Quadra 22005', 5, 180.00),
     (6, 'Quadra 22006', 6, 140.00),
     (7, 'Quadra 22007', 7, 100.00),
     (8, 'Quadra 22008', 8, 220.00),
     (9, 'Quadra 22009', 9, 160.00),
     (10, 'Quadra 22010', 10, 250.00);
      
    INSERT INTO hora (horacod, horadesc) VALUES
   (1, '08:00 - 10:00'),
   (2, '10:00 - 12:00'),
   (3, '12:00 - 14:00'),
   (4, '14:00 - 16:00'),
   (5, '16:00 - 18:00'),
   (6, '18:00 - 20:00'),
   (7, '20:00 - 22:00'),
   (8, '22:00 - 00:00'),
   (9, '00:00 - 02:00'),
   (10, '02:00 - 04:00');
      
 INSERT INTO reserva (res_cod, res_clicod, res_camcod, res_horcod, res_data, res_valortotal) VALUES
  (1, 1, 1, 1, '2024-12-15', 120.00),
  (2, 2, 2, 2, '2024-12-16', 150.00),
  (3, 3, 3, 3, '2024-12-17', 130.00),
  (4, 4, 4, 4, '2024-12-18', 200.00),
  (5, 5, 5, 5, '2024-12-19', 180.00),
  (6, 6, 6, 6, '2024-12-20', 140.00),
  (7, 7, 7, 7, '2024-12-21', 100.00),
  (8, 8, 8, 8, '2024-12-22', 220.00),
  (9, 9, 9, 9, '2024-12-23', 160.00),
  (10, 10, 10, 10, '2024-12-24', 250.00);
      
INSERT INTO pagamento (pag_cod, pag_operadora, pag_rescod, pag_status, pag_tipo) VALUES
(1, 'VISA', 1, 'APROVADO', 'DÉBITO'),
(2, 'MASTER', 2, 'PENDENTE', 'CRÉDITO'),
(3, 'PIX', 3, 'APROVADO', 'PIX'),
(4, 'DINHEIRO', 4, 'CANCELADO', 'DINHEIRO'),
(5, 'VISA', 5, 'PENDENTE', 'CRÉDITO'),
(6, 'MASTER', 6, 'REJEITADO', 'DÉBITO'),
(7, 'PIX', 7, 'APROVADO', 'PIX'),
(8, 'DINHEIRO', 8, 'APROVADO', 'DINHEIRO'),
(9, 'ELO', 9, 'PENDENTE', 'CRÉDITO'),
(10, 'AMEX', 10, 'REJEITADO', 'DÉBITO');
