# ETL-Project-SP500  
Read Project_ETL.docx for description of extract/transform/load process we followed.

Contains links to Google Drive for the csv API extracts that were too large for Github.

Also contains instructions for replicating the SQL database locally.

# File list
Alpha_Vantage_API.ipynb - connects to Alpha Vantage API to pull stock data used to populate Alpha_Vantage_Export.csv  
Alpha_Vantage_Export.csv - Alpha Vantage API stock export. One of the data sources that can be used to populate daily_data in Stock_DB  
Brodie_ETL.ipynb - loads all_stock_5yr.csv in to daily_data in Stock_DB. all_stock_5yr.csv was our initial historical dataset that was found on Kaggle  
Chart_Example.ipynb - connects to Stock_DB and charts 2 example stocks from daily_data using matplotlib  
ERD.PNG - Stock_DB Entity Relationship Diagram  
ETL_M.ipynb - loads SP500_from18_to20.csv in to daily_data in Stock_DB  
ETL_R.ipynb -loads Alpha_Vantage_Export.csv in to daily_data in Stock_DB  
ETL_R_Extra.ipynb -loads Alpha_Vantage_Export_Extra_Tickers.csv in to daily_data in Stock_DB  
ETL_Ticker_Security.ipynb -loads ticker_security.csv in to ticker_security table in Stock_DB  
Index_Event.csv - csv of historical events of stock additions and subtractions  
Index_Event_ETL.ipynb - loads Index_Event.csv in to index_event table in Stock_DB  
Project_ETL.docx - Our ETL report document  
README.md  
SP500_from18_to20.csv - Yahoo Finance  pull extract csv  
SP500_list.ipynb - connects to Stock_DB and pulls the SP500 stocks from ticker_security table  
Schema.sql - creates daily_data, index_event, ticker_security tables in Stock_DB  
Yahoo_Finance_Data.ipynb - connects to Yahoo Finance and populates SP500_from18_to20.csv  
constituents.csv - initial csv used in Yahoo_Finance_Data.ipynb  
ticker_security.csv - csv used to populate ticker_security table in Stock_DB  
