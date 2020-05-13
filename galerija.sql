## c:\xampp\mysql\bin\mysql -uedunova -pedunova < c:\jp22\hello\galerija.sql

drop database if exists galerija;
create database galerija;
use galerija;

reate table autor(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib char(11),
    email varchar(100),
    iban varchar(50)
);
create table djelo(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    
);
