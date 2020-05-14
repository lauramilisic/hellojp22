
# c:\xampp\mysql\bin\mysql -uedunova -pedunova < c:\jp22\drzavnauprava.sql
drop database if exists drzavnauprava;
create database drzavnauprava;
use drzavnauprava;

create table zupanija(
    sifra   int not null primary key auto_increment,
    naziv   varchar(50) not null,
    zupan   varchar(50)
);          

create table opcina(
    sifra int not null primary key auto_increment,
    zupanija int not null,
    naziv varchar(50) not null,
    nacelnik varchar(50)
);

create table mjesto(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    opcina int,
    brojstanovnika char(255)
);
alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);

#show tables;
#describe zupanija;
select * from zupanija;

#1
insert into zupanija(naziv,zupan)
values ('Osječko-baranjska','Ivan Anušić');

select * from opcina;

# 1 - 3
insert into opcina(zupanija,naziv,nacelnik)
values (1,'Antunovac','Davor Tubanjski'),
(1,'Koška','Zoran Kovačević'),
(1,'Bizovac','Srećko Vuković');

# 1 -6
insert into mjesto(naziv,opcina,brojstanovnika)
values 
('Andrijevac',2,191),
('Ledenik',2,241),
('Habjanovci',3,544),
('Bizovac',3,4974),
('Antunovac',1,3559),
('Ivanovac',1,1522);

select * from mjesto;

