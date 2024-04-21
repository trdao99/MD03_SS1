use fistdb;
create table customer(
  cID int primary key auto_increment ,
  cName varchar(50) not null,
age int check ( age >16 )
);

create table `Order`(
    oID int auto_increment primary key,
    cID int,
    oDate datetime,
    oTotalPrice decimal(10,2),
    foreign key (cID) references customer(cID)
);

create table Product(
    pID int auto_increment primary key ,
    pName varchar(50) not null ,
    pPrice decimal(10,2)
);
create table `Orderdetal`(
    oID int,
    pID int,
    odQTY int,
    foreign key (oID) references `Order`(oID),
    foreign key (pID) references Product(pID)
)
