OPTIONS VALIDVARNAME=V7;
PROC IMPORT DATAFILE="/home/u47317965/EPG1V2/data/eu_sport_trade.xlsx" DBMS=XLSX
                          OUT= sport_trade;
           SHEET=sheet1;
RUN;

proc print data=sport_trade(obs=10);
run;

PROC IMPORT DATAFILE="/home/u47317965/EPG1V2/data/np_traffic.csv" DBMS=CSV
                          OUT=traffic REPLACE;
           GUESSINGROWS=10;
RUN;

proc print data=traffic(obs=10);
var ParkName trafficcount;
run;
