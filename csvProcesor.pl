:- module(csvProcesor, [procesar_contenido_csv/1]).
% MAnejo de la base de conocimientos %
columnas([]).
columnas([Col|Rest]) :-
    writeln(Col),
	columnas(Rest).

filas([]).
filas([row(Col1,Col2, Col3)|Rest]) :-
	write(Col1),write('|'),write(Col2), write('|'), write(Col3),nl,
    filas(Rest).

procesar_contenido_csv(Archivo) :-
	csv_read_file(Archivo, Filas),
    filas(Filas).



