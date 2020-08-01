create table Ticker_Security (
	ticker text primary key,
	Security_Name text,
	SP500 boolean,
	DJIa30 boolean
);

create table Index_Event(
	Index int primary key,
	ticker text,
	date_close date,
	reason text,
	direction boolean,
	Indices text,
	foreign key (ticker)
	references Ticker_Security(ticker)
);


create table Daily_Data(
	Index int primary key,
	Ticker text,
	date_close date,
	Open float,
	High float,
	Low float,
	Close float,
	Volume int,
	foreign key (Ticker)
	references Ticker_Security(ticker)
);


