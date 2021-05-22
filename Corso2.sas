/*

Programma dimostrativo funzioni SAS

libname
proc contents
proc print
proc means
proc univariate
proc freq

*/

OPTIONS VALIDVARNAME=V7;
libname libxls xlsx  "/home/u47317965/EPG1V2/data/eu_sport_trade.xlsx";

proc contents data=libxls.sheet1;
run;

*Stampa tutte le righe;
proc print data=libxls.sheet1;
where geo_code = "IT";
run;

*Stampa le prime 10 righe;
proc print data=libxls.sheet1(obs=10);
run;

*Stampa solo sex, age e birthdat delle prime 10 righe;
proc print data=libxls.sheet1(obs=10);
var Country year;
run;

*Proc Means;
proc means data=libxls.sheet1;
var Amt_Import Amt_Export;
run;

*Proc Univariate;
proc univariate data=libxls.sheet1;
var Amt_Import Amt_Export;
run;

*Proc Freq;
proc freq data=libxls.sheet1;
tables Country year;
run;


