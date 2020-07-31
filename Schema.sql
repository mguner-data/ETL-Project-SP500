create table Ticker_Security_Name (
	Ticker text primary key,
	Security_Name text
);

create table Add_Sub(
	Index int primary key,
	Reason text
);

create table Addition(
	Add_Sub_ID int ,
	Ticker text,
	foreign key (Add_Sub_ID)
	references Add_Sub(ID)
);

create table Subtraction(
	Add_Sub_ID int ,
	Ticker text,
	foreign key (Add_Sub_ID)
	references Add_Sub(ID)
);



create table Curren_Component(
	Ticker text,
	Date_Added date,
	foreign key (Ticker)
	references Ticker_Security_Name(Ticker)
);

create table Daily_Data(
	Index int primary key,
	Ticker text,
	Date_Close date,
	Open float,
	High float,
	Low float,
	Close float,
	Volume int,
	foreign key (Ticker)
	references Ticker_Security_Name(Ticker)
);


