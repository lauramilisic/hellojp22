# c:\xampp\mysql\bin\mysql -uedunova -pedunova < c:\jp22\hello\galerija.sql

drop database if exists galerija;
create database galerija;
use galerija;

create table autor(
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
    autor int,
    sponzor int
);
create table sponzor(
sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib char(11),
    email varchar(100),
    djelo int
);

alter table djelo add foreign key (autor) references autor(sifra);
alter table sponzor add foreign key (djelo) references djelo(sifra);

#1
insert into autor (ime,prezime,oib,email,iban)
values ('Pablo','Picasso',null,null,null);

select * from autor;

#1
insert into autor (ime,prezime,oib,email,djelo)
values ('Pero','Perić',null,null,null);
