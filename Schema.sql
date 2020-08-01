-- Drop tables if necessary
DROP TABLE IF EXISTS Daily_Data;
DROP TABLE IF EXISTS Index_Event;
DROP TABLE IF EXISTS Ticker_Security;

-- Create tables
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
	Index SERIAL primary key,
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

--Search Data
select * from Ticker_Security;
select * from Index_Event;
select * from Daily_Data;

select * from Daily_Data where ticker = 'GGP';
select * from Daily_Data where ticker = 'AAPL';
select * from Daily_Data where ticker = 'MSFT';
select * from Daily_Data where ticker = 'ZTS';
