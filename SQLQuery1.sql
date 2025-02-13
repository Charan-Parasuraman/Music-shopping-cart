﻿
CREATE TABLE CreditCard (
	CC_No		  varchar(16) not null primary key,
	FirstName	  varchar(30) not null,
	MiddleInitial varchar(1),
	LastName	  varchar(30) not null,
	Expiration	  datetime not null,
	CC_Type		  varchar(30) not null,
	CVC		      numeric(4,0) not null,
	IsDefault	  bit,
	UserID		  nvarchar(128) not null references AspNetUsers(Id)
)

CREATE TABLE OrderHeader (
	OrderID		int identity (1001,1) primary key not null,
	OrderDate	datetime default getdate() not null,
	CC_No		varchar(16) not null references CreditCard(CC_No),
	UserID		nvarchar(128) not null references AspNetUsers(Id)
)

CREATE TABLE Song (
	SongID		varchar(13) not null primary key,
	Title		varchar(30) not null,
	Album		varchar(30),
	Artist		varchar(30),
	Genre		varchar(30),
	ReleaseDate	datetime,
	ListPrice	money not null,
	FileName	varchar(255) not null,
	ClipName	varchar(30)
)

CREATE TABLE OrderLine (
	OrderID		int not null references OrderHeader(OrderID),
	SongID		varchar(13) not null references Song(SongID),
	Quantity	int not null,
	constraint  OrderLine_PK primary key(OrderID, SongID)
)

CREATE TABLE ShopCart (
    ShopCartID     INT  IDENTITY (101, 1) Primary Key NOT NULL,
    ExpirationDate DATETIME  DEFAULT (getdate()+3) NULL,
	UserID		   nvarchar(128) null
);


CREATE TABLE ShopCartLine (
    ShopCartID  INT          NOT NULL,
    SongID      VARCHAR (13) NOT NULL,
    Quantity    INT          NOT NULL,
    CONSTRAINT  ShopCartLine_PK PRIMARY KEY (ShopCartID, SongID),
    FOREIGN KEY (ShopCartID) REFERENCES ShopCart(ShopCartID),
    FOREIGN KEY (SongID) REFERENCES Song (SongID)
);

--execute the above create table statements as a batch
GO


--sample data

Insert into Song Values ('1001', 'Joel Beat Box', 'Album1', 'Joe Publique', 'Rock',
                         'November 9, 2008', 0.99, 'BeatBox.mp3', 'BeatBox.mp3');

Insert into Song Values ('1002', 'Breaky Heart', 'Album1', 'Joe Publique', 'Rock',
                         'November 9, 2008', 0.99, 'BreakyHeart.mp3', 'BreakyHeart.mp3');

Insert into Song Values ('1003', 'Welcome', 'Album2', 'Java Sound', 'HipHop',
                         'November 9, 2006', 0.99, '1-welcome.wav', '1-welcome.wav');

Insert into Song Values ('1004', 'Craig1', 'Album3', 'Craig', 'Classic',
                         'November 9, 2005', 0.99, 'Craig1.wav', 'Craig1.wav');

Insert into Song Values ('1005', 'Of a Memory', 'Album1', 'Joe Publique', 'Blues',
                         'November 9, 2008', 0.99, 'OfMemory.mp3', 'OfMemory.mp3');

Insert into Song Values ('1006', 'Dracula', 'Album1', 'Joe Publique', 'Jazz',
                         'November 9, 2008', 0.99, 'Dracula.mp3', 'Dracula.mp3');

Insert into Song Values ('1007', 'Patakha Guddi', 'Album1', 'Patakha Guddi', 'Jazz',
                         'November 9, 2008', 0.99, 'Patakha Guddi.mp3', 'Patakha Guddi.mp3');

Insert into Song Values ('1008', 'Phir Kabhi', 'Album1', 'Phir Kabhi', 'Jazz',
                         'November 9, 2008', 0.99, 'Phir Kabhi.mp3', 'Phir Kabhi.mp3');

Insert into Song Values ('1009', 'Raabta', 'Album1', 'Raabta', 'Jazz',
                         'November 9, 2008', 0.99, 'Raabta.mp3', 'Raabta.mp3');

Insert into Song Values ('1010', 'Raanjhanaa', 'Album1', 'Raanjhanaa', 'Jazz',
                         'November 9, 2008', 0.99, 'Raanjhanaa.mp3', 'Raanjhanaa.mp3');

Insert into Song Values ('1011', 'Rozana', 'Album1', 'Rozana', 'Jazz',
                         'November 9, 2008', 0.99, 'Rozana.mp3', 'Rozana.mp3');

Insert into Song Values ('1012', 'Tere Sang Yaara', 'Album1', 'Tere Sang Yaara', 'Jazz',
                         'November 9, 2008', 0.99, 'Tere Sang Yaara.mp3', 'Tere Sang Yaara.mp3');

Insert into Song Values ('1013', 'Teri Mere', 'Album1', 'Teri Mere', 'Jazz',
                         'November 9, 2008', 0.99, 'Teri Mere.mp3', 'Teri Mere.mp3');

Insert into Song Values ('1014', 'Ud-Daa Punjab', 'Album1', 'Ud-Daa Punjab', 'Jazz',
                         'November 9, 2008', 0.99, 'Ud-Daa Punjab.mp3', 'Ud-Daa Punjab.mp3');

Insert into Song Values ('1015', 'Yahin Hoon', 'Album1', 'Yahin Hoon', 'Jazz',
                         'November 9, 2008', 0.99, 'Yahin Hoon.mp3', 'Yahin Hoon.mp3');


-- execute the above insert statements as a batch
GO


CREATE PROCEDURE pNewOrder
 (@outOrderID int OUT,
  @inCC_No    Varchar(16),
  @inUserID   Varchar(128))
AS
begin
  insert into OrderHeader (OrderDate, CC_No, UserID)
    values (default, @inCC_No, @inUserID);
  
  --return the newly generated orderid to the calling function.
  Select @outOrderID = SCOPE_IDENTITY();
end;

-- execute the create procedure statement one at a time
Go

CREATE PROCEDURE pNewShopCart (@ShopcartID int OUT, @UserID Varchar(128)) as
begin
      insert into shopcart (expirationdate, UserID) values (default, @UserID);
      Select @ShopcartID = SCOPE_IDENTITY();
end;

-- execute the create procedure statement one at a time
Go

CREATE VIEW vShopcart
as
  select shopcartid, s.SongID, quantity, title, Artist,
         listprice, clipname, quantity*listprice as subtotal
  from shopcartline shl inner join Song s on shl.SongID = s.SongID

-- execute the create procedure statement one at a time
Go
