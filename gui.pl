%%%%
:- use_module(library(pce)).
:- consult('./Widgets.pl').
:- consult('./csvProcesor.pl').

columnas([]).
columnas([Col|Rest]) :-
    writeln(Col),
	columnas(Rest).

filas([], @WindowTest):- send(@WindowTest, open).
filas([row(Col1,Col2, Col3)|Rest], @WindowTest) :-
	container(Col3, @WindowTest),
	write(Col1),write('|'),write(Col2), write('|'), write(Col3),nl,
    filas(Rest, @WindowTest).

procesar_contenido_csv(Archivo, Filas) :-
	csv_read_file(Archivo, Filas).

container(Pregunta, @WindowPreg):-
	new(Window, dialog('')),
	send(Window, size, size(420, 100)),
	new(Text, text(Pregunta)),
	boton(BotonSi, 'Si', message(Window, destroy)),
	boton(BotonNo, 'No', message(Window, destroy)),
	send(Window, append, Text),
	send(Window, append, BotonSi),
	send(Window, append, BotonNo),
	send(@WindowPreg, append, Window).

procesar:-
	new(WindowTest, dialog('Test General')),
	procesar_contenido_csv('basedeconocimientos.csv', Filas),
	filas(Filas, WindowTest).
gui:-
	new(Window, dialog('')),
	send(Window, size, size(420, 420)),
	new(Botones, dialog),
	new(Botones2, dialog),
	image(Window, fondo),
	boton(TestGeneral, 'Test General', message(@prolog, procesar)),
	boton(Familiar, 'Violencia Familiar', message(@prolog, container,'¿halt?')),
	boton(Domestico, 'Violencia Domestica', message(Window,destroy)),
	boton(Sexual, 'Violencia Sexual', message(Window,destroy)),
	boton(Laboral, 'Violencia Laboral', message(Window,destroy)),
	boton(Salir, 'Salir',message(Window,destroy) ),
	
	send(Botones, append, TestGeneral),
	send(Botones, append, Familiar,next_row),
	send(Botones, append, Sexual, next_row),
	send(Botones2, append, Laboral),
	send(Botones2, append, Domestico, next_row),
	send(Botones2, append, Salir, next_row),
	send(Window, append, Botones),
	send(Window, append, Botones2, right),
	send(Window, open).

:-gui.
