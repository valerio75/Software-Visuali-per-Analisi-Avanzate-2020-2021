/*

Programma dimostrativo funzioni SAS

libname
proc contents
proc print
proc means
proc univariate
proc freq

*/

libname libcorso "/home/u47317965/EPG1V2/data";

proc contents data=libcorso.class_birthdate;
run;

*Stampa tutte le righe;
proc print data=libcorso.class_birthdate;
run;

*Stampa le prime 10 righe;
proc print data=libcorso.class_birthdate(obs=10);
run;

*Stampa solo sex, age e birthdat delle prime 10 righe;
proc print data=libcorso.class_birthdate(obs=10);
var sex age Birthdate;
run;

*Proc Means;
proc means data=libcorso.class_birthdate;
var height weight;
run;

*Proc Univariate;
proc univariate data=libcorso.class_birthdate;
var height weight;
run;

*Proc Freq;
proc freq data=libcorso.class_birthdate;
tables sex height weight;
run;

