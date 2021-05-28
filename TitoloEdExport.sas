/*

Programma dimostrativo funzioni SAS

libname
proc contents
proc print
proc means
proc univariate
proc freq

grafici
ods

*/

OPTIONS VALIDVARNAME=V7;
libname libxls xlsx  "/home/u47317965/EPG1V2/data/eu_sport_trade.xlsx";


proc contents data=libxls.sheet1;
run;

*Stampa un sample delle righe per geo_code="IT";
proc print data=libxls.sheet1 (obs=10);
title "Elenco di tutte le righe estratta dall'XLS";
where geo_code = "IT";
footnote "Le righe riportate sono relative al geo_code=IT"; 
run;

*Stampa solo sex, age e birthdat delle prime 10 righe;
proc print data=libxls.sheet1(obs=10);
var Country year;
run;

*Proc Means;
proc means data=libxls.sheet1;
title "Report relativo alla procedure means";
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

/*
	Ordinamento dei dati per Amt_Import e amt_export
	Filtro per i geo_code = IT
*/
PROC SORT DATA=libxls.sheet1 out=sheet_ordinato;
	BY descending Amt_Import descending amt_export;
	where geo_code="IT";
RUN;

/*
	Stampa le righe ordinate
*/
proc print data=work.sheet_ordinato(obs=20);
run;

/*
Rimozione delle righe duplicate
*/
proc sort data=libxls.sheet1  out=test_clean 
          noduprecs 
          dupout=test_dups;
    by _all_;
run;

/*
	Stampa le righe duplicate
*/
proc print data=test_dups   (obs=20);
run;

/*
Rimozione delle chiavi duplicate per la variabile geo_code
*/
proc sort data=libxls.sheet1  out=test_clean 
          dupout=test_dups
          nodupkey;
    by geo_code;
run;

/* Apre la scrittura dell'output su un file esterno */
ods pdf file="/home/u47317965/esercizi/report_duplicati.pdf";
*ods html5 file="/home/u47317965/esercizi/report_duplicati.html";

/*E' possibile specificare le dimenzioni del foglio di output*/
*option papersize = (10in 5.625in) ;

/* Stampa elenco chi record con chiavi senza duplicazioni */
proc print data=test_clean(obs=10);
title "Dati senza chiavi duplicate";
footnote "Il report contiene i dati senza le chiavi duplicate";
footnote2 "Le chiavi duplicate sono in un altro report";
footnote3 "L'output si limita alle prime 10 osservazioni";
run;

/* Stampa un sample dei duplicati */
proc print data=test_dups(obs=10);
title "Report dei duplicati";
footnote ;
run;

/* Istogramma */
proc sgplot data=libxls.sheet1;
  histogram Amt_Import;
  density Amt_Import / lineattrs=(pattern=solid);
  density Amt_Import / type=kernel lineattrs=(pattern=solid);
  keylegend / location=inside position=topright across=1;
  yaxis offsetmin=0 grid;
  title "Istogramma relativo ai dati di Import";
run;

/*Scatter Diagram*/
PROC sgscatter  DATA = sheet_ordinato(where=(year=2015));
   PLOT Amt_Import*Amt_Export 
   / datalabel = Sport_Product  grid;
   title 'Scatterplot - Import/Export per Geo Code 2015';
   footnote 'Il diagramma mostra Import/Export per Geo Code nel 2015';
RUN; 


*Diagramma Donut;

proc sgpie data= sheet_ordinato;
  donut Sport_Product / response=Amt_Export datalabeldisplay=(response);
run;

/*
Diagramma a Torta
*/
proc sgpie data= sheet_ordinato(OBS=10);
  pie Sport_Product / response=Amt_Export datalabeldisplay=(response);
run;

/* Chiude la generazione dell'output */
ods pdf close; 
*ods html5 close; 
